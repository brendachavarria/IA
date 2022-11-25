% Expresion regular
%
%
% Realiza un predicado que pueda validar la siguiente expresion
% regular  ([0-9A-Fa-f]{2}[:]){5}([0-9A-Fa-f]{2})
%
% ejemplo:
% 
% expr_eval("3D:F2:C9:A6:B3:4F")
% true.
% expr_eval("F2:C9:A6:B3:4F")
% false.
%
% expr_eval(S) :- string(S),string_chars(S,T),expr(T).
% expr([F|C]) :- F == 'u',[H|K] = C, H == 'x', [Q|W] = K, Q == 'y',star(W).
% star([]).
% star([F|C]) :- F == 'y', star(C).
expr_eval(X) :- string(X),string_chars(X,T),expr(T).

%nums(N) :- N == '0'; N == '1'; N == '2'; N == '3'; N == '4';
%            N == '5'; N == '6'; N == '7'; N == '8'; N == '9'.

%letras(N) :- N == 'A'; N == 'B'; N == 'C'; N == 'D'; N == 'E';
%            N == 'F'; N == 'a'; N == 'b'; N == 'c'; N == 'd'; N == 'e';
%            N == 'f'.

caracter(N) :- N == 'A'; N == 'B'; N == 'C'; N == 'D'; N == 'E'; N == 'F';
                N == 'a'; N == 'b'; N == 'c'; N == 'd'; N == 'e'; N == 'f';
                N == '0'; N == '1'; N == '2'; N == '3'; N == '4'; N == '5';
                N == '6'; N == '7'; N == '8'; N == '9'.

dosp(N) :- N == ':'.

expr([]).

expr([F|C]) :- caracter(F),[A|B] = C,caracter(A),[D|E] = B,dosp(D),                     %3D:
                [G|H] = E,caracter(G),[I|J] = H,caracter(I),[K|L] = J,dosp(K),          %F2:
                [M|N] = L,caracter(M),[O|P] = N,caracter(O),[Q|R] = P,dosp(Q),          %C9:
                [S|T] = R,caracter(S),[U|V] = T,caracter(U),[W|X] = V,dosp(W),          %A6:
                [Y|Z] = X,caracter(Y),[Ab|Cd] = Z,caracter(Ab),[Ef|Gh] = Cd,dosp(Ef),   %B3:
                [Ij|Kl] = Gh,caracter(Ij),[Mn|Op] = Kl,caracter(Mn),expr(Op).          %4F

%expr([F|C]) :- nums(F),[A|B] = C,nums(A),expr(B).

%expr([F|C]) :- nums(F),[A|B] = C,letras(A),expr(B).

%expr([F|C]) :- letras(F),[A|B] = C,nums(A),expr(B).

%expr([F|C]) :- F == ':',expr(C).