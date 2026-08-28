---
permalink: /codes/
# title: "Group"
author_profile: false
layout: splash
classes: wide
---

#### Offline battery degradation model

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/DEG.png" alt="Battery capacity retention over DST cycles">
  </div>
  <div class="code-entry__body">
    <p>The model predicts battery capacity degradation based on state-of-charge profile and cell temperature, reference <a href="https://www.researchgate.net/publication/303890624_Modeling_of_Lithium-Ion_Battery_Degradation_for_Cell_Life_Assessment">here</a>.</p>
    <p><a href="/assets/codes/BatDegModel.zip">Code</a> in Matlab.</p>
  </div>
</div>

#### Piece-wise linear degradation model for optimization

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/PWL.png" alt="Piece-wise linear state-of-charge profile decomposition">
  </div>
  <div class="code-entry__body">
    <p>This is a piece-wise linear model for incorporating nonlinear battery cycle degradation mechanisms into optimization, reference <a href="https://arxiv.org/pdf/1707.04567.pdf">here</a>.</p>
    <p><a href="/assets/codes/BES_GAMS_code.zip">Code</a> in GAMS (requires Gurobi).</p>
  </div>
</div>

#### Optimal battery control and bidding in frequency regulation

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/REG.png" alt="Regulation instruction versus controlled battery response">
  </div>
  <div class="code-entry__body">
    <p>This code demonstrates the optimal response control and bidding design for degradation-sensitive batteries in PJM pay-for-performance frequency regulation markets, reference <a href="https://arxiv.org/pdf/1710.10514.pdf">here</a>.</p>
    <p><a href="/assets/codes/PJM_simulation_code.zip">Code</a> in Matlab.</p>
  </div>
</div>

#### Dynamic battery lifetime valuation

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/DBV.png" alt="Incremental cost per full cycle over remaining capacity and project lifetime">
  </div>
  <div class="code-entry__body">
    <p>This code calculates the opportunity value of battery degradation based on historical price data using dynamic programming, reference <a href="https://arxiv.org/pdf/2011.08425.pdf">here</a>.</p>
    <p><a href="/assets/codes/DBV.zip">Code</a> in Julia (requires Gurobi).</p>
  </div>
</div>

#### Battery price arbitrage using stochastic dynamic programming

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/SDP.png" alt="Stochastic dynamic programming stage transition diagram">
  </div>
  <div class="code-entry__body">
    <p>The code uses an analytical algorithm to solve stochastic dynamic programming for optimizing battery price arbitrage in wholesale real-time electricity markets, reference <a href="https://arxiv.org/pdf/2108.06000.pdf">here</a>.</p>
    <p><a href="https://github.com/niklauskun/MarkovESValuation">Code</a> in Matlab.</p>
  </div>
</div>

#### Comparing different battery degradation models in power system optimization

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/mrses.png" alt="Comparison of battery degradation models in grid optimization">
  </div>
  <div class="code-entry__body">
    <p>The code compares different degradation models in grid optimization. Reference paper is <a href="https://link.springer.com/epdf/10.1557/s43581-022-00047-7?sharing_token=XqgrEE3lpdL9CdWXy_ZyoNdkX09eXsMYQQpccBFOqFrgND_URUpmto2IPclM5HvhK2gsAQGDyQgGGj_MYbdpFwbRoaJV7muf49tt5GBttNa_cKmGqcbh_WaBPM3V3k_uVVCvha9gIiqKPHUJs9EjjXgyHg9a6SG03hmVYT3t9FQ%3D">here</a>.</p>
    <p><a href="/assets/codes/Compare_deg_model.zip">Code</a> in Julia (requires Gurobi).</p>
  </div>
</div>

#### Transferable energy storage bidder

<div class="code-entry code-entry--wide">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/TES.png" alt="Transferable energy storage bidder architecture">
  </div>
  <div class="code-entry__body">
    <p>Algorithms for bidding energy storage to arbitrage in wholesale markets. Reference paper is <a href="https://arxiv.org/pdf/2301.01233.pdf">here</a>.</p>
    <p><a href="https://github.com/ybaker661/LSTM-Value-Prediction">Code</a> in Python.</p>
  </div>
</div>

#### Assessing market participation for energy storage

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/joule.jpg" alt="Two-stage market clearing simulation framework">
  </div>
  <div class="code-entry__body">
    <p>A two-stage market clearing simulation framework to assess energy storage participation in day-ahead and real-time markets. Reference paper is <a href="https://www.sciencedirect.com/science/article/pii/S2542435123002118">here</a>.</p>
    <p><a href="https://github.com/Huskyseen/Storage_Market">Code</a> in Matlab (requires Gurobi).</p>
  </div>
</div>

#### Predicting strategic energy storage behaviors

<div class="code-entry code-entry--wide">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/SEB.png" alt="Inverse optimization framework identifying a storage agent's disutility function with input convex neural networks">
  </div>
  <div class="code-entry__body">
    <p>An inverse optimization approach that learns the unknown disutility function of a strategic storage agent from observed price and response data, using input convex neural networks embedded in a differentiable optimization layer. Reference paper is <a href="https://ieeexplore.ieee.org/document/10214105">here</a>.</p>
    <p><a href="https://github.com/alwaysbyx/Predicting-Strategic-Energy-Storage-Behaviors">Code</a> in Python.</p>
  </div>
</div>

#### Energy storage arbitrage in two-settlement markets

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/TSM.png" alt="Day-ahead and real-time energy storage bidding framework">
  </div>
  <div class="code-entry__body">
    <p>An integrated bidding model for energy storage participating in both day-ahead and real-time markets, pairing a transformer-based real-time price forecaster for day-ahead bids with an LSTM and dynamic programming hybrid real-time bidder. Reference paper is <a href="https://arxiv.org/abs/2404.17683">here</a>.</p>
    <p><a href="https://github.com/Alghumayjan/Energy-Storage-Arbitrage-in-Two-Settlement-Markets">Code</a> in Python.</p>
  </div>
</div>

#### Locational energy storage bid bounds

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/BND.png" alt="Storage charge and discharge bid bounds decreasing with state of charge">
  </div>
  <div class="code-entry__body">
    <p>Chance-constrained bid bounds that serve as locational offer caps for energy storage, aligning storage bids with the social welfare objective while regulating economic withholding. Reference paper is <a href="https://arxiv.org/abs/2502.18598">here</a>.</p>
    <p><a href="https://github.com/thuqining/Storage_Pricing_for_Social_Welfare_Maximization">Code</a> in Matlab (requires YALMIP and Gurobi).</p>
  </div>
</div>

#### Dimension-reduced optimization of multi-zone thermostatically controlled loads

<div class="code-entry">
  <div class="code-entry__figure">
    <img src="/assets/codes/figures/TCL.png" alt="Zone-level comfort violations under original and latent-variable optimization methods">
  </div>
  <div class="code-entry__body">
    <p>A latent-variable representation learned through multi-task learning that reduces the dimension of multi-zone thermostatically controlled load optimization, with both model-based and model-free solution algorithms. Reference paper is <a href="https://arxiv.org/abs/2505.00585">here</a>.</p>
    <p><a href="https://github.com/hkuedl/Latent-Variable-based-Optimization">Code</a> in Python.</p>
  </div>
</div>
