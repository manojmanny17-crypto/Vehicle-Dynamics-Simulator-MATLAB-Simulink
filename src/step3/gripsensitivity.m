clc
clear

mu_values = [0.8 1.0 1.2];

lap_time = zeros(size(mu_values));

for k = 1:length(mu_values)

    mu = mu_values(k);

    g = 9.81;

    corner_time = 0;

    track(1).type = 'straight';
    track(1).length = 300;

    track(2).type = 'corner';
    track(2).radius = 50;

    track(3).type = 'straight';
    track(3).length = 400;

    track(4).type = 'corner';
    track(4).radius = 100;

    track(5).type = 'straight';
    track(5).length = 300;

    for i = 1:length(track)

        if strcmp(track(i).type,'corner')

            R = track(i).radius;

            V_corner = sqrt(mu*g*R);

            arc_length = pi*R/2;

            corner_time = corner_time + arc_length/V_corner;

        end

    end

    straight_time = 22.36;

    lap_time(k) = straight_time + corner_time;

end

figure

plot(mu_values,lap_time,'o-','LineWidth',2)

grid on

xlabel('Tyre Grip Coefficient \mu')
ylabel('Lap Time (s)')
title('Tyre Grip Sensitivity Study')

T = table(mu_values',lap_time',...
    'VariableNames',{'Mu','LapTime_s'})