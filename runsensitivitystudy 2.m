masses = [700 800 900];

distance_end = zeros(size(masses));

for k = 1:length(masses)

    m = masses(k);

    simOut = sim('f1simlu');

    distance_end(k) = simOut.distance.signals.values(end);

end

figure
plot(masses,distance_end,'o-','LineWidth',2)
grid on

xlabel('Vehicle Mass (kg)')
ylabel('Distance Travelled (m)')
title('Mass Sensitivity Study')