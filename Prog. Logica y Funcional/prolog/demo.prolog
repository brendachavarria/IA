%HECHOS
esta(ana,cdmx).
esta(cdmx,mexico).
esta(pedro,gto).
esta(gto,mexico).
%REGLA
esta(X,Y) :- esta(X,B),esta(B,Y).
