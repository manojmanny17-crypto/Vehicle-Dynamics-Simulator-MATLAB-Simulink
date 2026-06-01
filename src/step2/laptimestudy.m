masses = [700 800 900];

lap_time = zeros(size(masses));

for k = 1:length(masses)

    m = masses(k);

    simOut = sim('f1simlu');

    distance = simOut.distance.signals.values;
    time = simOut.distance.time;

    idx = find(distance >= 1000,1,'first');

    lap_time(k) = time(idx);

end

figure
plot(masses,lap_time,'o-','LineWidth',2)
grid on

xlabel('Vehicle Mass (kg)')
ylabel('Lap Time (s)')
title('Mass vs Lap Time')
T = table(masses',lap_time',...
    'VariableNames',{'Mass_kg','LapTime_s'});

writetable(T,'MassSensitivityResults.csv');
T = table(masses',lap_time',...
    'VariableNames',{'Mass_kg','LapTime_s'});

writetable(T,'MassSensitivityResults.csv');