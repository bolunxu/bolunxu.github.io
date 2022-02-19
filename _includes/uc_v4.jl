using CSV
using DataFrames
using JuMP
using Gurobi
using Printf
using MAT
using Random

# Col 3 - Gen capacity
# Col 4 - Min Gen
# Col 8 - Ramp rate
# Col 9 - Start-up cost
# Col 10 - NLC
# Col 11 - MC linear
# Col 12 - MC quad



Dem_data = DataFrame(CSV.File("demand.csv"))


## Coefficients
T = 72; # time periods
Ts = 0; # 24*rand((0:350));
Ng = 76; # number of generators
W = 2000;
D = transpose(Dem_data[(1:T).+Ts, 2] - W * Dem_data[(1:T).+Ts, 1])

## gen cost parameters
Ca = rand((0:100), 1, T);
Cb = 0.003;



## Storage coefficients
Eseg = [0.1 0.3 0.6];

R = 200e3 / 0.2;

Ncyc = [8700 6200 4400]; # LFP
# Ncyc = [2200 1600 400]; # NMC
# Ncyc = [1400 600 350]; # NCA

DM = 1;

J = 3;

c_pu = zeros(3, 1);
c_pu[1] = R * 0.2 / Ncyc[1];
c_pu[2] =
    R * (0.2 / Ncyc[2] * sum(Eseg[1:2]) - 0.2 / Ncyc[1] * Eseg[1]) / Eseg[2];
c_pu[3] =
    R * (0.2 / Ncyc[3] * sum(Eseg[1:3]) - 0.2 / Ncyc[2] * sum(Eseg[1:2])) /
    Eseg[3];



Emax = 1000;
Pmax = Emax / 10;
eta = 0.92;

## Start define optimization
uc = Model(Gurobi.Optimizer)

# storage discharge power
@variable(uc, pd[1:J, 1:T], lower_bound = 0)
# storage power
@variable(uc, pc[1:J, 1:T], lower_bound = 0)
# soc
@variable(uc, e[1:J, 1:T], lower_bound = 0)


# storage power rating
@constraint(uc, EPDmax[j = 1:J, t = 1:T], pd[j, t] <= Pmax)

# storage power rating
@constraint(uc, EPCmax[j = 1:J, t = 1:T], pc[j, t] <= Pmax)

# SoC
@constraint(
    uc,
    EPSoC[j = 1:J, t = 2:T],
    e[j, t] - e[j, t-1] == pc[j, t] * eta - pd[j, t] / eta
)

@constraint(
    uc,
    EPSoC0[j = 1:J, t = 1],
    e[j, t] - 0 == pc[j, t] * eta - pd[j, t] / eta
)

@constraint(uc, EPSoCmax[j = 1:J, t = 1:T], e[j, t] <= Eseg[j] * Emax)


# minimize total cost
@objective(
    uc,
    Min,
    sum(Ca .* (D .- pd .+ pc)) +
    Cb * sum((D .- pd .+ pc) .^ 2) +
    sum(transpose(c_pu) * pd)
)

# perform a initialization run
optimize!(uc)


## results
Ps = value.(pd) - value.(pc);
Es = value.(e)
lambda = Ca .+ 2 .* Cb .* (D - sum(Ps, dims = 1))
theta = [dual.(EPSoC0) dual.(EPSoC)]
Obj = objective_value(uc)










## save in mat


FN = @sprintf("E%d_W%d_Opt", Emax, W)

file = matopen(string("./ED2_", FN, ".mat"), "w")
write(file, "Es", Es)
write(file, "Ps", Ps)
write(file, "lambda", lambda)
write(file, "theta", theta)
write(file, "Cseg", c_pu)
write(file, "Eseg", Eseg .* Emax)
write(file, "Pmax", Pmax)

write(file, "Ts", Ts)
write(file, "eta", eta)
write(file, "J", J)
write(file, "D", D)
write(file, "Ca", Ca)
write(file, "Cb", Cb)

write(file, "Obj", Obj)

close(file)
