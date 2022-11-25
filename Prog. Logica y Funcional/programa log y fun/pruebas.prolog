/* 5) Bada boom! 20 pts
Realiza un predicado que reciba numero entero positivo 'N' e imprima todos los numeros desde 1 hasta N, bajo la siguientes condiciones
* si el numero es divisor de 5 y 3 imprime "BadaBoom!" en lugar del numero
* si el numero solo es divisor de 5 imprime "Bada"
* si el numero solo es divisor de 3 imprime "Boom!"

Ejemplo:
badaboom(16).
1
2
Boom!
4
Bada
Boom!
7
8
Boom!
Bada!
11
Boom!
13
14
BadaBoom! */

badaboom(N) :- N > 0, R is (N mod 3), R == 0, RR is (N mod 5), RR == 0, NN is N-1, badaboom(NN), nl, write("BadaBoom!").
badaboom(N) :- N > 0, R is (N mod 3), R == 0, NN is N-1, badaboom(NN), nl, write("Boom!").
badaboom(N) :- N > 0, R is (N mod 5), R == 0, NN is N-1, badaboom(NN), nl, write("Bada").
badaboom(N) :- N > 0, NN is N-1, badaboom(NN),nl, write(N).
badaboom(1) :- nl, write(1).

/* 6) Repite el ejercicio anterior pero en lugar de imprimir, retornalos en una lista 20 pts
badaboom(16,Z).
Z = [1,2,Boom!,4,Bada,Boom!....] */

badaboom2(N, Z) :- N > 0, R is (N mod 3), R == 0, RR is (N mod 5), RR == 0, NN is N-1, badaboom2(NN,G), append(G,["BadaBoom!"],Z).
badaboom2(N, Z) :- N > 0, R is (N mod 3), R == 0, NN is N-1, badaboom2(NN,G), append(G,["Boom!"],Z).
badaboom2(N, Z) :- N > 0, R is (N mod 5), R == 0, NN is N-1, badaboom2(NN,G), append(G,["Bada"],Z).
badaboom2(N, Z) :- N > 0, NN is N-1, badaboom2(NN,G), append(G,[N],Z).
badaboom2(1, [1]).
