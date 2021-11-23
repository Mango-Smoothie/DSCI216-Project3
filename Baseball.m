% Problem 6, 7, 8

p = 0.315; % P(batting average)
HITS = 10;

%% 6. Average #pitches for a single hit

singlehit = 1/p; % E[x] = 1/p where x = geornd(p)
int_singlehit = floor(singlehit);

msg = sprintf('Average Number of Pitches for a Single Hit: %.2f or %d pitches', singlehit, int_singlehit);
disp(msg); 

%% 7. Average money during a single pratice 

% Average # pitches for 10 hits
k = 10;
tenhits = k/p; % E[x2] = k/p where x2 = x2 = nbinrnd(HITS, 0.315)
int_tenhits = floor(tenhits);

% Average # misses for 10 hitz
misses = int_tenhits - HITS; 

msg2 = sprintf('Average number of Pitches during a Single Practice: %.2f or %d pitches', tenhits, int_tenhits);
disp(msg2);


% Profit
hit = 75; % gain for each hit
miss = 50; % loss for each miss
profit = HITS * 75 - misses * 50;

msg3 = sprintf('On each practice, Mr. Ortiz has a net profit of %d dollars', profit);
fprintf('\n');
disp(msg3);

%% 8. Function of batting average from 0.0 to 1.000. When does Mr. Ortiz lose money? When does Mr. Ortiz break even
k = 10;

fun = 10/x;
fplot(fun, [0 1])




