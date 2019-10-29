somatorio(11, _).
somatorio(I, Som) :- Soma is (1/(2^I)) + Som, In is I + 1, write(Soma), nl, somatorio(In, Soma).

somatorio1(11, _).
somatorio1(I, Som) :- Soma is (((-1)^I)*2) + Som, In is I + 1, write(Soma), nl, somatorio1(In, Soma).