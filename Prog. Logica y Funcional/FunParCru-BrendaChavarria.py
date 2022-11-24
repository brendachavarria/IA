"""

Comunicaciones como wifi necesitan antenas, el estandar 802.11b

Este establece la frecuencia de 2.4 Ghz como base para la comunicaciÃ³n

Existen multiples tipos de antenas, una de las faciles y eficientes es
la antena de un 1/4 de onda con plano de tierra.

https://m0ukd.com/calculators/quarter-wave-ground-plane-antenna-calculator/

Esta consta de un Monopolo (alambre vertical)
y Radiales ( Como los radios es una bicibleta)

Para calcular el monopolo se usa esta formula:

######## MonoPolo #######
MonoPolo = (LongitudDeOnda / 4) * FactorVelocidadConductor

######### Radiles #######
Radiales = (LongitudDeOnda / 4) * FactorRadial * FactorVelocidadConductor


1. Realizar un funcion general que permita apartir de los datos de
LongitudDeOnda, FactorRadial y FactorVelocidadConductor calcular
el monopolo y Radiales  al mismo tiempo, cumpliendo el siguiente prototipo

def AntenaPlanoTierra(LongitudDeOnda,FactorRadial,FactorVelocidadConductor):
	pass


Ejemplo:

# LongitudDeOnda => 0.1243 metros, Es la longitud de onda del canal 1 de wifi
# FactorRadial => 1.12, Es decir 12% por encima de la unidad es el mas comun
# FactorVelocidadConductor => 0.95, Es decir, es la conductividad mas comun de los alambres de cobre

MonoPolo, Radiales = AntenaPlanoTierra(0.1243,1.12,0.95)

print("Monopolo en metros ",MonoPolo )
# Monopolo en metros 0.0295
print("Radiales",Radiales )
# Radiales en metros 0.0330


2. Realiza una funcion parcial de AntenaPlanoTierra
2. Currifica la funcion AntenaPlanoTierra

"""

#Funcion general
def AntenaPlanoTierra(LongitudDeOnda,FactorRadial,FactorVelocidadConductor):
	tem=(LongitudDeOnda/4)*FactorVelocidadConductor
	return ([tem,(tem*FactorRadial)])

MonoPolo, Radiales = AntenaPlanoTierra(0.1243,1.12,0.95)
print(" F U N C I O N   G E N E R A L   D E   A n t e n a P l a n o T i e r r a ")
print("Monopolo en metros ",MonoPolo )
print("Radiales",Radiales )

#Funcion parcial
def ParcialAntenaPlanoTierra(LongitudDeOnda):
	def pfacra(FactorRadial):
		def pfacveco(FactorVelocidadConductor):
			return AntenaPlanoTierra(LongitudDeOnda,FactorRadial,FactorVelocidadConductor)
		return pfacveco
	return pfacra
print(" F U N C I O N   P A R C I A L   A n t e n a P l a n o T i e r r a ")
v0=float(input("Dame el valor de la Longitud de Onda: "))
fp0=ParcialAntenaPlanoTierra(v0)
v1=float(input("Dame el valor del Factor Radial: "))
fp1=fp0(v1)
v2=float(input("Dame el valor del Factor Velocidad Conductor: "))
MonoPolo, Radiales = fp1(v2)
print("Monopolo en metros ",MonoPolo )
print("Radiales",Radiales )

#Funcion currificada
def CurrificadaAntenaPlanoTierra(LongitudDeOnda):
	tem1 = LongitudDeOnda / 4
	def pfacveco(FactorVelocidadConductor):
		tem2 = tem1 * FactorVelocidadConductor
		def pfacra(FactorRadial):
			return ([tem2,(tem2 * FactorRadial)])
		return pfacra
	return pfacveco

print(" F U N C I O N   C U R R I F I C A D A   A n t e n a P l a n o T i e r r a ")
v0=float(input("Dame el valor de la Longitud de Onda: "))
fp0=CurrificadaAntenaPlanoTierra(v0)
v2=float(input("Dame el valor del Factor Velocidad Conductor: "))
fp1=fp0(v2)
v1=float(input("Dame el valor del Factor Radial: "))
MonoPolo, Radiales = fp1(v1)
print("Monopolo en metros ",MonoPolo)
print("Radiales",Radiales )
