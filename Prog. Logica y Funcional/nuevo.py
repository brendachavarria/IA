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
def MateExpr(TextoEvaluar):
	import re
	def IntByteDec4(num):
		#print(num)
		#print("Entro IntByteDec 4")
		if 'x' in num:
			#print("Entro condicion4 IntByteDec4 Hexadecimal 4")
			if re.search('0[x][0-9A-F]{2}',str(num)):
			    return True
			else:
				return False
		else:
			numero = re.compile(r'^([0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9]|1[0-9][0-9]|2[0-5][0-5])$')
			resul = numero.search(str(num))
			if (resul):
				#print("Entro IntByteDec4 condicion 4")
				return True
			else :
				return False
			return False
	def OperMat3(Lista):
		#print("Entro OperMat 3")
		#print(Lista)
		if re.search('\\+|-|\\*|/',str(Lista)):
			#print("EX 2")
			return IntByteDec4(IntByte)
		else:
			return False
	def Registros5(reg):
		#print("Entro Registros 5")
		#print(reg)
		num = re.compile(r'(RInt0|RInt1|RInt2|RInt3)')
		resul = num.search(str(reg))
		if resul:
			#print("Entro condicion Registros 5")
			return True
		else:
			return OperMat3(Operador)
	def Registros4(reg):
		#print("Entro Registros 4")
		#print(reg)
		num = re.compile(r'(RInt0|RInt1|RInt2|RInt3)')
		resul = num.search(str(reg))
		if resul:
			print("Entro condicion Registros 4")
			return True
		else:
			return False
	def IntByteDec3(num):
		#print(num)
		#print("Entro IntByteDec 3")
		if 'x' in num:
			if re.search('0[x][0-9A-F]{2}',str(Cadena)):
			    return True
			else:
				return False
		else:
			numero = re.compile(r'^([0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9]|1[0-9][0-9]|2[0-5][0-5])$')
			resul = numero.search(str(num))
			if (resul):
				#print("Entro IntByteDec condicion 3")
				return True
			else :
				return False
			return False
	def Registros3(reg):
		#print("Entro Registros 3")
		#print(reg)
		num = re.compile(r'(RInt0|RInt1|RInt2|RInt3)')
		resul = num.search(str(reg))
		if resul:
			#print("Entro condicion Registros 3")
			return True
		else:
			return IntByteDec3(IntByte)
	def IntByteDec2(num):
		#print(num)
		#print("Entro IntByteDec 2")
		if 'x' in num:
			if re.search('0[x][0-9A-F]{2}',str(num)):
				#print("IntByteDec2 HExadecimal 2")
				return True
			else:
				return False
		else:
			numero = re.compile(r'^([0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9]|1[0-9][0-9]|2[0-5][0-5])$')
			resul = numero.search(str(num))
			if (resul):
				#print("Entro IntByteDec condicion 3")
				return True
			else :
				return Registros4(IntByte)
	def OperMat2(Lista):
		#print("Entro OperMat 2")
		#print(Lista)
		if re.search('\\+|-|\\*|/',str(Lista)):
			#print("EX 2")
			return Registros3(IntByte)
		else:
			return False
	def OperMat(Lista):
		#print("Entro OperMat")
		#print(Lista)
		if re.search('\\+|-|\\*|/',str(Lista)):
			#print("EX")
			return IntByteDec2(IntByte)
		else:
			return False
	def Registros2(reg):
		#print("Entro Registros 2")
		#print(reg)
		num = re.compile(r'(RInt0|RInt1|RInt2|RInt3)')
		resul = num.search(str(reg))
		if resul:
			#print("Entro condicion Registros 2")
			return True
		else:
			return False
	def IntByteDec(num):
		#print(num)
		#print("Entro IntByteDec")
		if 'x' in num:
			if re.search('0[x][0-9A-F]{2}',str(num)):
				#print("Entro IntByteDec Hexadecimal")
				return Registros5(IntByte)
			else:
				return False
		else:
			numero = re.compile(r'^([0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9]|1[0-9][0-9]|2[0-5][0-5])$')
			resul = numero.search(str(num))
			if (resul):
				#print("Entro IntByteDec condicion 3")
				return OperMat2(Operador)
			else :
				return Registros2(num)
	def Registros(reg):
		#print("Entro Registros")
		#print(reg)
		num = re.compile(r'(RInt0|RInt1|RInt2|RInt3)')
		resul = num.search(str(reg))
		if resul:
			#print("Entro condicion Registros")
			return OperMat(Operador)
		else:
			if IntByteDec(reg):
				return True
			else:
				return False
			return False

	LTokens = TextoEvaluar.split(' ')
	if len(LTokens) != 3:
		return False
	Registro,Operador,IntByte=LTokens
	#,,
	if not (Registros(Registro)):
		return False
	else:
		return True
Expresion = input("Dame un expresion de registro valida \n")
if MateExpr(Expresion):
	print("Es valida")
else:
	print("No es valida")
