% Experiments for question 1 and 2
NUM_TRIALS = 10000;

chicken = 2/3; % p(chicken) = 2/3
beef = 1/3; % p(beef) = 1/3
N = 100;
result_chicken = 0;
result_beef = 0;

for i = 1:NUM_TRIALS
    % E(chicken)
    x = binornd(N,chicken);
    result_chicken = result_chicken + x;
    
    % E(beef)
    y = N - x;
    result_beef = result_beef + y;
end 

average_chicken = result_chicken/NUM_TRIALS;
average_beef = result_beef/NUM_TRIALS;

msg= sprintf('Average Number of Successes in %d Trials', NUM_TRIALS);
msg2= sprintf('E(Chicken): %3.1f', average_chicken);
msg3= sprintf('E(Beef): %3.1f', average_beef);

disp(msg);
disp(msg2);
disp(msg3);
disp("------------------------------------------------");

CHICKEN_PRICE = 3;
BEEF_PRICE = 4;

average_chicken_cost = average_chicken * CHICKEN_PRICE;
average_beef_cost = average_beef * BEEF_PRICE;
total_average_cost = average_chicken_cost + average_beef_cost;

msg4= sprintf('The average total amount of money spent: %3.2f', total_average_cost);
disp(msg4);
