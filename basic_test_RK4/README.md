Testing peek GFLOPS, with RK4 solver.

## Description
* Equation:  <a href="https://www.codecogs.com/eqnedit.php?latex=x'&space;=&space;x^2-p&space;\quad&space;p&space;\in&space;[0.1;10]&space;\quad&space;N_p&space;=&space;181440" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x'&space;=&space;x^2-p&space;\quad&space;p&space;\in&space;[0.1;10]&space;\quad&space;N_p&space;=&space;181440" title="x' = x^2-p \quad p \in [0.1;10] \quad N_p = 181440" /></a>
* dt = 0.01 (constant)
* number of steps = 10^4
* RK4 method

## Results
* Table of results: http://bit.ly/basic_test_result
* 24.7 GFLOPS (81%) with rollOut = 6
