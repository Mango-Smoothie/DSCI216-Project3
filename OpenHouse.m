% Experiments for question 1 and 2

% Question 1
pCHICKEN = 2/3;
SAMPLES = [10, 100, 1000, 10000, 100000];
BINOM_TRIALS= 100;

for t=1:1:length(SAMPLES)
    numSamples = SAMPLES(t);
    
    fprintf('Number of Samples: %d\n\n', numSamples);
    
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % Question 1
    %
    binomialSamples=  binornd(BINOM_TRIALS,pCHICKEN,1,numSamples);
    
    % calculate the average chicken and beef
    averageChicken = mean(binomialSamples);
    averageBeef = BINOM_TRIALS - averageChicken;
    
    fprintf('Average number of each Burrito in %d samples\n', numSamples);
    fprintf('E(Chicken): %3.1f\n', averageChicken);
    fprintf('E(Beef): %3.1f\n\n', averageBeef);

    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % Question 2
    %
    CHICKEN_PRICE = 3;
    BEEF_PRICE = 4;
    
    % calculate average cost of burritos
    averageChickenCost = averageChicken * CHICKEN_PRICE;
    averageBeefCost = averageBeef * BEEF_PRICE;
    totalAverageCost = averageChickenCost + averageBeefCost;
    
    fprintf('The average total amount of money spent: %3.2f\n', totalAverageCost);
    disp("------------------------------------------------");
end
