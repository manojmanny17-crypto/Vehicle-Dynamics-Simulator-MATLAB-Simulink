figure

subplot(4,1,1)
plot(simOut.speed.time,...
    simOut.speed.signals.values)
grid on
ylabel('Speed (m/s)')
title('Telemetry Dashboard')

subplot(4,1,2)
plot(simOut.distance.time,...
    simOut.distance.signals.values)
grid on
ylabel('Distance (m)')

subplot(4,1,3)
plot(simOut.gear_force.time,...
    simOut.gear_force.signals.values)
grid on
ylabel('Force (N)')
xlabel('Time (s)')
subplot(4,1,4)

plot(simOut.drive_force.time,...
    simOut.drive_force.signals.values)
grid on
ylabel('Drive Force (N)')
xlabel('Time (s)')