numoct(SN) :- number_string(N,SN), N>=0, N=<7.

michmod(A,B,C) :- numoct(A), numoct(B), numoct(C).