# Octagon_Circuit
For my circuits question on Brilliant. 
I wrote the scripts in Matlab for the purpose of solving for the currents in the circuit easily. I derived the systems of equations 
through the application of KVL and KCL to the non-overlapping loops and nodes respectively. 
For the equivalent resistance (Brilliant_Q.m), I derived a 
system of 17 equations with 17 variables. This resulted in a 17x17 matrix. The independent variable vector for this system 
is (i,i1,i2,...,i16), where i is the current through the imaginary voltage source. i1 through i_7 (going anticlockwise) are the currents through the resistors on the edge of the octagon, excluding the resistor in parallel with the source. i8 through i15 are the currents trough the inner resistors, also going anticlockwise. i16 is the current 
through the resistor in parallel with the source. 


