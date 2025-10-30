% Facts about family relationships
parent(john, mary).
parent(john, steve).
parent(mary, alice).
parent(mary, bob).
parent(alice, carol).
parent(alice, david).
parent(bob, emily).
parent(bob, frank).

% Rules to derive additional relationships
grandparent(GP, GC) :-
    parent(GP, Parent),
    parent(Parent, GC).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y), 
    X \= Y.

brother(X, Y) :-
    male(X),
    sibling(X, Y).

sister(X, Y) :-
    female(X),
    sibling(X, Y).

uncle(Uncle, NieceNephew) :-
    brother(Uncle, Parent),
    parent(Parent, NieceNephew).

aunt(Aunt, NieceNephew) :-
    sister(Aunt, Parent),
    parent(Parent, NieceNephew).

% Define genders
male(john).
male(steve).
male(bob).
male(carol).
male(david).
male(frank).

female(mary).
female(alice).
female(emily).


% Query examples:
Copy one by one queries

grandparent(GP, emily).

uncle(Uncle, carol).

aunt(Aunt, david).
