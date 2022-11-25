% Expresion regular
%
%
% Realiza un predicado que pueda validar la siguiente expresion
% regular  (a+|b+)(ty)*
%
% ejemplo:
% 
% expr_eval("a").
% true
% expr_eval("aty").
% true
% expr_eval("aaaaa").
% true
% expr_eval("aaaaaaatytytytytyty").
% true
% expr_eval("b").
% true
% expr_eval("bty").
% true
% expr_eval("bbbbb").
% true
% expr_eval("bbbtytytytytyty").
% true
%expr_eval("ty").
% false
% expr_eval("abty").
% false
% expr_eval("aaaaabbb").
% false
% expr_eval("bbaaaaaaatytytytytyty").
% false
exp_reg(X) :- exp_reg_a(X);exp_reg_b(X).

exp_reg_a(X) :- string(X),string_chars(X,E),exp_a(E).
exp_a([F|C]) :- F == 'a',cerr_a(C).
cerr_a([]).
cerr_a([F|C]) :- F == 't',[A|B] = C, A == 'y',cerr_a(B).
cerr_a([F|C]) :- F == 'a',cerr_a(C).


exp_reg_b(X) :- string(X),string_chars(X,E),exp_b(E).
exp_b([F|C]) :- F == 'b',cerr_b(C).
cerr_b([]).
cerr_b([F|C]) :- F == 't',[A|B] = C, A == 'y',cerr_b(B).
cerr_b([F|C]) :- F == 'b',cerr_b(C).