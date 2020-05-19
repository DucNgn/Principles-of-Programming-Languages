% base cases
lucas(1, [2]).
lucas(2, [1,2]).

% recursion
lucas(N, [L1,L2,L3|T]) :- N > 2, N1 is N - 1, lucas(N1, [L2,L3|T]), L1 is L2 + L3.

% we can get the first n numbers using the following query (for example for n = 7):
% ?- lucas(7,X).
