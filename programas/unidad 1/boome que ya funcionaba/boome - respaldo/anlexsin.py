"""
	Este es el analizador lexico para el nuevo lenguaje de boome
"""
import simbolos
import re

def analizador_lexico_sintactico(codigo_lineas):
	##########################################
	def identificador_token(posbtoken):

		# Paso 1 verificar los terminales fijos
		tf = simbolos.SIMBOL['fijos']
		for e in tf:
			R = re.match(e+'$',posbtoken)
			if R:
				return True
		# Paso 2 si no es tf puede que sea tm
		tm = simbolos.SIMBOL['meta']
		for e in tm:
			R = re.match(e+'$',posbtoken)
			if R:
				return True
		return False

	def tokenizador(linea):
		tokens = []
		# Separando por espacios
		noespacio = linea.strip().split(" ")
		for ptoken in noespacio:
			R = identificador_token(ptoken)
			if not R:
				return [False,ptoken]
			tokens.append(ptoken)
		return [True,tokens]

	def indentificador_error(etoken):
		# Token sin espacio no pudo identificar el token
		################################
		tf = simbolos.SIMBOL['fijos']
		for t in tf:
			R = re.search(t,etoken)
			if R:
				return "Error de sintaxis: quizo decir: "+t+ " o faltan espacios en el codigo"
		################################
		tm = simbolos.SIMBOL['meta']
		for t in tm:
			R = re.search(t,etoken)
			if R:
				return "Error de sintaxis: se detecto un secuencia pero no cumplio con los requisitos"

		return "Error de Sintaxis no pude reconocer: "+etoken
	##########################################
	Lineas = [linea.strip() for linea in codigo_lineas]
	lexemas_code = []
	for l in Lineas:
		R,T = tokenizador(l)
		if not R:
			msg = f"Error cerca de {l} \n {indentificador_error(T)}"
			return [False,msg]
		lexemas_code.append(T)
	return [True,lexemas_code]
