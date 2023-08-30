% Define parent-child relationships
parent(john, mary).
parent(john, bob).
parent(mary, ann).
parent(bob, pat).

% Define rules for determining parent relationship
is_parent(X, Y) :- parent(X, Y).
is_parent(X, Y) :- parent(X, Z), is_parent(Z, Y).

% Entry point for querying parent relationships
query_parent(X, Y) :-
    write('Is '), write(X), write(' the parent of '), write(Y), write('? (yes/no) '),
    read(Response),
    Response == yes.

% Backward chaining rule
backward_chain(X, Y) :-
    query_parent(X, Y), !.
backward_chain(X, Y) :-
    is_parent(Z, Y),
    backward_chain(X, Z).
