% Firulais pertenece a perro
% perro pertenece a canido
% canido pertenece a caniformia
% caniformia pertenece a carnivoro
%
% Furflis pertenece a gato
% gato pertenece a fenido
%gato pertenece a fenino
% fenido pertenece a feliformia
% fenino pertenece a feliformia
% feliformia pertenece a carnivoro
%
% hechos
pertenece(firulais,perro).
pertenece(perro,canido).
pertenece(canido,caniformia).
pertenece(caniformia,carnivoro).
pertenece(furflis,gato).
pertenece(gato,fenido).
pertenece(fenido,feliformia).
pertenece(feliformia,carnivoro).
%
% regla
pertenece_a(X,Y) :- pertenece(X,Y).
pertenece_a(X,Y) :- pertenece(X,B),pertenece_a(B,Y).