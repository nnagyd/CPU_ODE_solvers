Testing the effect of transcendental functions on peek GFLOPS.

## Description
* Equation:  <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;p&space;\cdot&space;\sin(x)&space;\quad&space;p&space;\in&space;[0.1;1]&space;\quad&space;N_p&space;=&space;18144" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;p&space;\cdot&space;\sin(x)&space;\quad&space;p&space;\in&space;[0.1;1]&space;\quad&space;N_p&space;=&space;18144" title="x' = p \cdot \sin(x) \quad p \in [0.1;1] \quad N_p = 18144" /></a>
* dt = 0.01 (constant)
* number of steps = 10^4
* RK4 method

## Results
* Table of results: http://bit.ly/transcendental_test_result
* 10.7 GFLOPS (35%) with rollOut = 4
