father(roberval, rodrigo).
father(roberval, vitoria).
father(roberval, lorenzo).
father(rubens, rosangela).

mother(ivone, rodrigo).
mother(marlene, lorenzo).
mother(marlene, vitoria).

siblings(X, Y) :- father(Z, X) , father(Z, Y).
siblings(X, Y) :- mother(Z, X) , mother(Z, Y).