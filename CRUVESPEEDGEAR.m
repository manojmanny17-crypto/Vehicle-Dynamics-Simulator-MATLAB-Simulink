figure
plot(simOut.speed.time,...
    simOut.speed.signals.values,...
    'LineWidth',2)

grid on
xlabel('Time (s)')
ylabel('Speed (m/s)')
title('3-Gear Vehicle Speed Profile')

simOut = sim('F2');

figure

plot(simOut.gear_force.time,...
    simOut.gear_force.signals.values,...
    'LineWidth',2)

grid on

xlabel('Time (s)')
ylabel('Drive Force (N)')
title('Gearbox Force Profile')
