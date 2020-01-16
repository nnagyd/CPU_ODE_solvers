Testing peek GFLOPS, with RKCK45 solver.

## Files
* RKCK45_constants.h contains the constants of the numerical method
* lorentz_RKCK45.cpp contains main()


## Description
* Equation:  <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;x_1'&space;=&space;x_2&space;\quad&space;x_2'&space;=&space;x_1(1-x_1^2)&space;-&space;k&space;\cdot&space;x_2&space;&plus;&space;0.3\cdot\cos(t)&space;\quad&space;k&space;\in&space;[0.2;0.3]&space;\quad&space;N_k&space;=&space;46080" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;x_1'&space;=&space;x_2&space;\quad&space;x_2'&space;=&space;x_1(1-x_1^2)&space;-&space;k&space;\cdot&space;x_2&space;&plus;&space;0.3\cdot\cos(t)&space;\quad&space;k&space;\in&space;[0.2;0.3]&space;\quad&space;N_k&space;=&space;46080" title="x_1' = x_2 \quad x_2' = x_1(1-x_1^2) - k \cdot x_2 + 0.3\cdot\cos(t) \quad k \in [0.2;0.3] \quad N_k = 46080" /></a>
* dt -> variable
* tMax = (1024+32)*2*Pi = 6635.04
* RKCK45 method 

## Results
* [Table of results](http://bit.ly/lorentz_result_RKCK45)
* 11.2 GFLOPS (37%) with rollOut = 4

### Bifurcation diagram with 46080 parameters created in 195 s
