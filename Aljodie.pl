
% Facts
male(abdullah).
male(khalid).
male(rakan).

female(noor).
female(lara).
female(fajer).

parent(abdullah, khalid).
parent(noor, khalid).
parent(abdullah, lara).
parent(noor, lara).
parent(khalid, rakan).
parent(khalid, fajer).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.