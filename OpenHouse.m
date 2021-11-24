% Experiments for question 1 and 2

% Question 1
pCHICKEN = 2/3;
NUM_TRIALS = 10000;
BINOM_TRIALS= 100;

binomialSamples=  binornd(BINOM_TRIALS,pCHICKEN,1,NUM_TRIALS);
averageChicken = mean(binomialSamples);
averageBeef = BINOM_TRIALS - averageChicken;
msg= sprintf('Average Number of Successes in %d Trials', NUM_TRIALS);
msg2= sprintf('E(Chicken): %3.1f', averageChicken);
msg3= sprintf('E(Beef): %3.1f', averageBeef);

disp(msg);
disp(msg2);
disp(msg3);
disp("------------------------------------------------");
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
CHICKEN_PRICE = 3;
BEEF_PRICE = 4;

averageChickenCost = averageChicken * CHICKEN_PRICE;
averageBeefCost = averageBeef * BEEF_PRICE;
totalAverageCost = average_chicken_cost + averageBeefCost;

msg4= sprintf('The average total amount of money spent: %3.2f', totalAverageCost);
disp(msg4);
