descendiente(pedrito, rodrigo).
descendiente(pedrito, joana).
descendiente(pancha, rodrigo).
descendiente(pancha, joana).

descendiente(luis, laura).
descendiente(luis, santiago).
descendiente(marcela, laura).
descendiente(marcela, santiago).

descendiente(rodrigo, alejandro).
descendiente(rodrigo, diana).
descendiente(joana, alejandro).
descendiente(joana, diana).

descendiente(santiago, alejandro).
descendiente(santiago, diana).
descendiente(laura, alejandro).
descendiente(laura, diana).

sexo(pedrito, masculino).
sexo(luis, masculino).
sexo(pancha, femenino).
sexo(marcela, femenino).

sexo(rodrigo, masculino).
sexo(santiago, masculino).
sexo(joana, femenino).
sexo(laura, femenino).

sexo(alejandro, masculino).
sexo(diana, femenino).

pareja(rodrigo, joana).
pareja(santiago, laura).
pareja(alejandro, diana).


padre(A, B) :- descendiente(A, B), sexo(B, masculino).
madre(A, B) :- descendiente(A, B), sexo(B, femenino).

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

tia(A, B) :- madre(A, Z), hermana(Z, B).
tia(A, B) :- padre(A, Z), hermana(Z, B).
tia(A, B) :- madre(A, Z), hermano(Z,W, pareja(Z, B).
tia(A, B) :- padre(A, Z), hermano(Z,W, pareja(Z, B).

tio(A, B) :- madre(A, Z), hermano(Z, B).
tio(A, B) :- padre(A, Z), hermano(Z, B).
tio(A, B) :- madre(A, Z), hermano(Z,W, pareja(Z, B).
tio(A, B) :- padre(A, Z), hermano(Z,W, pareja(Z, B).
