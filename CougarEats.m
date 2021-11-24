% Experiments for quesions 3, 4 and 5

COUGARMEAL = 6; % revenue per one meal
DONATION = 1; % donation per one meal
WAGE = 15; % wage per hour for each employee

SAMPLES = [10, 100, 1000, 10000, 100000];

for t=1:1:length(SAMPLES)
    numSamples = SAMPLES(t);
    
    fprintf('Number of Samples: %d\n\n', numSamples);
    
    %
    % Simple Model of Poisson Distribution:
    % Modeling the 4 hours using a single distribution
    %
    SIMPLE_LAMBDA = 800;
    simplePoissonSamples= poissrnd(SIMPLE_LAMBDA,1,numSamples);
    
    % Calculating the avg. revenue and donation
    avgSimpleVisits = mean(simplePoissonSamples);
    revenue = COUGARMEAL * avgSimpleVisits;
    donation = DONATION * avgSimpleVisits;
    
    % Hiring Employees
    eCost = WAGE * 4; % Each employee works for 4 hours
    employees = (revenue/2 - donation)/eCost;
    intEmployees = floor((revenue/2 - donation)/eCost);
    
    % title = sprintf('Simple Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
    % hour = sprintf('4 hours of operation: %4.0f visits', avgSimpleVisits);
    disp('Simple Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
    fprintf('4 hours of operation: %4.0f visits\n', avgSimpleVisits);
    % fprintf('4 hours of operation: %4.0f visits', avgSimpleVisits);
    fprintf('\nAverage Revenue: %4.2f dollars\n', revenue);
    fprintf('Average Donation: %4.2f dollars\n', donation);
    fprintf('Max. Number of Employees: %4.2f or %d employees\n\n', employees, intEmployees);
    
        
    %
    % Complex Model of Poisson Distribution:
    %   Modeling the 4 hours using multiple distributions
    %
    LAMBDA1 = 100;
    LAMBDA2 = 200;
    LAMBDA3 = 400;
    LAMBDA4 = 100;
    
    
    complexPoissonSamples1= poissrnd(LAMBDA1,1,numSamples);
    complexPoissonSamples2= poissrnd(LAMBDA2,1,numSamples);
    complexPoissonSamples3= poissrnd(LAMBDA3,1,numSamples);
    complexPoissonSamples4= poissrnd(LAMBDA4,1,numSamples);
    
    avgComplexVisits1 = mean(complexPoissonSamples1);
    avgComplexVisits2 = mean(complexPoissonSamples2);
    avgComplexVisits3 = mean(complexPoissonSamples3);
    avgComplexVisits4 = mean(complexPoissonSamples4);
    
    % Calculating the avg. number of visits
    avgTotalComplexVisits = avgComplexVisits1 + avgComplexVisits2 + avgComplexVisits3 + avgComplexVisits4;
    % Note: E[hour] = lambda
    % f(x) = E[hour1] + E[hour2] + E[hour3] + E[hour4];
    
    % Calculating the avg. revenue and donation
    complexRevenue = COUGARMEAL * avgTotalComplexVisits;
    complexDonation = DONATION * avgTotalComplexVisits;
    
    % Hiring Employees
    complexECost = WAGE * 4; % Each employee works for 4 hours
    maxComplexEmployee = (complexRevenue/2 - complexDonation)/complexECost;
    intMaxComplexEmployee = floor(maxComplexEmployee);
    
    disp('Complex Model: Average Number of Cougar Visits Over the 4-Hour Time Interval');
    fprintf('1st hour of operation: %4.0f visits\n', avgComplexVisits1);
    fprintf('2nd hour of operation: %4.0f visits\n', avgComplexVisits2);
    fprintf('3rd hour of operation: %4.0f visits\n', avgComplexVisits3);
    fprintf('4th hour of operation: %4.0f visits\n', avgComplexVisits4);
    fprintf('\nAverage Revenue: %4.2f dollars\n', complexRevenue);
    fprintf('Average Donation: %4.2f dollars\n', complexDonation);
    fprintf('Max. Number of Employees: %4.2f or %d employees\n', maxComplexEmployee, intMaxComplexEmployee);
    disp('------------------------------------------------------------------------------');
end
