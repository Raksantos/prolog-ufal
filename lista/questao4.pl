% 4. Some os 8 termos de uma série da questão anterior

somapg(_, _, 0, Soma):- nl, write("Soma da PG = "), write(Soma).
somapg(Inicial, Razao, Count, Soma) :- write(Inicial), nl,
                             NovoTermo is Inicial * Razao, C1 is Count - 1,
                             Soma1 is Soma + Inicial,
                             somapg(NovoTermo, Razao, C1, Soma1).

?-somapg(5, 2, 8, 0).