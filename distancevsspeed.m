
figure

plot(simOut.distance.signals.values,...
    simOut.speed.signals.values,...
    'LineWidth',2)

grid on

xlabel('Distance (m)')
ylabel('Speed (m/s)')
title('Vehicle Speed Profile')