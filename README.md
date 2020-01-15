## Discribtion
Optimizing numerical ODE solvers using AVX instruction set on CPUs in C++

## Codes
1. Logistic equation 
    * <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;x^2-p&space;\quad&space;p&space;\in&space;[0.1;10]&space;\quad&space;N_p&space;=&space;131072" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;x^2-p&space;\quad&space;p&space;\in&space;[0.1;10]&space;\quad&space;N_p&space;=&space;131072" title="x' = x^2-p \quad p \in [0.1;10] \quad N_p = 131072" /></a>
    * Using RK4 solver with fix step
2. Division test equation 
    * <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;\frac&space;1&space;x&space;-&space;p&space;\cdot&space;x&space;\quad&space;p&space;\in&space;[0;0.8]&space;\quad&space;N_p&space;=&space;18144" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;\frac&space;1&space;x&space;-&space;p&space;\cdot&space;x&space;\quad&space;p&space;\in&space;[0;0.8]&space;\quad&space;N_p&space;=&space;18144" title="x' = \frac 1 x - p \cdot x \quad p \in [0;0.8] \quad N_p = 18144" /></a>
    * Using RK4 solver with fix step
3. Transcendental test equation 
    * <img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;p&space;\cdot&space;\sin(x)&space;\quad&space;p&space;\in&space;[0.1;1]&space;\quad&space;N_p&space;=&space;18144" title="x' = p \cdot \sin(x) \quad p \in [0.1;1] \quad N_p = 18144" />
    * Using RK4 solver with fix step
4. Lorentz equation  
    * <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;x_1'&space;=&space;10(x_2-x_1)&space;\quad&space;x_2'&space;=&space;p&space;\cdot&space;x_1&space;-&space;x_2&space;-&space;x_1&space;\cdot&space;x_3&space;\quad&space;x'_3&space;=&space;x_1&space;\cdot&space;x_2&space;-&space;\frac&space;8&space;3&space;\cdot&space;x_3" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;x_1'&space;=&space;10(x_2-x_1)&space;\quad&space;x_2'&space;=&space;p&space;\cdot&space;x_1&space;-&space;x_2&space;-&space;x_1&space;\cdot&space;x_3&space;\quad&space;x'_3&space;=&space;x_1&space;\cdot&space;x_2&space;-&space;\frac&space;8&space;3&space;\cdot&space;x_3" title="x_1' = 10(x_2-x_1) \quad x_2' = p \cdot x_1 - x_2 - x_1 \cdot x_3 \quad x'_3 = x_1 \cdot x_2 - \frac 8 3 \cdot x_3" /></a> <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;\quad&space;p&space;\in&space;[0;21]&space;\quad&space;N_p&space;=&space;40320" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;\quad&space;p&space;\in&space;[0;21]&space;\quad&space;N_p&space;=&space;40320" title="\quad p \in [0;21] \quad N_p = 40320" /></a>
    * Using RK4 solver with fix step
    * Using RKCK45 adaptive solver
5. Duffing equation
    * <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;x_1'&space;=&space;x_2&space;\quad&space;x_2'&space;=&space;x_1(1-x_1^2)&space;-&space;k&space;\cdot&space;x_2&space;&plus;&space;0.3\cdot\cos(t)&space;\quad&space;k&space;\in&space;[0.2;0.3]&space;\quad&space;N_k&space;=&space;46080" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;x_1'&space;=&space;x_2&space;\quad&space;x_2'&space;=&space;x_1(1-x_1^2)&space;-&space;k&space;\cdot&space;x_2&space;&plus;&space;0.3\cdot\cos(t)&space;\quad&space;k&space;\in&space;[0.2;0.3]&space;\quad&space;N_k&space;=&space;46080" title="x_1' = x_2 \quad x_2' = x_1(1-x_1^2) - k \cdot x_2 + 0.3\cdot\cos(t) \quad k \in [0.2;0.3] \quad N_k = 46080" /></a>
    * Using RKCK45 adaptive solver
