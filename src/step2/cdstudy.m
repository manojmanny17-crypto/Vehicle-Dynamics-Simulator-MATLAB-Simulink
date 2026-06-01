Cd_values = [0.2 0.32 0.5];

lap_time = zeros(size(Cd_values));

for k = 1:length(Cd_values)

    Cd = Cd_values(k);

    simOut = sim('f1simlu');

    distance = simOut.distance.signals.values;
    time = simOut.distance.time;

    idx = find(distance >= 1000,1,'first');

    lap_time(k) = time(idx);

end

figure
plot(Cd_values,lap_time,'o-','LineWidth',2)

grid on

xlabel('Drag Coefficient')
ylabel('Lap Time (s)')
title('Aerodynamic Drag Sensitivity Study')
T = table(Cd_values',lap_time',...
    'VariableNames',{'Cd','LapTime_s'});

writetable(T,'DragSensitivityResults.csv');