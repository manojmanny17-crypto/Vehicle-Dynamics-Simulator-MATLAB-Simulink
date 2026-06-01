clc
clear

%% Parameters

mu = 1.0;
g = 9.81;

% Straight section time from your simulator
straight_time = 22.36;

%% Track Definitions

% Track A (Fast)
R_A = [100 150];

% Track B (Medium)
R_B = [50 100];

% Track C (Tight)
R_C = [25 50];

R_all = [R_A;
    R_B;
    R_C];

track_name = {'Track A','Track B','Track C'};

%% Lap Time Calculation

lap_time = zeros(3,1);

for k = 1:3

    corner_time = 0;

    for j = 1:2

        R = R_all(k,j);

        V_corner = sqrt(mu*g*R);

        arc_length = pi*R/2;

        corner_time = corner_time + arc_length/V_corner;

    end

    lap_time(k) = straight_time + corner_time;

end

%% Results Table

T = table(track_name',lap_time,...
    'VariableNames',{'Track','LapTime_s'})

%% Plot 1

figure

bar(lap_time)

grid on

set(gca,'XTickLabel',track_name)

ylabel('Lap Time (s)')
title('Track Comparison Study')

%% Plot 2

figure

plot(1:3,lap_time,'o-','LineWidth',2)

grid on

set(gca,'XTick',1:3)
set(gca,'XTickLabel',track_name)

ylabel('Lap Time (s)')
title('Track Comparison Study')