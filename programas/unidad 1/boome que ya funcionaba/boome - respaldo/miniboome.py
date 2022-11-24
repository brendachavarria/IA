import re
class MiniBoome:
	#Constructor
	def __init__(self):
		self.PosColumna = 0
		self.PosFila = 0
		self.TamMap = 8
		self.VirtualMapa = [[0 for t in range(self.TamMap)] for e in range(self.TamMap)]
		self.Instrucciones = []
		self.UltimaInstruccion = ""
		self.HuboError = False
		self.IndicadorInstruccion = 0
		self.Registro = []
		self.UltimoError = []
		self.R0 = 0
		self.R1 = 0
		self.R2 = 0
		self.R3 = 0
		self.SIzq = 1
		self.SDer = 0
		self.SArr = 1
		self.SAbj = 0

	#CargarInstrucciones
	def CargarInstrucciones(self,ListaInstrucciones):
		self.Instrucciones = ListaInstrucciones[::]

	def Detener(self):
		if self.HuboError == True:
			quit()

	def Sensores(self):
		#Sensores Arriba y Abajo
		if (self.PosFila == 0):
			self.SArr = 1
		elif (self.PosFila >=1 and self.PosFila<=(self.TamMap-2)):
			self.SArr = 0
			self.SAbj = 0
		elif (self.PosFila == (self.TamMap-1)):
			self.SAbj = 1

		#Sensores Izquierda y Derecha
		if (self.PosColumna == 0):
			self.SIzq = 1
		elif (self.PosColumna >=1 and self.PosColumna<=(self.TamMap-2)):
			self.SIzq = 0
			self.SDer = 0
		elif (self.PosColumna == (self.TamMap-1)):
			self.SDer = 1

	def Asigna(self, lon):
		R,igual,val =  lon
		if(R == "R0"):
			if(val == "SDer"):
				self.R0 = self.SDer
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SIzq"):
				self.R0 = self.SIzq
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SArr"):
				self.R0 = self.SArr
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SAbj"):
				self.R0 = self.SAbj
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R0"):
				self.R0 = self.R0
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R1"):
				self.R0 = self.R1
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R2"):
				self.R0 = self.R2
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R3"):
				self.R0 = self.R3
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			else:
				v = int(val)
				if(v >= 0 and v<= 255):
					self.R0 = v
					self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					self.UltimoError.append("Error 5 - Asignacion ")
					print("ERROR DE ASIGNACION SE ESPERABA UN SENSOR, REGISTRO O NUMERO")
					self.HuboError = True
		elif(R == "R1"):
			if(val == "SDer"):
				self.R1 = self.SDer
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SIzq"):
				self.R1 = self.SIzq
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SArr"):
				self.R1 = self.SArr
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SAbj"):
				self.R1 = self.SAbj
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R0"):
				self.R1 = self.R0
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R1"):
				self.R1 = self.R1
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R2"):
				self.R1 = self.R2
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R3"):
				self.R1 = self.R3
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			else:
				v = int(val)
				if(v >= 0 and v<= 255):
					self.R1 = v
					self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					self.UltimoError.append("Error 5 - Asignacion ")
					print("ERROR DE ASIGNACION SE ESPERABA UN SENSOR, REGISTRO O NUMERO")
					self.HuboError = True
		elif(R == "R2"):
			if(val == "SDer"):
				self.R2 = self.SDer
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SIzq"):
				self.R2 = self.SIzq
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SArr"):
				self.R2 = self.SArr
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SAbj"):
				self.R2 = self.SAbj
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R0"):
				self.R2 = self.R0
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R1"):
				self.R2 = self.R1
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R2"):
				self.R2 = self.R2
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R3"):
				self.R2 = self.R3
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			else:
				v = int(val)
				if(v >= 0 and v<= 255):
					self.R2 = v
					self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					self.UltimoError.append("Error 5 - Asignacion ")
					print("ERROR DE ASIGNACION SE ESPERABA UN SENSOR, REGISTRO O NUMERO")
					self.HuboError = True
		elif(R == "R3"):
			if(val == "SDer"):
				self.R3 = self.SDer
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SIzq"):
				self.R3 = self.SIzq
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SArr"):
				self.R3 = self.SArr
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "SAbj"):
				self.R3 = self.SAbj
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R0"):
				self.R3 = self.R0
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R1"):
				self.R3 = self.R1
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R2"):
				self.R3 = self.R2
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			elif(val == "R3"):
				self.R3 = self.R3
				self.IndicadorInstruccion = self.IndicadorInstruccion+1
			else:
				v = int(val)
				if(v >= 0 and v<= 255):
					self.R3 = v
					self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					self.UltimoError.append("Error 5 - Asignacion ")
					print("ERROR DE ASIGNACION SE ESPERABA UN SENSOR, REGISTRO O NUMERO")
					self.HuboError = True

	def Salta(self, lon):
		salto, valor1, valor2, numins = lon
		ni = int(numins)
		if(salto == "SaltaIgual"):
			if(valor1 == "R0"):
				if(valor2 == "R0"):
					if(self.R0 == self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R0 == self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R0 == self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R0 == self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R0 == v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R1"):
				if(valor2 == "R0"):
					if(self.R1 == self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R1 == self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R1 == self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R1 == self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R1 == v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R2"):
				if(valor2 == "R0"):
					if(self.R2 == self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R2 == self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R2 == self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R2 == self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R2 == v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R3"):
				if(valor2 == "R0"):
					if(self.R3 == self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R3 == self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R3 == self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R3 == self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R3 == v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			else:
				v1 = int(valor1)
				if(v1 >= 0 and v1<= 255):
					if(valor2 == "R0"):
						if(v1 == self.R0):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R1"):
						if(v1 == self.R1):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R2"):
						if(v1 == self.R2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R3"):
						if(v1 == self.R3):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						v2 = int(valor2)
						if(v2 >= 0 and v2<= 255):
							if(v1 == v2):
								self.IndicadorInstruccion = ni-1
							else:
								self.IndicadorInstruccion = self.IndicadorInstruccion+1
						else:
							self.UltimoError.append("Error Salto ")
							print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
							self.HuboError = True
				else:
					self.UltimoError.append("Error Salto ")
					print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
					self.HuboError = True
		elif(salto == "SaltaNIgual"):
			if(valor1 == "R0"):
				if(valor2 == "R0"):
					if(self.R0 != self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R0 != self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R0 != self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R0 != self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R0 != v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R1"):
				if(valor2 == "R0"):
					if(self.R1 == self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R1 != self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R1 != self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R1 != self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R1 != v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R2"):
				if(valor2 == "R0"):
					if(self.R2 != self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R2 != self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R2 != self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R2 != self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R2 != v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R3"):
				if(valor2 == "R0"):
					if(self.R3 != self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R3 != self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R3 != self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R3 != self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R3 != v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			else:
				v1 = int(valor1)
				if(v1 >= 0 and v1<= 255):
					if(valor2 == "R0"):
						if(v1 != self.R0):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R1"):
						if(v1 != self.R1):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R2"):
						if(v1 != self.R2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R3"):
						if(v1 != self.R3):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						v2 = int(valor2)
						if(v2 >= 0 and v2<= 255):
							if(v1 != v2):
								self.IndicadorInstruccion = ni-1
							else:
								self.IndicadorInstruccion = self.IndicadorInstruccion+1
						else:
							self.UltimoError.append("Error Salto ")
							print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
							self.HuboError = True
				else:
					self.UltimoError.append("Error Salto ")
					print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
					self.HuboError = True
		elif(salto == "SaltaMenor"):
			if(valor1 == "R0"):
				if(valor2 == "R0"):
					if(self.R0 < self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R0 < self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R0 < self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R0 < self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R0 < v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R1"):
				if(valor2 == "R0"):
					if(self.R1 < self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R1 < self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R1 < self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R1 < self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R1 < v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R2"):
				if(valor2 == "R0"):
					if(self.R2 < self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R2 < self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R2 < self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R2 < self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R2 < v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R3"):
				if(valor2 == "R0"):
					if(self.R3 < self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R3 < self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R3 < self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R3 < self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R3 < v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			else:
				v1 = int(valor1)
				if(v1 >= 0 and v1<= 255):
					if(valor2 == "R0"):
						if(v1 < self.R0):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R1"):
						if(v1 < self.R1):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R2"):
						if(v1 < self.R2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R3"):
						if(v1 < self.R3):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						v2 = int(valor2)
						if(v2 >= 0 and v2<= 255):
							if(v1 < v2):
								self.IndicadorInstruccion = ni-1
							else:
								self.IndicadorInstruccion = self.IndicadorInstruccion+1
						else:
							self.UltimoError.append("Error Salto ")
							print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
							self.HuboError = True
				else:
					self.UltimoError.append("Error Salto ")
					print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
					self.HuboError = True
		elif(salto == "SaltaMenorI"):
			if(valor1 == "R0"):
				if(valor2 == "R0"):
					if(self.R0 <= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R0 <= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R0 <= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R0 <= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R0 <= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R1"):
				if(valor2 == "R0"):
					if(self.R1 <= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R1 <= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R1 <= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R1 <= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R1 <= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R2"):
				if(valor2 == "R0"):
					if(self.R2 <= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R2 <= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R2 <= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R2 <= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R2 <= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R3"):
				if(valor2 == "R0"):
					if(self.R3 <= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R3 <= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R3 <= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R3 <= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R3 <= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			else:
				v1 = int(valor1)
				if(v1 >= 0 and v1<= 255):
					if(valor2 == "R0"):
						if(v1 <= self.R0):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R1"):
						if(v1 <= self.R1):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R2"):
						if(v1 <= self.R2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R3"):
						if(v1 <= self.R3):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						v2 = int(valor2)
						if(v2 >= 0 and v2<= 255):
							if(v1 <= v2):
								self.IndicadorInstruccion = ni-1
							else:
								self.IndicadorInstruccion = self.IndicadorInstruccion+1
						else:
							self.UltimoError.append("Error Salto ")
							print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
							self.HuboError = True
				else:
					self.UltimoError.append("Error Salto ")
					print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
					self.HuboError = True
		elif(salto == "SaltaMayor"):
			if(valor1 == "R0"):
				if(valor2 == "R0"):
					if(self.R0 > self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R0 > self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R0 > self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R0 > self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R0 > v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R1"):
				if(valor2 == "R0"):
					if(self.R1 > self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R1 > self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R1 > self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R1 > self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R1 > v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R2"):
				if(valor2 == "R0"):
					if(self.R2 > self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R2 > self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R2 > self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R2 > self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R2 > v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R3"):
				if(valor2 == "R0"):
					if(self.R3 > self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R3 > self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R3 > self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R3 > self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R3 > v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			else:
				v1 = int(valor1)
				if(v1 >= 0 and v1<= 255):
					if(valor2 == "R0"):
						if(v1 > self.R0):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R1"):
						if(v1 > self.R1):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R2"):
						if(v1 > self.R2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R3"):
						if(v1 > self.R3):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						v2 = int(valor2)
						if(v2 >= 0 and v2<= 255):
							if(v1 > v2):
								self.IndicadorInstruccion = ni-1
							else:
								self.IndicadorInstruccion = self.IndicadorInstruccion+1
						else:
							self.UltimoError.append("Error Salto ")
							print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
							self.HuboError = True
				else:
					self.UltimoError.append("Error Salto ")
					print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
					self.HuboError = True
		elif(salto == "SaltaMayorI"):
			if(valor1 == "R0"):
				if(valor2 == "R0"):
					if(self.R0 >= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R0 >= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R0 >= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R0 >= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R0 >= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R1"):
				if(valor2 == "R0"):
					if(self.R1 >= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R1 >= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R1 >= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R1 >= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R1 >= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R2"):
				if(valor2 == "R0"):
					if(self.R2 >= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R2 >= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R2 >= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R2 >= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R2 >= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			elif(valor1 == "R3"):
				if(valor2 == "R0"):
					if(self.R3 >= self.R0):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R1"):
					if(self.R3 >= self.R1):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R2"):
					if(self.R3 >= self.R2):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				elif(valor2 == "R3"):
					if(self.R3 >= self.R3):
						self.IndicadorInstruccion = ni-1
					else:
						self.IndicadorInstruccion = self.IndicadorInstruccion+1
				else:
					v2 = int(valor2)
					if(v2 >= 0 and v2<= 255):
						if(self.R3 >= v2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						self.UltimoError.append("Error Salto ")
						print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
						self.HuboError = True
			else:
				v1 = int(valor1)
				if(v1 >= 0 and v1<= 255):
					if(valor2 == "R0"):
						if(v1 >= self.R0):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R1"):
						if(v1 >= self.R1):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R2"):
						if(v1 >= self.R2):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					elif(valor2 == "R3"):
						if(v1 >= self.R3):
							self.IndicadorInstruccion = ni-1
						else:
							self.IndicadorInstruccion = self.IndicadorInstruccion+1
					else:
						v2 = int(valor2)
						if(v2 >= 0 and v2<= 255):
							if(v1 >= v2):
								self.IndicadorInstruccion = ni-1
							else:
								self.IndicadorInstruccion = self.IndicadorInstruccion+1
						else:
							self.UltimoError.append("Error Salto ")
							print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
							self.HuboError = True
				else:
					self.UltimoError.append("Error Salto ")
					print("ERROR DE SALTO SE ESPERABA UN REGISTRO O NUMERO")
					self.HuboError = True
		else:
			self.UltimoError.append("Error Salto")
			print("ERROR SE ESPERABA UN SALTO")
			self.HuboError = True

	def Paso(self):
		"""
		 ["Izq","Izq","Arr"]
		"""
		InsExec = self.Instrucciones[self.IndicadorInstruccion]
		if (InsExec == 'Arr'):
			if(self.SArr == 0):
				self.PosFila = self.PosFila-1
			else:
				self.UltimoError.append("Error 1 - Arr")
				print("ERROR NO PUEDES IR MAS ARRIBA")
				self.HuboError = True
		elif (InsExec == 'Abj'):
			if(self.SAbj == 0):
				self.PosFila = self.PosFila+1
			else:
				self.UltimoError.append("Error 2 - Abj")
				print("ERROR NO PUEDES IR MAS ABAJO")
				self.HuboError = True
		elif (InsExec == 'Izq'):
			if(self.SIzq == 0):
				self.PosColumna = self.PosColumna-1
			else:
				self.UltimoError.append("Error 3 - Izq")
				print("ERROR NO PUEDES IR MAS A LA IZQUIERDA")
				self.HuboError = True
		elif (InsExec == 'Der'):
			if(self.SDer == 0):
				self.PosColumna = self.PosColumna+1
			else:
				self.UltimoError.append("Error 4 - Der")
				print("ERROR NO PUEDES IR MAS A LA DERECHA")
				self.HuboError = True
		else:
			#Instruccion no valida
			self.HuboError = True
		self.IndicadorInstruccion = self.IndicadorInstruccion +1
		self.UltimaInstruccion = InsExec

	def ImprimirEstado(self):
		print("PosColumna: ",self.PosColumna)
		print("PosFila: ",self.PosFila)
		print("IndicadorInstruccion: ",self.IndicadorInstruccion)
		print("Instrucciones: ",self.Instrucciones)
		print("UltimaInstruccion: ",self.UltimaInstruccion)
		print("HuboError: ",self.HuboError)
		#print("Registro: ",self.Registro)
		print("Ultimo Error: ",self.UltimoError)
		VirM = self.VirtualMapa[:]
		VirM[self.PosFila][self.PosColumna] = 1
		print("VirtualMapa: ")
		for l in VirM:
			print(l)
		VirM[self.PosFila][self.PosColumna] = 0

if __name__ == "__main__":
	print("Este archivo no realiza nada mas que definir una clase")
else:
	print("Se importo miniboome")
