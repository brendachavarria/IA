"""
	En la gramatica de un lenguaje de programacion
	se solicita la validacion de una sentencia
	con la siguiente gramatica

	<MateExpr> ::= <Operando> <OperMat> <Operando>
	Donde
	<Operando> ::= <IntByte> | <Registros>
	<OperMat> ::=  + | - | * | /
	<Registros> ::= RInt0 | RInt1 | RInt2 | RInt3
	y
	<IntByte> ::= 0..255 | 0x00..0xFF

	por lo tanto las siguientes sentecias son validas:

	RInt0 + RInt0
	RInt0 - 10
	RInt0 * 2

	pero estas no:

	RInt4 /  2
	RInt0 /  /
	RInt0 RInt1  +

	defina un jerarquia de funciones que validen dicha
	sentecia.

"""

def MateExpr(CadEvaluar):
	import re
	def Operando(ReNum):
		"""print("Entro a Operando")"""
		def Registros(ReNum):
			"""print("Entro a Registros")"""
			regi = re.compile(r'(RInt0|RInt1|RInt2|RInt3)')
			if regi.search(str(ReNum)):
				"""print("true")"""
				return True
			else:
				return False

		def IntByte(ReNum):
			"""print("Entro a IntByte decimal")"""
			numero = re.compile(r'^([0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9]|1[0-9][0-9]|2[0-5][0-5])$')
			if numero.search(str(ReNum)):
				"""print("true")"""
				return True
			else:
				"""print("Entro a IntByte hexadecimal")"""
				if re.search('0[x][0-9A-F]{2}',str(ReNum)):
					"""print("true")"""
					return True
				else:
					return False

		if 'R' in ReNum:
			"""print("Entro a if para ver si es un registro o no")"""
			return Registros(ReNum)
		else:
			return IntByte(ReNum)

	def OperMat(Oper):
		"""print("Entro a OperMat")"""
		if re.search('\\+|-|\\*|/',str(Oper)):
			"""print("true")"""
			return True
		else:
			return False

	LTokens = CadEvaluar.split(' ')

	if len(LTokens) !=3:
		return False

	ReNum1,Ope,Renum2 = LTokens

	if not (Operando(ReNum1)):
		return False
	else:
		if not (OperMat(Ope)):
			return False
		else:
			if not (Operando(Renum2)):
				return False
			else:
				return True

Expre = input("Dame un expresion de registro valida \n")
if MateExpr(str(Expre)):
	print("Es valida")
else:
	print("No es valida")
