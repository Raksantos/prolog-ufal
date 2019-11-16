% 3. Imprima todos os 4 termos de uma progressão geométrica de termo inicial 5 e razão 2.

pg(_, _, _, 0).
pg(Inicial, Razao, Count, Aux) :- Resultado is Inicial * (Razao ^ (Count - Aux)),
                                        write(Resultado), nl, Aux1 is Aux - 1,
                                        pg(Inicial, Razao, Count, Aux1).

?-pg(5, 2, 4, 4).                                    