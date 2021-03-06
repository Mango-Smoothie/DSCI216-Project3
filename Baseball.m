% Problem 6, 7, 8

figure(1);
counter = 1;
p = .315; % p(hit)
k = 10; % number of successful hit

SAMPLES = [10, 100, 1000, 10000, 100000];

for t=1:1:length(SAMPLES)
    numSamples = SAMPLES(t);
    
    fprintf('Number of Samples: %d\n\n', numSamples);
    %% 6. Average #pitches for a single hit
    
    geometricSamples = geornd(p, 1, numSamples);
    
    avgMissesSingle = mean(geometricSamples);
    intAvgMissesSingle = floor(avgMissesSingle);
    
    fprintf('Average Number of Misses for a Single Hit: %.2f or %d pitches\n', avgMissesSingle, intAvgMissesSingle);
    
    %% 7. Average money during a single pratice
    
    negBinomialSamples = nbinrnd(k, .315, 1, numSamples);
    
    avgMissPractice = mean(negBinomialSamples);
    avgProfit = (avgMissPractice * -50) + (k * 75);
    
    intAvgMissPractice = floor(avgMissPractice);
    
    fprintf('Average number of Misses during a Single Practice: %.2f or %d pitches\n', avgMissPractice, intAvgMissPractice);
    fprintf('On each practice, Mr. Ortiz has a net profit of %.2f dollars\n', avgProfit);
    disp("-----------------------------------------------------------------------");

        
    %% 8. Function of batting average from 0.0 to 1.000. When does Mr. Ortiz lose money? When does Mr. Ortiz break even
    pRange = 0:0.1:1;
    
    totalMissRange  = 0;
    for i = 1:numSamples
        totalMissRange = totalMissRange + nbinrnd(k, pRange);
    end
    
    avgMissRange = totalMissRange / numSamples;
    
    avgProfitRange = (avgMissRange * -50) + (k * 75);
    
    hold on;
    subplot(3,2,counter);
    plot(pRange, avgProfitRange)
    msg= sprintf('P(Hit) vs Profit (SampleSize = %d)',numSamples);
    title(msg);
    xlabel('Batting Average')
    ylabel('Profit')
    grid on
    counter = counter + 1;
end
