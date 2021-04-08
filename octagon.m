r = 3;
coordinates = zeros(8,2);
for i = 1:8
    coordinates(i,1) = r*cos(pi/8 + (i-1) * pi/4);
    coordinates(i,2) = r*sin(pi/8 + (i-1) * pi/4);
end
disp(coordinates);