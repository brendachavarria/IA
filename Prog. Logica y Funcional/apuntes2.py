# middleware con parcializacion
import math
# middleware con funcion parcial
# funcion general
def distancia(x2,y2,x1,y1):
	return math.sqrt( ((x2-x1)**2)+((y2-y1)**2 ) )

def distanciaPuntosParcial(x2):
	print("X2",x2)
	print("T",type(x2))
	def distanciay2(y2):
		print("Y2",y2)
		print("T",type(y2))
		def distanciax1(x1):
			print("X1",x1)
			print("T",type(x1))
			def distanciay1(y1):
				print("Y1",y1)
				print("T",type(y1))
				return distancia(x2,y2,x1,y1)
			return distanciay1
		return distanciax1
	return distanciay2
# wrapper
def middleware_distancia(x2,y2,x1,y1):
	return distanciaPuntosParcial(x2)(y2)(x1)(y1)
print("Distancia",middleware_distancia(0,0,0,0))
##############################
##############################

def middleware(F):
	def parX2(x2):
		print("X2",x2)
		print("T",type(x2))
		def parY2(y2):
			print("y2",y2)
			print("T",type(y2))
			def parX1(x1):
				print("x1",x1)
				print("T",type(x1))
				def parY1(y1):
					print("y1",y1)
					print("T",type(y1))
					return F(x2,y2,x1,y1)
				return parY1
			return parX1
		return parY2
	return parX2

def mid_wrapper_distacia(F,x2,y2,x1,y1):
	return middleware(F)(x2)(y2)(x1)(y1)

# ejecutar el mid
print("Distancia",mid_wrapper_distacia(distancia,0,0,0,10))

# middleware con currificacion
def middle_dista(_F,_x2,_y2,_x1,_y1):
	def parF(F):
		def parX2(x2):
			print("X2",x2)
			print("T",type(x2))
			def parY2(y2):
				print("y2",y2)
				print("T",type(y2))
				def parX1(x1):
					print("x1",x1)
					print("T",type(x1))
					def parY1(y1):
						print("y1",y1)
						print("T",type(y1))
						return F(x2,y2,x1,y1)
					return parY1
				return parX1
			return parY2
		return parX2
	##################
	return parF(_F)(_x2)(_y2)(_x1)(_y1)
print("Distancia 2",middle_dista(distancia,0,0,0,10))
