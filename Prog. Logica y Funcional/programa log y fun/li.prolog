regresiva(0) :- write(0),nl.
regresiva(N) :- N > 0, write(N), nl,NN is N-1, regresiva(NN).

regresivaL(0,[0]).
regresivaL(N,R) :- N > 0, NN is N-1, regresivaL(NN,RR),append([N],RR,R).
