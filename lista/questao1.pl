%aprovados em Cálculo 1
aprovado(pedro, calculo1).
aprovado(joao, calculo1).
aprovado(fabio, calculo1).
aprovado(paulo, calculo1).

%aprovados em P1

aprovado(pedro, programacao1).
aprovado(joao, programacao1).
aprovado(fabio, programacao1).
aprovado(paulo, programacao1).

%aprovados em Física 1

aprovado(ana, fisica1).
aprovado(maria, fisica1).
aprovado(emanuela, fisica1).
aprovado(fabiola, fisica1).

%aprovados em Inglês Instrumental

aprovado(ana, ingles).
aprovado(maria, ingles).
aprovado(emanuela, ingles).
aprovado(fabiola, ingles).

%aprovados em Álgebra Linear

aprovado(ana, algebra).
aprovado(pedro, algebra).
aprovado(joao, algebra).
aprovado(maria, algebra).
aprovado(paulo, algebra).
aprovado(fabio, algebra).

%aprovados em Informática e Sociedade

aprovado(pedro, informatica_e_sociedade).
aprovado(joao, informatica_e_sociedade).
aprovado(emanuela, informatica_e_sociedade).
aprovado(fabiola, informatica_e_sociedade).

verifica(X) :- aprovado(X, informatica_e_sociedade) , aprovado(X, fisica1).

?- verifica(pedro) ; verifica(joao) ; verifica(fabio) ; verifica(paulo) ; 
verifica(ana) ; verifica(maria) ; verifica(fabiola) ; verifica(emanuela).