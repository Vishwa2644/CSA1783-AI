sum(1,1).
sum(N,Sum):-
    N>1,
    N1 is N-1,
    sum(N1,Sum1),
    Sum is Sum1+N.


