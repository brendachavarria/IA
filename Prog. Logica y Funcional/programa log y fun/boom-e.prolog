reg("R0").
reg("R1").
reg("R2").
reg("R3").
sen("SI").
sen("SD").
sen("SA").
sen("SB").
mov("A").
mov("V").
mov("<").
mov(">").
sal("SaltaIgual").
sal("SaltaMen").
sal("SaltaMay").
sal("SaltaMenI").
sal("SaltaMayI").
sal("SaltaNIgual").


>
R0=SD #sentencia de asignacion
SaltaIgual R0 0 1 #sentencia de salto
<
R1=SI #sentencia de asignacion
SaltaIgual R0 0 4 #
SaltaIgual
###############################
<sentenciadeasignacion> ::= <erg> = <esen>
<sentenciadeasignacion> ::= <erg> = <ebyte>
<sentenciadeasignacion> ::= <erg> = <ereg>

<sentenciadesalto> ::= <esal> <ereg><ebyte><ebyte>
<sentenciadesalto> ::= <esal> <ebyte><ereg><ebyte>
<sentenciadesalto> ::= <esal> <ereg><ereg><ebyte>
<sentenciadesalto> ::= <esal> <ebyte><ebyte><ebyte>

<sentenciademovimiento> ::= <emov>

<sentencias> ::= <sentenciadesalto>
<sentencias> ::= <sentenciadeasignacion>
<sentencias> ::= <sentenciademovimiento>

<programa> ::=<sentencias>
<programa> ::=<sentencias><programa>

Broadcast IPV6
FF:FF:FF:FF:FF:FF
