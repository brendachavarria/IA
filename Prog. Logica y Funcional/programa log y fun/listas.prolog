/* Predicado que imprime numeros pares de una lista */
pares([]).
pares([F|C]) :- R is (F mod 2), R == 0, write(F),nl,pares(C).
pares([F|C]) :- R is (F mod 2), R \== 0, pares(C).

/* Imprimir una lista en orden inverso *\
imprime_reverso([]).
imprime_reverso([A]) :- write(A).
imprime_reverso([F|C]) :- imprime_reverso(C), nl, write(F).

/* Predicado dado un numero positivo imprimir todos sus antecesores hasta 0 */
regresiva(0) :- write(0),nl.
regresiva(N) :- N > 0, write(N), nl,NN is N-1, regresiva(NN).





/* Lo mismo que el anterior pero no imprime lo guarda en una lista */
regresivaL(0,[0]).
regresivaL(N,R) :- N > 0, NN is N-1, regresivaL(NN,RR),append([N],RR,R).


















badaboom(N) :- N > 0, R is (N mod 3), R == 0, RR is (N mod 5), RR == 0, NN is N-1, badaboom(NN), nl, write("BadaBoom!").
badaboom(N) :- N > 0, R is (N mod 3), R == 0, NN is N-1, badaboom(NN), nl, write("Boom!").
badaboom(N) :- N > 0, R is (N mod 5), R == 0, NN is N-1, badaboom(NN), nl, write("Bada").
badaboom(N) :- N > 0, NN is N-1, badaboom(NN),nl, write(N).
badaboom(1) :- nl, write(1).
