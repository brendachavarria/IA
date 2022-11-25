/* PARTICIPANTES:
            - Brenda Lizbeth Chavarria Ramirez   18590219
            - Paloma Guadalupe Vargas Alegria    17590099
            
1) De los archivos de arbol genealogico, realiza predicados para comprobar
60 pts

hijo
hija
padre
madre
abuelo
abuela
tio
tia
sobrino
sobrina
primo
prima
nieto
nieta
cuñado
cuñada
nuera
yerno
bisnieto
bisnieta

Si eliges el de los simpson, No hagan todo el arbol solo lo sufiente para probar cada predicado
Si eliges el de potter tendras que capturar TODO el Arbol*/

descendiente(fleurdelacour, monseluirdelacour).
descendiente(fleurdelacour, apollinedelacour).
descendiente(gabrielledelacour, monseluirdelacour).
descendiente(gabrielledelacour, apollinedelacour).

descendiente(victoireweasley, billarthurweasley).
descendiente(victoireweasley, fleurdelacour).
descendiente(domniqueweasley, billarthurweasley).
descendiente(domniqueweasley, fleurdelacour).
descendiente(louisweasley, billarthurweasley).
descendiente(louisweasley, fleurdelacour).

descendiente(ginevramollyweasley, arthurweasley).
descendiente(ginevramollyweasley, molly).
descendiente(charlieweasley, arthurweasley).
descendiente(charlieweasley, molly).
descendiente(billarthurweasley, arthurweasley).
descendiente(billarthurweasley, molly).
descendiente(fredweasley, arthurweasley).
descendiente(fredweasley, molly).
descendiente(georgeweasley, arthurweasley).
descendiente(georgeweasley, molly).
descendiente(percyignatiusweasley, arthurweasley).
descendiente(percyignatiusweasley, molly).
descendiente(ronaldbilliusweasley, arthurweasley).
descendiente(ronaldbilliusweasley, molly).

descendiente(harryjamespotter, jamespotter).
descendiente(harryjamespotter, lilyevans).


descendiente(dudleydurseley, vernondurseley).
descendiente(dudleydurseley, petuniaevans).

descendiente(jamessiriuspotter, harryjamespotter).
descendiente(jamessiriuspotter, ginevramollyweasley).
descendiente(albusseveruspotter, harryjamespotter).
descendiente(albusseveruspotter, ginevramollyweasley).
descendiente(lilylunapotter, harryjamespotter).
descendiente(lilylunapotter, ginevramollyweasley).

descendiente(hugoweasley, ronaldbilliusweasley).
descendiente(hugoweasley, hermionejeangranger).
descendiente(roseweasley, ronaldbilliusweasley).
descendiente(roseweasley, hermionejeangranger).

descendiente(mollyweasleyii, percyignatiusweasley).
descendiente(mollyweasleyii, audrey).
descendiente(lucyweasley, percyignatiusweasley).
descendiente(lucyweasley, audrey).

descendiente(fredweasleyii, georgeweasley).
descendiente(fredweasleyii, angelinajohnson).
descendiente(rosanneweasley, georgeweasley).
descendiente(rosanneweasley, angelinajohnson).

descendiente(siriusblack, orionblack).
descendiente(siriusblack, wallurgsblack).
descendiente(regulusarcturusblack, orionblack).
descendiente(regulusarcturusblack, wallurgsblack).

descendiente(dracoluciusmalfoy, luciusmalfoy).
descendiente(dracoluciusmalfoy, narcissablack).

descendiente(scorpiushyperionmalfoy, dracoluciusmalfoy).
descendiente(scorpiushyperionmalfoy, astoriagrengrass).

descendiente(andromedablack, cyptusblackiii).
descendiente(andromedablack, druellarosier).
descendiente(narcissablack, cyptusblackiii).
descendiente(narcissablack, druellarosier).
descendiente(bellatrixblack, cyptusblackiii).
descendiente(bellatrixblack, druellarosier).

descendiente(nymphadoratonks, tedtonks).
descendiente(nymphadoratonks, andromedablack).

descendiente(teddyremuslupin, remuslupin).
descendiente(teddyremuslupin, nymphadoratonks).

descendiente(lunalovegood, xenophiliuslovegood).
descendiente(lunalovegood, lunasmum).

descendiente(lysanderscamander, rolfscamander).
descendiente(lysanderscamander, lunalovegood).
descendiente(lorcanscamander, rolfscamander).
descendiente(lorcanscamander, lunalovegood).

descendiente(franklongbottom, mrlongbottom).
descendiente(franklongbottom, augusta).

descendiente(nevillelongbottom, franklongbottom).
descendiente(nevillelongbottom, alice).

sexo(apollinedelacour, femenino).
sexo(gabrielledelacour, femenino).
sexo(fleurdelacour, femenino).
sexo(victoireweasley, femenino).
sexo(domniqueweasley, femenino).
sexo(lunasmum, femenino).
sexo(lunalovegood, femenino).
sexo(agusta, femenino).
sexo(alice, femenino).
sexo(hannahabbot, femenino).
sexo(audrey, femenino).
sexo(lucyweasley, femenino).
sexo(molly, femenino).
sexo(rosanneweasley, femenino).
sexo(hermionejeangranger, femenino).
sexo(roseweasley, femenino).
sexo(lilyevans, femenino).
sexo(petuniaevans, femenino).
sexo(marionedursley, femenino).
sexo(ginevramollyweasley, femenino).
sexo(lilylunapotter, femenino).
sexo(druellarosier, femenino).
sexo(narcissablack, femenino).
sexo(andromedablack, femenino).
sexo(bellatrixblack, femenino).
sexo(nymphadoratonks, femenino).
sexo(daphnegrengrass, femenino).
sexo(astoriagrengrass, femenino).
sexo(wallurgsblack, femenino).
sexo(angelinajohnson, femenino).
sexo(mollyweasleyii, femenino).

sexo(monseluirdelacour, masculino).
sexo(charlieweasley, masculino).
sexo(billarthurweasley, masculino).
sexo(louisweasley, masculino).
sexo(xenophiliuslovegood, masculino).
sexo(rolfscamander, masculino).
sexo(lysanderscamander, masculino).
sexo(lorcanscamander, masculino).
sexo(nevillelongbottom, masculino).
sexo(franklonbottom, masculino).
sexo(mrlongbottom, masculino).
sexo(arthurweasley, masculino).
sexo(fredweasley, masculino).
sexo(georgeweasley, masculino).
sexo(percyignatiusweasley, masculino).
sexo(fredweasleyii, masculino).
sexo(jamespotter, masculino).
sexo(vernondurseley, masculino).
sexo(dudleydurseley, masculino).
sexo(harryjamespotter, masculino).
sexo(ronaldbilliusweasley, masculino).
sexo(hugoweasley, masculino).
sexo(jamessiriuspotter, masculino).
sexo(albusseveruspotter, masculino).
sexo(cyptusblackiii, masculino).
sexo(tedtonks, masculino).
sexo(remuslupin, masculino).
sexo(teddyremuslupin, masculino).
sexo(rodolphuslestrange, masculino).
sexo(luciusmalfoy, masculino).
sexo(dracoluciusmalfoy, masculino).
sexo(scorpiushyperionmalfoy, masculino).
sexo(orionblack, masculino).
sexo(siriusblack, masculino).
sexo(regulusarcturusblack, masculino).

padres(monseluirdelacour, apollinedelacour).
padres(billarthurweasley, fleurdelacour).
padres(arthurweasley, molly).
padres(jamespotter, lilyevans).
padres(vernondurseley, petuniaevans).
padres(harryjamespotter, ginevramollyweasley).
padres(ronaldbilliusweasley, hermionejeangranger).
padres(georgeweasley, angelinajohnson).
padres(percyignatiusweasley, audrey).
padres(orionblack, wallurgsblack).
padres(luciusmalfoy, narcissablack).
padres(dracoluciusmalfoy, astoriagrengrass).
padres(cyptusblackiii, druellarosier).
padres(tedtonks, andromedablack).
padres(remuslupin, nymphadoratonks).
padres(mrlongbottom, agusta).
padres(franklonbottom, alice).
padres(xenophiliuslovegood, lunasmum).
padres(rolfscamander, lunalovegood).

pareja(victoireweasley, teddyremuslupin).
pareja(rodolphuslestrange, bellatrixblack).
pareja(scorpiushyperionmalfoy, roseweasley).
pareja(nevillelongbottom, hannahabbot).



padre(A, B) :- descendiente(A, B), sexo(B, masculino).
madre(A, B) :- descendiente(A, B), sexo(B, femenino).


hijo(A, B) :- padres(A, B), sexo(B, masculino).
hija(A, B) :- padres(A, B), sexo(B, femenino).

hermana(A, B) :-
	A \== B,
	sexo(B, femenino),
	padre(A, Z), madre(A, Y),
	padre(B, Z), madre(B, Y).

hermano(A, B) :-
	A \== B,
	sexo(B, masculino),
	padre(A, Z), madre(A, Y),
	padre(B, Z), madre(B, Y).



abuela(A, B) :-
  A\==B,
  sexo(B,femenino),
  madre(A, Z), madre(Z, B).
abuela(A, B) :-
  sexo(B,femenino),
  padre(A, Z), padre(Z, B).

abuelo(A, B) :-
  A\==B,
  sexo(B,masculino),
  madre(A, Z), madre(Z, B).
abuelo(A, B) :-
  sexo(B,masculino),
  padre(A, Z), padre(Z, B).

tia(A,B) :- madre(A,Z) ,hermana(Z,B).
tia(A,B) :- padre(A,Z) ,hermana(Z,B).
tia(A,B) :- madre(A,Z) ,hermano(Z,B) ,pareja(W,B).
tia(A,B) :- padre(A,Z) ,hermano(Z,B) ,pareja(W,B).

tio(A,B) :- madre(A,Z) ,hermano(Z,B).
tio(A,B) :- padre(A,Z) ,hermano(Z,B).
tio(A,B) :- madre(A,Z) ,hermana(Z,B) ,pareja(W,B).
tio(A,B) :- padre(A,Z) ,hermana(Z,B) ,pareja(W,B).

sobrino(A,B) :- padres(Z,A),hermanos(Z,B).
sobrino(A,B) :- padres(Z,A),cuniado(B,Z).

primo(A,B) :- padres(Z,A),padres(W,B),hermanos(Z,W).

nieto(A, B) :-
  A\==B,
  sexo(B,masculino),
  descendiente(A, Z), descendiente(Z, B).

nieta(A, B) :-
  A\==B,
  sexo(B,femenino),
  descendiente(A, Z), descendiente(Z, B).


cuniado(A,B) :- pareja(A,Z),hermanos(Z,B).

bisnieto(A,B) :- abuelos(A,Z),padres(Z,A).

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


/* 3) Realice predicados, que permita validar un color html en hexadecimal
20 pts

color("FF","FF","FF").
true.

color("FF","FF","FG").
false.*/

eh("A").
eh("B").
eh("C").
eh("D").
eh("E").
eh("F").

eh("A0").
eh("A1").
eh("A2").
eh("A3").
eh("A4").
eh("A5").
eh("A6").
eh("A7").
eh("A8").
eh("A9").

eh("0A").
eh("1A").
eh("2A").
eh("3A").
eh("4A").
eh("5A").
eh("6A").
eh("7A").
eh("8A").
eh("9A").

eh("B0").
eh("B1").
eh("B2").
eh("B3").
eh("B4").
eh("B5").
eh("B6").
eh("B7").
eh("B8").
eh("B9").

eh("0B").
eh("1B").
eh("2B").
eh("3B").
eh("4B").
eh("5B").
eh("6B").
eh("7B").
eh("8B").
eh("9B").

eh("C0").
eh("C1").
eh("C2").
eh("C3").
eh("C4").
eh("C5").
eh("C6").
eh("C7").
eh("C8").
eh("C9").

eh("0C").
eh("1C").
eh("2C").
eh("3C").
eh("4C").
eh("5C").
eh("6C").
eh("7C").
eh("8C").
eh("9C").

eh("D0").
eh("D1").
eh("D2").
eh("D3").
eh("D4").
eh("D5").
eh("D6").
eh("D7").
eh("D8").
eh("D9").

eh("0D").
eh("1D").
eh("2D").
eh("3D").
eh("4D").
eh("5D").
eh("6D").
eh("7D").
eh("8D").
eh("9D").

eh("E0").
eh("E1").
eh("E2").
eh("E3").
eh("E4").
eh("E5").
eh("E6").
eh("E7").
eh("E8").
eh("E9").

eh("0E").
eh("1E").
eh("2E").
eh("3E").
eh("4E").
eh("5E").
eh("6E").
eh("7E").
eh("8E").
eh("9E").

eh("F0").
eh("F1").
eh("F2").
eh("F3").
eh("F4").
eh("F5").
eh("F6").
eh("F7").
eh("F8").
eh("F9").

eh("0F").
eh("1F").
eh("2F").
eh("3F").
eh("4F").
eh("5F").
eh("6F").
eh("7F").
eh("8F").
eh("9F").

eh("AA").
eh("BB").
eh("CC").
eh("DD").
eh("EE").
eh("FF").

eh("AB").
eh("AC").
eh("AD").
eh("AE").
eh("AF").

eh("BA").
eh("BC").
eh("BD").
eh("BE").
eh("BF").

eh("CA").
eh("CB").
eh("CD").
eh("CE").
eh("CF").

eh("DA").
eh("DB").
eh("DC").
eh("DE").
eh("DF").

eh("EA").
eh("EB").
eh("EC").
eh("ED").
eh("EF").

eh("FA").
eh("FB").
eh("FC").
eh("FD").
eh("FE").

color(A, B, C) :- eh(A), eh(B), eh(C).

/* 4) En linux y unix se utiliza para dar permisos a un archivo a directorio chmod
la manera en que lo realiza es por medio de numeros en octal por ejemplo
si queremos que un archivo tenga todos los permisos posibles se ejecutaria
de la siguiente manera
chmod 777 archivoamodificar
20 pts
Realizar predicados que permitan validar que validar los permisos de chmod
por ejemplo:
michmod(7,7,7).
true.

michmod(8,7,7).
false.

michmod(0,0,0).
true.

michmod(1,-7,7).
false.

Nota el predicado solo recibe 3 numeros octales, de 3 bits, los cuales son numeros enteros positivos.*/

ebyte(SN) :- SN >= 0, SN =< 7.


michmod(A,B,C) :- ebyte(A), ebyte(B), ebyte(C).

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
