% 3. Imprima todos os 4 termos de uma progressão geométrica de termo inicial 5 e razão 2.

pg(_, _, 0).
pg(Inicial, Razao, Count) :- write(Inicial), nl, NovoTermo is Inicial * Razao, C1 is Count - 1,
                            pg(NovoTermo, Razao, C1).

?-pg(5, 2, 4).                                    