% Experiments for quesions 3, 4 and 5

%
% Simple Model of Poisson Distribution: 
%   Modeling the 4 hours using a single distribution
% 
lambda = 800;
hours = poissrnd(lambda);

title = sprintf('Simple Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
hour = sprintf('4 hours of operation: %d visits', hours);

disp(title);
disp(hour);
disp('------------------------------------------------------------------------------');

%
% Complex Model of Poisson Distribution: 
%   Modeling the 4 hours using multiple distributions
% 

lambda1 = 100;
hour1 = poissrnd(lambda1); 

lambda2 = 200;
hour2 = poissrnd(lambda2);

lambda3 = 400;
hour3 = poissrnd(lambda3);

lambda4 = 100;
hour4 = poissrnd(lambda4);

msg = sprintf('Complex Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
msg1 = sprintf('1st hour of operation: %4.2f visits', hour1);
msg2 = sprintf('2nd hour of operation: %4.2f visits', hour2);
msg3 = sprintf('3rd hour of operation: %4.2f visits', hour3);
msg4 = sprintf('4th hour of operation: %4.2f visits', hour4);

disp(msg);
disp(msg1);
disp(msg2);
disp(msg3);
disp(msg4);



