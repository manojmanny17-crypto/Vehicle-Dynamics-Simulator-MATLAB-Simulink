theta_deg = [0 5 10];

lap_time = zeros(size(theta_deg));

for k = 1:length(theta_deg)

    theta = deg2rad(theta_deg(k));

    simOut = sim('f1simlu');

    distance = simOut.distance.signals.values;
    time = simOut.distance.time;

    idx = find(distance >= 1000,1,'first');

    lap_time(k) = time(idx);

end

T = table(theta_deg',lap_time',...
    'VariableNames',{'Gradient_deg','LapTime_s'})

figure
plot(theta_deg,lap_time,'o-','LineWidth',2)
grid on

xlabel('Road Gradient (deg)')
ylabel('Lap Time (s)')
title('Road Gradient Sensitivity Study')