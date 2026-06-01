mu = 1.0;
g = 9.81;

R1 = 50;
R2 = 100;

V_corner_1 = sqrt(mu*g*R1);
V_corner_2 = sqrt(mu*g*R2);

corner1_arc = pi*R1/2;
corner2_arc = pi*R2/2;

corner1_time = corner1_arc/V_corner_1;
corner2_time = corner2_arc/V_corner_2;

fprintf('Corner 1 Time = %.2f s\n',corner1_time);
fprintf('Corner 2 Time = %.2f s\n',corner2_time);