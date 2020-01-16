Testing peek GFLOPS, with RK4 solver.

## Description
* Equation:  <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;x_1'&space;=&space;10(x_2-x_1)&space;\quad&space;x_2'&space;=&space;p&space;\cdot&space;x_1&space;-&space;x_2&space;-&space;x_1&space;\cdot&space;x_3&space;\quad&space;x'_3&space;=&space;x_1&space;\cdot&space;x_2&space;-&space;\frac&space;8&space;3&space;\cdot&space;x_3" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;x_1'&space;=&space;10(x_2-x_1)&space;\quad&space;x_2'&space;=&space;p&space;\cdot&space;x_1&space;-&space;x_2&space;-&space;x_1&space;\cdot&space;x_3&space;\quad&space;x'_3&space;=&space;x_1&space;\cdot&space;x_2&space;-&space;\frac&space;8&space;3&space;\cdot&space;x_3" title="x_1' = 10(x_2-x_1) \quad x_2' = p \cdot x_1 - x_2 - x_1 \cdot x_3 \quad x'_3 = x_1 \cdot x_2 - \frac 8 3 \cdot x_3" /></a>  ; <a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;\quad&space;p&space;\in&space;[0;21]&space;\quad&space;N_p&space;=&space;40320" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;\quad&space;p&space;\in&space;[0;21]&space;\quad&space;N_p&space;=&space;40320" title="\quad p \in [0;21] \quad N_p = 40320" /></a>
* dt = 0.01 (constant)
* number of steps = 10^4
* RK4 method 

## Results
* Table of results: http://bit.ly/lorentz_result
* 21.32 GFLOPS (70%) with rollOut = 2
