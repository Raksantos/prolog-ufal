% 5. Faça um programa que desenha, de altura 3 e bases 2*3

espaco(0).
espaco(E):- write(" "), E1 is E - 1, espaco(E1).

coluna(0):- write("").
coluna(C):- write("X"), C1 is C - 1, coluna(C1).

coluna1(0):- nl.
coluna1(C):- write("X"), C1 is C - 1, coluna1(C1).

retangulo(0, _, _).
retangulo(Linha, Coluna, Aux):- AntesLinha is Coluna/2 + Aux,
                                coluna(AntesLinha - 1), espaco(1), coluna1(Coluna - AntesLinha),
                                Aux1 is Aux + 1, L1 is Linha - 1,
                                retangulo(L1, Coluna, Aux1).

?- retangulo(3, 6, 0).                            
                                
