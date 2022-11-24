"""
	Seccion de no terminales
"""
def ebyte(lexema):
	try:
		N = int(lexema)
		return [True,N]
	except ValueError:
		return [False,f"'{lexema}' no es un numero"]

def ereg(lexema):
	regs = ["R0","R1","R2","R3"]
	if lexema in regs:
		return [True,lexema]
	return [False,f"'{lexema}' no es un registro"]

def emov(lexema):
	movs = ["Izq","Der","Arr","Abj"]
	if lexema in movs:
		return [True,lexema]
	return [False,f"'{lexema}' no es un movimiento"]

def esalto(lexema):
	saltos = [
		"SaltaIgual","SaltaNIgual",
		"SaltaMenor","SaltaMayor",
		"SaltaMenorI","SaltaMayorI"
	]
	if lexema in saltos:
		return [True,lexema]
	return [False,f"'{lexema}' no es un salto"]

def esen(lexema):
	sensores = [
		"SArr","SAbj","SIzq","SDer"
	]
	if lexema in sensores:
		return [True,lexema]
	return [False,f"'{lexema}' no es un sensorS"]

# Gramatica

"""

sasigna(R,"=",S) :- ereg(R), esen(S).
sasigna(R,"=",S) :- ereg(R), ebyte(S).
sasigna(R,"=",S) :- ereg(R), ereg(S).

"""

def sasigna(L):
	if L and (len(L) != 3):
		return [False,f"{L} no es una sentencia de asignacion"]

	Reg,Igual,Val = L

	if "=" != Igual:
		return [False,f"{L} no es una sentencia de asignacion"]

	Z = ereg(Reg)
	if not Z[0]:
		return [False,f"{Reg} de {L} no es un registro"]

	U,V,W = esen(Val),ebyte(Val),ereg(Val)

	if U[0]:
		return [True,{"Instruccion":"Asignacion","Tipo":0,"Orden": L}]
	if V[0]:
		return [True,{"Instruccion":"Asignacion","Tipo":1,"Orden": [Reg,Igual,V[1]]}]
	if W[0]:
		return [True,{"Instruccion":"Asignacion","Tipo":2,"Orden": L}]

	return [False,f"{L} no es una sentencia de asignacion"]

"""

ssalto(A,B,C,D) :- esal(A),ereg(B),ebyte(C),ebyte(D).
ssalto(A,B,C,D) :- esal(A),ebyte(B),ereg(C),ebyte(D).
ssalto(A,B,C,D) :- esal(A),ereg(B),ereg(C),ebyte(D).
ssalto(A,B,C,D) :- esal(A),ebyte(B),ebyte(C),ebyte(D).

"""

def ssalto(L):
	if L and (len(L) != 4):
		return [False,f"{L} no es una sentencia de salto"]

	vSal,Val0,Val1,vbyte = L

	rSal = esalto(vSal)
	if not rSal[0]:
		return [False,f"{rSal} de {L} no es un registro"]

	rbyte = ebyte(vbyte)
	if not rbyte[0]:
		return [False,f"{rbyte} de {L} no es un byte valido"]

	rRegV0 = ereg(Val0)
	rByte0 = ebyte(Val0)
	rRegV1 = ereg(Val1)
	rByte1 = ebyte(Val1)
	# esal(A),ereg(B),ereg(C),ebyte(D).
	if rRegV0[0] and rRegV1[0]:
		M = [vSal,Val0,Val1,rbyte[1]]
		return [True,{"Instruccion":"Salto","Tipo":0,"Orden": M}]

	# esal(A),ereg(B),ebyte(C),ebyte(D).
	if rRegV0[0] and rByte1[0]:
		M = [vSal,Val0,rByte1[1],rbyte[1]]
		return [True,{"Instruccion":"Salto","Tipo":1,"Orden": M}]

	# esal(A),ebyte(B),ereg(C),ebyte(D).
	if rByte0[0] and rRegV1[0]:
		M = [vSal,rByte0[1],Val1,rbyte[1]]
		return [True,{"Instruccion":"Salto","Tipo":2,"Orden": M}]

	# esal(A),ebyte(B),ebyte(C),ebyte(D).
	if rByte0[0] and rByte1[0]:
		M = [vSal,rByte0[1],rByte1[1],rbyte[1]]
		return [True,{"Instruccion":"Salto","Tipo":3,"Orden": M}]

	return [False,f"{L} no es una sentencia de salto"]

"""

smov(A) :- emov(A).

"""

def smov(L):
	if L and (len(L) != 1):
		return [False,f"{L} no es una sentencia de movimiento"]
	rmov = emov(L[0])
	if rmov[0]:
		return [True,{"Instruccion":"Mov","Orden": L}]
	return [False,f"{L} no es una sentencia de movimiento"]

"""

Sentencia

"""

def sentencias(L):
	if not L:
		return [False,f"{L} no es una sentencia de movimiento"]
	lng = len(L)

	if lng == 1:
		return smov(L)
	if lng == 3:
		return sasigna(L)
	if lng == 4:
		return ssalto(L)
	return [False,f"{L} no es una sentencia valida"]
