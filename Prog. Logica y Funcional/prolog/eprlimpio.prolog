% Expresion regular
%
%
% Realiza un predicado que pueda validar la siguiente expresion
% regular  uxy+
%
% ejemplo:
% 
% expr_eval("uxy")
% true.
% expr_eval("uxyyyy")
% true.
% expr_eval("uxyyyy")
% true.
% expr_eval("uxyyyyy")
% true.
% expr_eval("ux")
% false
%
% Expresion regular "uxy+"
% verificar si hay una "u"
% verificar si hay una "x"
% verificar si hay una o más "y"
%
% expr_eval(S) :- string(S),string_chars(S,T),expr(T).
% expr([F|C]) :- F == 'u',[H|K] = C, H == 'x', [Q|W] = K, Q == 'y',star(W).
% star([]).
% star([F|C]) :- F == 'y', star(C).

exp([],[]).
exp([F|C],R) :- exp(C,S), atom_string(F,SF), append([SF],S,R).

prep_exp(Expreg, ER) :- 
                atom(Expreg), 
                atom_string(Expreg,Str), 
                prep_exp(Str,ER).

prep_exp(Str, ER) :- 
                string(Str), 
                string_chars(Str,ERC), 
                exp(ERC,ER).

letra_u(["u"|_]).

letra_x(["x"|_]).

letra_y("y").

expr([F|C]) :- letra_u([F|_]),expr_x(C).
expr_x([F|C]) :- letra_x([F|_]),expr_y(C).
expr_y([F|C]) :- letra_y(F),expr_y(C).
expr_y([F|[]]) :- letra_y(F).

exp_reg([F|[]]) :- prep_exp(F,ER),expr(ER).
exp_reg([F|C]) :- prep_exp(F,ER),expr(ER),exp_reg(C).

expr_eval(X) :- split_string(X,"","",L),exp_reg(L).