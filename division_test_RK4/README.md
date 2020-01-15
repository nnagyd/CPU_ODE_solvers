Testing the effect of division on peek GFLOPS.

## Description
* Equation: <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;\frac&space;1&space;x&space;-&space;p&space;\cdot&space;x&space;\quad&space;p&space;\in&space;[0;0.8]&space;\quad&space;N_p&space;=&space;18144" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;\frac&space;1&space;x&space;-&space;p&space;\cdot&space;x&space;\quad&space;p&space;\in&space;[0;0.8]&space;\quad&space;N_p&space;=&space;18144" title="x' = \frac 1 x - p \cdot x \quad p \in [0;0.8] \quad N_p = 18144" /></a>
* dt = 0.01 (constant)
* number of steps = 10^4
* RK4 method

## Results
* Table of results: http://bit.ly/division_test_result
* 3.4 GFLOPS with rollOut = 2
