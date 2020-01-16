## Discription
* Optimizing numerical ODE solvers using AVX instruction set (with [VCL library](https://www.agner.org/optimize/vcl_manual.pdf)) on CPUs in C++
* Using gcc compiler and linux perf profiler
* CPU: Intel Core i7-4820K
   * 3.8 GHz
   * 30.4 double GFLOPS max
   * Ivy Bridge microarchitecture

## Equations
1. Basic test equation 
    * <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;x^2-p&space;\quad&space;p&space;\in&space;[0.1;10]&space;\quad&space;N_p&space;=&space;131072" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;x^2-p&space;\quad&space;p&space;\in&space;[0.1;10]&space;\quad&space;N_p&space;=&space;131072" title="x' = x^2-p \quad p \in [0.1;10] \quad N_p = 131072" /></a>
    * Using RK4 solver with fix step
         * basic_test_RK4 folder
2. Division test equation 
    * <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;\frac&space;1&space;x&space;-&space;p&space;\cdot&space;x&space;\quad&space;p&space;\in&space;[0;0.8]&space;\quad&space;N_p&space;=&space;18144" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;\frac&space;1&space;x&space;-&space;p&space;\cdot&space;x&space;\quad&space;p&space;\in&space;[0;0.8]&space;\quad&space;N_p&space;=&space;18144" title="x' = \frac 1 x - p \cdot x \quad p \in [0;0.8] \quad N_p = 18144" /></a>
    * Using RK4 solver with fix step
         * division_test_RK4 folder
3. Transcendental test equation 
    * <img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;p&space;\cdot&space;\sin(x)&space;\quad&space;p&space;\in&space;[0.1;1]&space;\quad&space;N_p&space;=&space;18144" title="x' = p \cdot \sin(x) \quad p \in [0.1;1] \quad N_p = 18144" />
    * Using RK4 solver with fix step
         * transcendental_test_RK4 folder
4. Lorentz equation  
    * <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;x_1'&space;=&space;10(x_2-x_1)&space;\quad&space;x_2'&space;=&space;p&space;\cdot&space;x_1&space;-&space;x_2&space;-&space;x_1&space;\cdot&space;x_3&space;\quad&space;x'_3&space;=&space;x_1&space;\cdot&space;x_2&space;-&space;\frac&space;8&space;3&space;\cdot&space;x_3" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;x_1'&space;=&space;10(x_2-x_1)&space;\quad&space;x_2'&space;=&space;p&space;\cdot&space;x_1&space;-&space;x_2&space;-&space;x_1&space;\cdot&space;x_3&space;\quad&space;x'_3&space;=&space;x_1&space;\cdot&space;x_2&space;-&space;\frac&space;8&space;3&space;\cdot&space;x_3" title="x_1' = 10(x_2-x_1) \quad x_2' = p \cdot x_1 - x_2 - x_1 \cdot x_3 \quad x'_3 = x_1 \cdot x_2 - \frac 8 3 \cdot x_3" /></a> <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;\quad&space;p&space;\in&space;[0;21]&space;\quad&space;N_p&space;=&space;40320" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;\quad&space;p&space;\in&space;[0;21]&space;\quad&space;N_p&space;=&space;40320" title="\quad p \in [0;21] \quad N_p = 40320" /></a>
    * Using RK4 solver with fix step
         * lorentz_RK4 folder
    * Using RKCK45 adaptive solver
         * lorentz_RKCK45 folder
5. Duffing equation
    * <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;x_1'&space;=&space;x_2&space;\quad&space;x_2'&space;=&space;x_1(1-x_1^2)&space;-&space;k&space;\cdot&space;x_2&space;&plus;&space;0.3\cdot\cos(t)&space;\quad&space;k&space;\in&space;[0.2;0.3]&space;\quad&space;N_k&space;=&space;46080" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;x_1'&space;=&space;x_2&space;\quad&space;x_2'&space;=&space;x_1(1-x_1^2)&space;-&space;k&space;\cdot&space;x_2&space;&plus;&space;0.3\cdot\cos(t)&space;\quad&space;k&space;\in&space;[0.2;0.3]&space;\quad&space;N_k&space;=&space;46080" title="x_1' = x_2 \quad x_2' = x_1(1-x_1^2) - k \cdot x_2 + 0.3\cdot\cos(t) \quad k \in [0.2;0.3] \quad N_k = 46080" /></a>
    * Using RKCK45 adaptive solver
      * duffing_RKCK45 folder
      
## Summary

| Program |Solver| RollOut|Runtime | Parameter number | GFLOPS | % of max | Special functions |
|---------|------|--------|--------|------------------|--------|---|---------|
|Basic test|RK4|6|1.577 s|181440|24.7|81%|-|
|Division test|RK4|2|1.333 s|18144|3.4|11%|division in ODE|
|Transcendental test|RK4|4|3.143 s|18144|10.7|35%|sine in ODE|
|Lorentz|RK4|2|1.438 s|40320|21.3|70%|-|
|Lorentz|RKCK45|1|2.129 s|40320|10.8|36%|log,exp,division by stepsize prediction|
|Duffing|RKCK45|1|195 s|46080|9.2|30%|Cosine in ODE and log,exp,division by stepsize prediction|



