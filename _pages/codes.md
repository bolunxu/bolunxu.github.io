---
permalink: /codes/
# title: "Group"
author_profile: false
classes: wide
---

#### Offline battery degradation model
The model predicts battery capacity degradation based on state-of-charge profile and cell temperature, reference [here](https://www.researchgate.net/publication/303890624_Modeling_of_Lithium-Ion_Battery_Degradation_for_Cell_Life_Assessment).

[Code](assets/codes/BatDegModel.zip) in Matlab.

#### Piece-wise linear degradation model for optimization
This is a piece-wise linear model for incorporating nonlinear battery cycle degradation mechanisms into optimization, reference [here](https://arxiv.org/pdf/1707.04567.pdf).

[Code](assets/codes/BES_GAMS_code.zip) in GAMS (require Gurobi).

#### Optimal battery control and bidding in frequency regulation
This code demonstrates the optimal response control and bidding design for degradation-sensitive batteries in PJM pay-for-performance frequency regulation markets, reference [here](https://arxiv.org/pdf/1710.10514.pdf).

[Code](assets/codes/PJM_simulation_code.zip) in Matlab.


#### Dynamic battery lifetime valuation
This code calculates the opportunity value of battery degradation based on historical price data using dynamic programming, reference [here](https://arxiv.org/pdf/2011.08425.pdf).

[Code](assets/codes/DBV.zip) in Julia (require Gurobi).

#### Battery price arbitrage using stochastic dynamic programming
The code uses an analytical algorithm to solve stochastic dynamic programming for optimizing battery price arbitrage in wholesale real-time electricity markets, reference [here](https://arxiv.org/pdf/2108.06000.pdf).

[Code](https://github.com/niklauskun/MarkovESValuation) in Matlab.
