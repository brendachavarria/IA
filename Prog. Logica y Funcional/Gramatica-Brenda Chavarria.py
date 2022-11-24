def MateExpr(TextoEvaluar):
	import re
	print("LOGITUD")
	print(len(TextoEvaluar))

	def Operando(Lista):
		print("Entro Operando Principal 1")
		print(len(Lista))
		print(Lista)

		def IntByteDec(Cadena):
			print("Entro IntByteDec")
			print(len(Cadena))
			numero = 0
			numero = numero + int(Cadena.pop())
			num = re.compile(r'^([1-9])$')
			resul = num.search(str(numero))
			if resul:
			    return True
			else:
			    return False

		def IntByteHex(Cadena):
			if re.search('0[x][0-9A-F]{2}',str(Cadena)):
			    return True
			else:
				return False

		def Registros(Cadena):
			print("Entro Registros")
			if re.search('RInt0|RInt1|RInt2|RInt3',str(Cadena)):
				print("Entro condicion Registros")
				MateExpr(Cadena[1:])
				return True
			else:
				return False

		if not Registros(Lista):
			return False
		else:
			if 'x' in Lista:
				print("Entro Hexadecimal")
				return IntByteHex(Lista)
			elif IntByteDec(Lista):
				print(len(Lista))
				print("Entro Decimal 04")
				return True
			else:
				return Operando2(Lista)

	def OperMat(Op):
		print("Entro OperMat")
		print(len(Op))
		print(Op)
		if re.search('\\+|-|\\*|/',str(Op)):
			print("EX")
			MateExpr(Op[1:])
			return True
		else:
			return False

	def Operando2(Lista):
		print("Entro Operando Principal 2")
		print(len(Lista))
		print(Lista)

		def IntByteDec(Cadena):
			print("Entro IntByteDec")
			reg = "([1-9])"
			if (re.search(reg, str(Cadena))):
				print("Entro IntByteDec (255)")
				return True
			return False

		def IntByteHex(Cadena):
			if re.search('0[x][0-9A-F]{2}',str(Cadena)):
			    return True
			else:
				return False

		def Registros(Cadena):
			print("Entro Registros")
			if re.search('RInt0|RInt1|RInt2|RInt3',str(Cadena)):
				print("Entro condicion Registros")
				MateExpr(Cadena[1:])
				return True
			else:
				if len(Cadena) > 1:
					if 'x' in Lista:
						print("Entro Hexadecimal")
						return IntByteHex(Lista)
					else:
						print("Entro Decimal")
						return IntByteDec(Lista)
					return False
				return False
		if not Registros(Lista):
			return False
		else:
			if 'x' in Lista:
				print("Entro Hexadecimal")
				return IntByteHex(Lista)
			elif len(Lista) != 1:
				print("Entro Decimal")
				return IntByteDec(Lista)
			return False


	if len(TextoEvaluar) == 2:
		OperMat(TextoEvaluar)
	elif len(TextoEvaluar) == 3:
		return Operando(TextoEvaluar)

	if len(TextoEvaluar) == 1:
		return Operando(TextoEvaluar)

Expresion = input("Dame un expresion de registro valida \n")
LTokens = Expresion.split(' ')
if MateExpr(LTokens):
	print("Es valida")
else:
	print("No es valida")
