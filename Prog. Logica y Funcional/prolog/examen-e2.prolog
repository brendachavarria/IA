/* 2) Una analizar sintatico manda al analizador lexico una lista de tokens
que debe ser validada. La expresion regular corresponde a una mascara de red.
25pts
Realice predicados que permitan validar mascaras de red de ipv4, se adjunta ejemplo

mascara(["255",".","255",".","255",".","0"]).
true.*/

numva("0").
numva("128").
numva("192").
numva("224").
numva("240").
numva("248").
numva("252").
numf("254").


mascara([A,".",B,".",C,".",D]) :- A == "255", numva(B); numf(B), C == "0", D == "0".
mascara([A,".",B,".",C,".",D])  :- A == "255", B == "255", numva(C); numf(C), D == "0".
mascara([A,".",B,".",C,".",D])  :- A == "255", B == "255", C == "255", numva(D).
