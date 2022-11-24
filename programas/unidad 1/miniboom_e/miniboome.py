class MiniBoome:
	#Constructor
	def __init__(self):
		self.PosColumna = 0
		self.PosFila = 0
		self.VirtualMapa = [[0 for t in range(8)] for e in range(8)]
		self.Instrucciones = []
		self.UltimaInstruccion = ""
		self.HuboError = False
		self.IndicadorInstruccion = 0
		self.Registro = []
		self.UltimoError = []
		self.R0 = 0
		self.R1 = 7
		self.R2 = 0
		self.R3 = 7
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

	def Paso(self):
		"""
		 ["Izq","Izq","Arr"]
		"""
		# Obtener la instruccion a ejecutar
		InsExec = self.Instrucciones[self.IndicadorInstruccion]
		if (InsExec == 'Arr'):
			self.Sensores
			f = self.PosFila
			if f > self.R0:
				self.PosFila = self.PosFila-1
				self.Registro.append("Arr")
			else:
				self.UltimoError.append("Error 1 - Arr")
				print("ERROR NO PUEDES IR MAS ARRIBA")
				self.HuboError = True
		elif (InsExec == 'Abj'):
			f = self.PosFila
			if f < self.R1:
				self.PosFila = self.PosFila+1
				self.Registro.append("Abj")
			else:
				self.UltimoError.append("Error 2 - Abj")
				print("ERROR NO PUEDES IR MAS ABAJO")
				self.HuboError = True
		elif (InsExec == 'Izq'):
			c = self.PosColumna
			if c > self.R2:
				self.PosColumna = self.PosColumna-1
				self.Registro.append("Izq")
			else:
				self.UltimoError.append("Error 3 - Izq")
				print("ERROR NO PUEDES IR MAS A LA IZQUIERDA")
				self.HuboError = True
		elif (InsExec == 'Der'):
			c = self.PosColumna
			if c < self.R3:
				self.PosColumna = self.PosColumna+1
				self.Registro.append("Der")
			else:
				self.UltimoError.append("Error 4 - Der")
				print("ERROR NO PUEDES IR MAS A LA DERECHA")
				self.HuboError = True
		else:
			#Instruccion no valida
			self.HuboError = True
			self.UltimoError.append("Error 5 - Instruccion no valida")
		self.IndicadorInstruccion = self.IndicadorInstruccion +1
		self.UltimaInstruccion = InsExec

	def ImprimirEstado(self):
		print("PosColumna: ",self.PosColumna)
		print("PosFila: ",self.PosFila)
		print("IndicadorInstruccion: ",self.IndicadorInstruccion)
		print("Instrucciones: ",self.Instrucciones)
		print("UltimaInstruccion: ",self.UltimaInstruccion)
		print("HuboError: ",self.HuboError)
		print("Registro: ",self.Registro)
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
