% This script calculates the currents and equivalent resistance of the 
% octagon resistive network as shown in the question on brilliant.org.
% The first eight rows of the matrix are result of KCL. 
% The last nine rows are a result of applying KVL to all of the 
% non-overlapping loops in the circuit. 

R = 50;
Vs = 1;
M = zeros(17,17);
M(1,:) = [-1,1,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,1];
M(2,:) = [1,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,-1,-1];
M(3,:) = [0,1,-1,0,0,0,0,0,0,1,0,0,0,0,0,0,0];
M(4,:) = [0,0,1,-1,0,0,0,0,0,0,1,0,0,0,0,0,0];
M(5,:) = [0,0,0,1,-1,0,0,0,0,0,0,1,0,0,0,0,0];
M(6,:) = [0,0,0,0,1,-1,0,0,0,0,0,0,1,0,0,0,0];
M(7,:) = [0,0,0,0,0,1,-1,0,0,0,0,0,0,1,0,0,0];
M(8,:) = [0,0,0,0,0,0,1,-1,0,0,0,0,0,0,1,0,0];
M(9,:) = [0,1,0,0,0,0,0,0,1,-1,0,0,0,0,0,0,0];
M(10,:) = [0,0,1,0,0,0,0,0,0,1,-1,0,0,0,0,0,0];
M(11,:) = [0,0,0,1,0,0,0,0,0,0,1,-1,0,0,0,0,0];
M(12,:) = [0,0,0,0,1,0,0,0,0,0,0,1,-1,0,0,0,0];
M(13,:) = [0,0,0,0,0,1,0,0,0,0,0,0,1,-1,0,0,0];
M(14,:) = [0,0,0,0,0,0,1,0,0,0,0,0,0,1,-1,0,0];
M(15,:) = [0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,-1,0];
M(16,:) = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,1];
M(17,17) = R;
b = zeros(17,1);
b(17) = Vs;
currents = inv(M)*b;
disp(M);
disp(b);
disp(currents);
Req = Vs/currents(1);
fprintf('The total current is %f resulting in an equivalent resistance of %f ohms.\n', currents(1), Req);