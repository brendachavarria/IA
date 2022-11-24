"""
	Siguiendo con la linea de las redes inalambricas


	Cuando interconectas dos lugares por antenas para transmitir
	datos e internet, hay algo que se debe tomar en cuenta si hay
	alguna obstruccion (casas, arboles, etc) se llama Zona de Fresnel

	https://es.wikipedia.org/wiki/Zona_de_Fresnel

	La Zona de Fresnel es importante porque es un indicador de que tan
	viable es hacer el enlace si hay una obstruccion

	Para calcular el radio de la primera zona de fresnel se usa la
	siguiente formula:

	Rad = 17.31 * sqrt( (Distancia1 * Distancia2) / (frecuencia * DistanciaTotal) )

	DistanciaTotal = Distancia1 + Distancia2

	Por ejemplo para el canal 6 de wifi (802.11b) la frecuencia central es de
	2.437 GHz si hicieramos un enlace de 2 km con una obstruccion a 1 km
	el calculo seria el siguiente:

	Rad = 17.31 * sqrt( (1000 * 1000) / (2437 * 2000) )

	Rad = 7.8406903990353305

	1. Realiza la funcion general
	2. Realiza un funcion parcial
	3. Realiza la funcion currificada
"""
#Funcion general
import math

def ZonaFresnel(Distancia1,Distancia2,frecuencia):
	return (17.31 * math.sqrt((Distancia1 * Distancia2) / (frecuencia * (Distancia1 + Distancia2))))

print("F U N C I O N   G E N E R A L   D E   Z O N A   D E   F R E S N E L")
print("Rad: ", ZonaFresnel(1000,1000,2437))

def ZonaFresnelParcial(Distancia1):
	def dis2(Distancia2):
		def fre(frecuencia):
			return ZonaFresnel(Distancia1,Distancia2,frecuencia)
		return fre
	return dis2
print("F U N C I O N   P A R C I A L   D E   Z O N A   D E   F R E S N E L")
v0 = int(input("Dame la distancia 1 en metros: "))
fp0 = ZonaFresnelParcial(v0)
v1 = int(input("Dame la distancia 2 en metros: "))
fp1 = fp0(v1)
v2 = int(input("Dame la frecuencia en GHz sin punto decimal: "))
Rad = fp1(v2)
print("Rad: ", Rad)

#Funcion currificada
def ZonaFresnelCurrificada(Distancia1):
	def dis2(Distancia2):
		DistanciaTotal = Distancia1 + Distancia2
		temp = Distancia1 * Distancia2
		def frec(frecuencia):
			return (17.31 * math.sqrt(temp / (frecuencia * DistanciaTotal)))
		return frec
	return dis2
print("F U N C I O N   C U R R I F I C A D A   D E   Z O N A   D E   F R E S N E L")
v0 = int(input("Dame la distancia 1 en metros: "))
fp0 = ZonaFresnelCurrificada(v0)
v1 = int(input("Dame la distancia 2 en metros: "))
fp1 = fp0(v1)
v2 = int(input("Dame la frecuencia en GHz sin punto decimal: "))
Rad = fp1(v2)
print("Rad: ", Rad)
