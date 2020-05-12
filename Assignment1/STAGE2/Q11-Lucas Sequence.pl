% base cases
lucas(1, 2).
lucas(2, 1).

% recursion
lucas(N, Solution) :- N > 2, N_1 is N-1, N_2 is N-2, lucas(N_1, Solution1), lucas(N_2, Solution2), Solution is Solution1+Solution2.
