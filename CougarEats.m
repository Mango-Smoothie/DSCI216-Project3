% Experiments for quesions 3, 4 and 5
NUM_TRIALS = 500;
CougarMeal = 6; % revenue per one meal
Donation = 1; % donation per one meal
Wage = 15; % wage per hour for each employee

numtrials = sprintf('Number of Trials: %d', NUM_TRIALS);
disp(numtrials);
%
% Simple Model of Poisson Distribution: 
%   Modeling the 4 hours using a single distribution
% 
lambda = 800;
simple_avg_visits = 0;

for i = 1:NUM_TRIALS
    hours = poissrnd(lambda);
    simple_avg_visits = simple_avg_visits + hours;
end 

% Calculating the avg. revenue and donation 
simple_avg_visits = simple_avg_visits/NUM_TRIALS;
revenue = CougarMeal * simple_avg_visits;
donation = Donation * simple_avg_visits;

% Hiring Employees
ecost = Wage * 4; % Each employee works for 4 hours
employees = (revenue/2 - donation)/ecost;
int_employees = floor((revenue/2 - donation)/ecost);

title = sprintf('Simple Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
hour = sprintf('4 hours of operation: %4.0f visits', simple_avg_visits);
msgrev = sprintf('Average Revenue: %4.2f dollars', revenue);
msgdon = sprintf('Average Donation: %4.2f dollars', donation);
msgemp = sprintf('Max. Number of Employees: %4.2f or %d employees', employees, int_employees);
disp(title);
disp(hour);
fprintf('\n');
disp(msgrev);
disp(msgdon);
disp(msgemp);

disp('------------------------------------------------------------------------------');

%
% Complex Model of Poisson Distribution: 
%   Modeling the 4 hours using multiple distributions
% 
lambda1 = 100;
lambda2 = 200;
lambda3 = 400;
lambda4 = 100;
complex_1_visits = 0;
complex_2_visits = 0;
complex_3_visits = 0;
complex_4_visits = 0;

for i=1:NUM_TRIALS
    hour1 = poissrnd(lambda1); 
    hour2 = poissrnd(lambda2);
    hour3 = poissrnd(lambda3);
    hour4 = poissrnd(lambda4);
    
    complex_1_visits = complex_1_visits + hour1;
    complex_2_visits = complex_2_visits + hour2;
    complex_3_visits = complex_3_visits + hour3;
    complex_4_visits = complex_4_visits + hour4; 
end

% Calculating the avg. number of visits
complex_avg_visits = (complex_1_visits + complex_2_visits + complex_3_visits + complex_4_visits)/NUM_TRIALS;
% Note: E[hour] = lambda 
% f(x) = E[hour1] + E[hour2] + E[hour3] + E[hour4];

% Calculating the avg. revenue and donation 
revenue2 = CougarMeal * complex_avg_visits;
donation2 = Donation * complex_avg_visits;

% Hiring Employees
ecost2 = Wage * 4; % Each employee works for 4 hours
employees2 = (revenue2/2 - donation2)/ecost2;
int_employees2 = floor((revenue2/2 - donation2)/ecost2);

title2 = sprintf('Complex Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
msg1 = sprintf('1st hour of operation: %4.0f visits', hour1);
msg2 = sprintf('2nd hour of operation: %4.0f visits', hour2);
msg3 = sprintf('3rd hour of operation: %4.0f visits', hour3);
msg4 = sprintf('4th hour of operation: %4.0f visits', hour4);
msgrev = sprintf('Average Revenue: %4.2f dollars', revenue2);
msgdon = sprintf('Average Donation: %4.2f dollars', donation2);
msgemp = sprintf('Max. Number of Employees: %4.2f or %d employees', employees2, int_employees2);

disp(title2);
disp(msg1);
disp(msg2);
disp(msg3);
disp(msg4);
fprintf('\n');
disp(msgrev);
disp(msgdon);
disp(msgemp);

