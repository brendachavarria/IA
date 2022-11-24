"""
Currificacion
1) Todas las funciones sean de nivel superior
o inferior siempre, siempre recibe 1 y solo 1
parametro

2) La resolucion del objetivo de las funciones
se realiza entre toda la jerarquia

Parcializacion
1) Es que depende de funciones externas para
llevar a acabo su objetivo, es decir requiere
una funcion general ha menudo fuera de ella.

2) Solo es detener o pausar la ejecucion de una
funcion


"""
import math

# funcion general
def distancia(x2,y2,x1,y1):
	return math.sqrt( ((x2-x1)**2)+((y2-y1)**2 ) )

print("Distancia:",distancia(0,10,0,-10))
# Funcion parcial
def distanciaPuntos(x2,y2):
	def distp1(x1,y1):
		return distancia(x2,y2,x1,y1)
	return distp1

P = distanciaPuntos(0,10)
print("Parcial 1 Distancia:",P(0,-10))
# Funcion parcial 2
def distanciaPuntos2(x2):
	def distanciay2(y2):
		def distanciax1(x1):
			def distanciay1(y1):
				return distancia(x2,y2,x1,y1)
			return distanciay1
		return distanciax1
	return distanciay2

print("Parcial 2 Distancia:",distanciaPuntos2(0)(10)(0)(-10))
F = distanciaPuntos2(0)(10)(0)
print("Parcial 3: Dis -20",F(-20))
print("Parcial 4: Dis -10",F(-10))
print("Parcial 5: Dis 0",F(0))
###############################################
###############################################
"""
def distancia(x2,y2,x1,y1):
	return math.sqrt( ((x2-x1)**2)+((y2-y1)**2 ) )
"""

def distap1p2(x2):
	def distanx1(x1):
		Dx2 = (x2 - x1)**2
		def distany2(y2):
			def distany1(y1):
				Dy2 = (y2 - y1)**2
				return math.sqrt(Dx2+Dy2)
			return distany1
		return distany2
	return distanx1

R = distap1p2(0)(0)(10)(-10)
print("Cur:",R)

##### con verificacion de tipos
def dista_p1p2(x2):
	def comp(valor):
		return valor >= 0
	if not comp(x2):
		return False
	def distanx1(x1):
		if not comp(x1):
			return False
		Dx2 = (x2 - x1)**2
		def distany2(y2):
			if not comp(y2):
				return False
			def distany1(y1):
				if not comp(y1):
					return False
				Dy2 = (y2 - y1)**2
				return math.sqrt(Dx2+Dy2)
			return distany1
		return distany2
	return distanx1
R = dista_p1p2(0)(0)(10)(30)
print("Cur:",R)

x2 = int(input("Dame un valor para x2"))
R = dista_p1p2(x2)
#print(R)
if R:
	x1 = int(input("Dame un valor para x1"))
	R = R(x1)
... (9 líneas restantes)
