/* Estos son los hechos*/
pertenece(diego,sjr).
pertenece(brenda,azcapotzalco).
pertenece(sjr,qro).
pertenece(azcapotzalco,cdmx).
pertenece(qro,mexico).
pertenece(cdmx,mexico).

estado_persona(PER,EDO) :-
  pertenece(PER,MUN), pertenece(MUN,EDO).

pais_persona(PER,PAIS) :-
  estado_persona(PER,EDO), pertenece(EDO,PAIS).
