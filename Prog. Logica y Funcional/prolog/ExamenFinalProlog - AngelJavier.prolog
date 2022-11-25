% Arbol genealogico
%
mujer(mona).
mujer(jacqueline).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(ling).
mujer(zia).

hombre(abraham).
hombre(clancy).
hombre(herbert).
hombre(homero).
hombre(bart).

padres(mona,homero).
padres(mona,herbert).
padres(abraham,homero).
padres(abraham,herbert).
padres(clancy,marge).
padres(jacqueline,marge).
padres(clancy,patty).
padres(jacqueline,patty).
padres(clancy,selma).
padres(jacqueline,selma).
padres(homero,bart).
padres(marge,bart).
padres(homero,lisa).
padres(marge,lisa).
padres(homero,maggie).
padres(marge,maggie).
padres(selma,ling).
padres(lisa,zia).

pareja(abraham,mona).
pareja(homero,marge).
pareja(clancy,jacqueline).

hermanos(X,Y) :- padres(Z,X),padres(Z,Y), not(X==Y).
cuniado(X,Y) :- pareja(X,Z),hermanos(Z,Y).

% TIOS: saber si alguien es tio de una persona
tio(X,Y) :- padres(Z,Y),hermanos(X,Z).
tio(X,Y) :- padres(Z,Y),cuniado(X,Z).

% PRIMOS: saber si dos personas son primos 
primo(X,Y) :- padres(Z,X),padres(W,Y),hermanos(Z,W).

%SOBRINOS: saber si una persona es sobrina de otra
sobrino(X,Y) :- padres(Z,X),hermanos(Z,Y).
sobrino(X,Y) :- padres(Z,X),cuniado(Y,Z).

% ABUELO: saber si alguien es abuelo de una persona
abuelo(X,Y) :- padres(X,Z),padres(Z,Y).

% HIJOS: saber si una persona es hijo de otra
hijo(X,Y) :- padres(Y,X).

% BISNIETO: saber si alguien es bisnieto de otra persona
bisnieto(X,Y) :- abuelos(Y,Z),padres(Z,X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Estructura de carpetas

tiene('Users','Documents').
tiene('Users','Downloads').
tiene('Users','Desktop').
tiene('Users','Pictures').
tiene('Users','Videos').
tiene('Users','Music').
tiene('Documents','RespuestasExamen.docx').
tiene('Documents','trampas_fornite.docx').
tiene('Documents','orden_reinscripcion.pdf').
tiene('Downloads','Video_youtube.mp4').
tiene('Downloads','Anime').
tiene('Anime','Dragon_ball').
tiene('Anime','Naruto').
tiene('Naruto','cap1.mp4').
tiene('Desktop','isos').
tiene('Desktop','Chrome.lnk').
tiene('isos','window10.iso').

dentro(X,Y) :- tiene(Y,X).
dentro(X,Y) :- tiene(Z,X),dentro(Z,Y).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Número telefónico
% Expresión regular ([0-9]{10})

numero(X) :- string(X),string_chars(X,T),telefono(T),length(T,10).

digito(N) :- N == '0'; N == '1'; N == '2'; N == '3'; N == '4';
            N == '5'; N == '6'; N == '7'; N == '8'; N == '9'.

telefono([]).
telefono([F|C]) :- digito(F),telefono(C).