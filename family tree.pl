male(john).
male(james).
male(peter).
female(linda).
female(susan).
female(emma).

parent(john, james).
parent(john, peter).
parent(linda, james).
parent(linda, peter).
parent(james, susan).
parent(emma, susan).
father(Father, Child) :- male(Father), parent(Father, Child).
mother(Mother, Child) :- female(Mother), parent(Mother, Child).
sibling(Sibling1, Sibling2) :-
    parent(Parent, Sibling1),
    parent(Parent, Sibling2),
    Sibling1 \= Sibling2.
grandparent(GP, GC) :-
    parent(GP, Parent),
    parent(Parent, GC).
