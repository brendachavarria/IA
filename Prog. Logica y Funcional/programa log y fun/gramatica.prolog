ebyte(SN) :- number_string(N,SN), N>=0, N=<255.
ereg("R0").
ereg("R1").
ereg("R2").
ereg("R3").
esen("SA").
esen("Sb").
esen("SI").
esen("SD").
emov(">").
emov("<").
emov("A").
emov("V").
esal("SaltaIgual").
esal("SaltaMay").
esal("SaltaMen").
esal("SaltaMayI").
esal("SaltaMenI").
esal("SaltaNIgual").

sasigna(R,"=",S) :- ereg(R), esen(S).
sasigna(R,"=",S) :- ereg(R), ebyte(S).
sasigna(R,"=",S) :- ereg(R), ereg(S).

ssalto(A,B,C,D) :- esal(A), ereg(B), ebyte(C), ebyte(D).
ssalto(A,B,C,D) :- esal(A), ebyte(B), ereg(C), ebyte(D).
ssalto(A,B,C,D) :- esal(A), ereg(B), ereg(C), ebyte(D).
ssalto(A,B,C,D) :- esal(A), ebyte(B), ebyte(C), ebyte(D).

smov(A) :- emov(A).

sentencias(A) :- smov(A).
sentencias(A,B,C) :- sasigna(A,B,C).
sentencias(A,B,C,D) :-ssalto(A,B,C,D).

lista_sentencias([A]) :- sentencia(A).
lista_sentencias([A,B,C]) :- sentencia(A,B,C).
lista_sentencias([A,B,C,D]) :- sentencia(A,B,C,D).

programa(A) :- sentencias(A).
programa(A,B) :- sentencias(A,B).
