---
permalink: /codes/
# title: "Group"
author_profile: false
layout: splash
classes: wide
---

#### Offline battery degradation model
<img style="float: left;  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 45px;
  margin-left: 0px;" src="/assets/codes/figures/DEG.png" width="300px" >
<br />
The model predicts battery capacity degradation based on state-of-charge profile and cell temperature, reference [here](https://www.researchgate.net/publication/303890624_Modeling_of_Lithium-Ion_Battery_Degradation_for_Cell_Life_Assessment).

[Code](/assets/codes/BatDegModel.zip) in Matlab.

<br />
<br />
<br />

#### Piece-wise linear degradation model for optimization
<img style="float: left;  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 45px;
  margin-left: 0px;" src="/assets/codes/figures/PWL.png" width="300px" >
<br />
This is a piece-wise linear model for incorporating nonlinear battery cycle degradation mechanisms into optimization, reference [here](https://arxiv.org/pdf/1707.04567.pdf).

[Code](/assets/codes/BES_GAMS_code.zip) in GAMS (requires Gurobi).
<br />
<br />
<br />
<br />
<br />
<br />
#### Optimal battery control and bidding in frequency regulation
<img style="float: left;  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 45px;
  margin-left: 0px;" src="/assets/codes/figures/REG.png" width="300px" >
<br />
This code demonstrates the optimal response control and bidding design for degradation-sensitive batteries in PJM pay-for-performance frequency regulation markets, reference [here](https://arxiv.org/pdf/1710.10514.pdf).

[Code](/assets/codes/PJM_simulation_code.zip) in Matlab.
<br />
<br />
<br />
<br />
<br />
<br />
<br />
#### Dynamic battery lifetime valuation
<img style="float: left;  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 45px;
  margin-left: 0px;" src="/assets/codes/figures/DBV.png" width="300px" >
<br />
This code calculates the opportunity value of battery degradation based on historical price data using dynamic programming, reference [here](https://arxiv.org/pdf/2011.08425.pdf).

[Code](/assets/codes/DBV.zip) in Julia (requires Gurobi).
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
#### Battery price arbitrage using stochastic dynamic programming
<img style="float: left;  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 45px;
  margin-left: 0px;" src="/assets/codes/figures/SDP.png" width="300px" >
<br />
The code uses an analytical algorithm to solve stochastic dynamic programming for optimizing battery price arbitrage in wholesale real-time electricity markets, reference [here](https://arxiv.org/pdf/2108.06000.pdf).

[Code](https://github.com/niklauskun/MarkovESValuation) in Matlab.
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
#### Comparing different battery degradation models in power system optimization
<img style="float: left;  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 45px;
  margin-left: 0px;" src="/assets/codes/figures/mrses.png" width="300px" >
<br />
The code compares different degradation models in grid optimization. Reference paper is [here](https://link.springer.com/epdf/10.1557/s43581-022-00047-7?sharing_token=XqgrEE3lpdL9CdWXy_ZyoNdkX09eXsMYQQpccBFOqFrgND_URUpmto2IPclM5HvhK2gsAQGDyQgGGj_MYbdpFwbRoaJV7muf49tt5GBttNa_cKmGqcbh_WaBPM3V3k_uVVCvha9gIiqKPHUJs9EjjXgyHg9a6SG03hmVYT3t9FQ%3D).

[Code](/assets/codes/Compare_deg_model.zip) in Julia (requires Gurobi).
