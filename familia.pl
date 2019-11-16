father(roberval, rodrigo).
father(roberval, vitoria).
father(roberval, lorenzo).
father(rubens, rosangela).
father(rubens, rosival).
father(rubens, roberval).
father(rosival, ronald).

mother(ivone, rodrigo).
mother(marlene, lorenzo).
mother(marlene, vitoria).

siblings(X, Y) :- father(Z, X) , father(Z, Y).
siblings(X, Y) :- mother(Z, X) , mother(Z, Y).

uncle(X, Y) :- siblings(X, Z) , father(Z, Y).
uncle(X, Y) :- siblings(X, Z) , mother(Z, Y).

aunt(X, Y) :- siblings(X, Z) , father(Z, Y).
aunt(X, Y) :- siblings(X, Z) , mother(Z, Y).

cousins(X, Y) :- uncle(Z, X) , father(Z, Y).
cousins(X, Y) :- uncle(Z, X) , mother(Z, Y).

?-cousins(rodrigo, ronald).