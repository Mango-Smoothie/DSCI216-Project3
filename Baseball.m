% Problem 6, 7, 8

NUM_TRIALS = 100000;
p = .315; % p(hit)
k = 10; % number of successful hit

%% 6. Average #pitches for a single hit

res6 = 0;
for i = 1:NUM_TRIALS

res6 = res6 + geornd(.315);
end
res6 = res6 / NUM_TRIALS;

intRes6 = floor(res6);

msg = sprintf('Average Number of Pitches for a Single Hit: %.2f or %d pitches', res6, intRes6);
disp(msg); 

%% 7. Average money during a single pratice 

totalMiss = 0;
for i = 1:NUM_TRIALS

totalMiss = totalMiss + nbinrnd(k, .315);
 
end
avgMiss = totalMiss / NUM_TRIALS;

avgProfit = (avgMiss * -50) + (k * 75);

intavgMiss = floor(avgMiss);

msg2 = sprintf('Average number of misses during a Single Practice: %.2f or %d pitches', avgMiss, intavgMiss);
disp(msg2);

msg3 = sprintf('On each practice, Mr. Ortiz has a net profit of %f dollars', avgProfit);
fprintf('\n');
disp(msg3);

%% 8. Function of batting average from 0.0 to 1.000. When does Mr. Ortiz lose money? When does Mr. Ortiz break even
pRange = 0:0.1:1;

k = 10; % 10 successful hits
totalMissRange  = 0;
for i = 1:NUM_TRIALS
totalMissRange = totalMissRange + nbinrnd(k, pRange);
end

avgMissRange = totalMissRange / NUM_TRIALS;

avgProfitRange = (avgMissRange * -50) + (k * 75);

plot(pRange, avgProfitRange)
xlabel('Batting Average')
ylabel('Profit')
grid on
hold on
y = 0; 
plot(pRange,y);
hold off




