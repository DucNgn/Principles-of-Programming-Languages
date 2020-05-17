or(1, 0, 1).
or(1, 1, 1).
or(0, 1, 1).
or(0, 0, 0).

and(1, 1, 1).
and(1, 0, 0).
and(0, 1, 0).
and(0, 0, 0).

inv(1, 0).
inv(0, 1).

circuit(A, B, S, C) :- or(A, B, AOB), 
                    and(A, B, C),
                    inv(C, NC),
                    and(AOB, NC, S).
                    
