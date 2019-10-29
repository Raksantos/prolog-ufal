% imprime espaços E vezes
espaco(0).
espaco(E):- write(" "), E1 is E - 1, espaco(E1).

% imprime "X" C vezes, com quebra de linha no final
coluna(0):-nl.
coluna(C):- write("X"), C1 is C - 1, coluna(C1).

% imprime "X" C vezes, sem quebra de linha no final
coluna1(0):- write("").
coluna1(C):- write("X"), C1 is C - 1, coluna1(C1).

% imprime "O" C vezes, sem quebra de linha no final

coluna2(0):-nl.
coluna2(C):- write("O"), C1 is C - 1, coluna2(C1).

% imprime quadrado de L linhas e C colunas
quadrado(0, _).
quadrado(L, C):- coluna(C), L1 is L - 1, quadrado(L1, C).

% imprime um número de N linhas e C colunas

retangulo(0, _).
retangulo(L, C):- coluna2(C), L1 is L - 1, retangulo(L1, C).

% triangulos
triangulo(0).
triangulo(C):- coluna(C), C1 is C -1, triangulo(C1).

triangulo1(0).
triangulo1(C):- C1 is C -1, triangulo1(C1), coluna(C).

triangulo2(0,_).
triangulo2(C,D):- E is D - C, espaco(E), coluna(C), C1 is C - 1, triangulo2(C1, D).

triangulo3(0,_).
triangulo3(C,D):- C1 is D - C + 1, E is D - C1, espaco(E), coluna(C1), C2 is C - 1, triangulo3(C2, D).

triangulo4(0, _).
triangulo4(C, D):-  E is D - C,
                    C1 is C - 1,
                    espaco(E), coluna1(C),
                    coluna(C),
                    triangulo4(C1, D).

triangulo5(0, _).
triangulo5(C, D):-  E is D - C,
                    C1 is C - 1,
                    triangulo5(C1, D),
                    espaco(E), coluna1(C),
                    coluna(C).

losango(0, _).
losango(C, D):- triangulo5(C,D), triangulo4(C,D).

% trapezios
trapezio(0, _).
trapezio(C, D):-    C1 is C - 1 + 1,
                    E is D - C1,
                    C2 is C - 1,
                    trapezio(C2, D),
                    espaco(E), coluna1(C1),
                    coluna(D).

trapezio2(0, _).
trapezio2(C, D):-   C1 is C - 1,
                    D1 is D - C1,
                    trapezio2(C1, D),
                    coluna1(D),
                    coluna(D1).


paralelogramo(0, _).
paralelogramo(C, D):-   C1 is C - 1 + 1,
                        E is D - C1,
                        C2 is C - 1,
                        D1 is D - C2,
                        paralelogramo(C2, D),
                        espaco(E), coluna1(C1),
                        coluna1(D),
                        coluna(D1).

janela(0, _, _).
janela(L, C, J):- C1 is (C - J)//2, coluna1(C1), espaco(J), coluna(C1), L1 is L - 1, janela(L1, C, J). 

?-triangulo5(6, 6), janela(4, 12, 6).

