"""
	En la gramatica de un lenguaje de programacion
	se solicita la validacion de una sentencia
	con la siguiente gramatica

	<ExprRegistro> ::= <Registros> = <IntByte>
	Donde
	<Registros> ::= RInt0 | RInt1 | RInt2 | RInt3
	y
	<IntByte> ::= 0..255 | 0x00..0xFF

	por lo tanto las siguientes sentecias son validas:

	RInt0 = 0
	RInt0 = 0xF1
	RInt0 = 50
	RInt1 = 255
	RInt2 = 0xFF

	pero estas no:


	RInt4 = 0xFF
	RInt0 = 0xFFF
	RInt1 = 256

	defina un jerarquia de funciones que validen dicha
	sentecia.


"""

def ExprRegistro(CadEvaluar):
	import re
	def Registros(Cad):
		if re.search('RInt0|RInt1|RInt2|RInt3',Cad):
			return True
		return False

	def intByteDec(Cad):
		if re.search('(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9]){1}',Cad):
			return True
		return False

	def intByteHex(Cad):
		if re.search('0[x][0-9A-F]{2}',Cad):
			return True
		return False

	LTokens = CadEvaluar.split(' ')


	if len(LTokens) != 3:
		return False

	Registro,Igual,IntByte = LTokens

	if not (Registros(Registro)):
		return False

	if Igual != '=':
		return False

	if 'x' in IntByte:
		return intByteHex(IntByte)
	else:
		return intByteDec(IntByte)

Expresion = input("Dame un expresion de registro valida \n")
if ExprRegistro(Expresion):
	print("Es valida")
else:
	print("No es valida")
