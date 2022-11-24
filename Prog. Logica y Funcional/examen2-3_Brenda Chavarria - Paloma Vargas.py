################################# EXAMEN 2 - 3 ######################################
#                                    HECHO POR:
#                   BRENDA LIZBETH CHAVARRIA RAMIREZ 18590219
#                   PALOMA GUADALUPE VARGAS ALEGRIA  17590099

"""
	Ley de la Gravitacion universal

	F = (G*(m1*m2)) / d**2

	Aceleracion por Gravedad en diferentes lugares del sistema solar

	Luna 1.62 m/s²
	Marte 3.711 m/s²
	Europa (Satelite de jupiter) 1.315 m/s²
	Encélado 0.113 m/s²
	Titan 1.352 m/s²
	ISS 90% de la tierra

	Para cada reactivo del examen elabora un codigo que compruebe dicho
	reactivo.

	1) Elabora 6 wrappers de la ley de la gravitacion universal
	para calcular la fuerza, entre dos objetos
	en una distancia determinada, correspondientes a los 6
	lugares del sistema solar presentados anteriormente.
	(5 puntos por wrapper)

	2) Elabora un closure que dependiendo el nombre de astro, te retorne
	la funcion con la gravedad adecuada
	(30 puntos)

	3) Elabora una parcialización de una función que resuelva la ley de
	la gravitacion universal.
	(20 puntos)

	4) Currifica la función de la ley de la gravitación universal,
	asegurense de resolver la mayor cantidad operaciones posibles antes
	de retornar el resultado.
	(30 puntos)
"""

"************************************ 1) WRAPPERS *********************************************"
def leyGravitacionalLuna(m1,m2):
	F= (1.62*(m1*m2))/1**2
	return F

print("FUNCION LEY GRAVITACIONAL EN LA LUNA")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
F = leyGravitacionalLuna(m1,m2)
print("La fuerza entre estos dos objetos a una distancia de 100 metros en la luna es: ", F)


def leyGravitacionalMarte(m1,m2):
	F= (3.711*(m1*m2))/1**2
	return F

print("FUNCION LEY GRAVITACIONAL EN MARTE")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
F = leyGravitacionalMarte(m1,m2)
print("La fuerza entre estos dos objetos a una distancia de 200 metros en Marte es: ", F)


def leyGravitacionalEuropa(m1,m2):
	F= (1.315*(m1*m2))/1**2
	return F

print("FUNCION LEY GRAVITACIONAL EN EUROPA (Satelite de jupiter)")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
F = leyGravitacionalEuropa(m1,m2)
print("La fuerza entre estos dos objetos a una distancia de 100 metros en Europa (Satelite de jupiter) es: ", F)


def leyGravitacionalEncelado(m1,m2):
	F= (0.113*(m1*m2))/1**2
	return F

print("FUNCION LEY GRAVITACIONAL EN ENCELADO")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
F = leyGravitacionalEncelado(m1,m2)
print("La fuerza entre estos dos objetos a una distancia de 200 metros en Encelado es: ", F)


def leyGravitacionalTitan(m1,m2):
	F= (1.352*(m1*m2))/1**2
	return F

print("FUNCION LEY GRAVITACIONAL EN TITAN)")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
F = leyGravitacionalTitan(m1,m2)
print("La fuerza entre estos dos objetos a una distancia de 100 metros en Titan es: ", F)


def leyGravitacionalISS(m1,m2):
	F= (8.829*(m1*m2))/1**2
	return F

print("FUNCION LEY GRAVITACIONAL EN ISS")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
F = leyGravitacionalISS(m1,m2)
print("La fuerza entre estos dos objetos a una distancia de 200 metros en ISS es: ", F)


"************************************ 2) CLOUSURE *********************************************"

def CloLeygavitacional(m1,m2,d,lu):
	def Luna(m1,m2,d):
		F= (1.62*(m1*m2))/d**2
		return ([F,"la Luna"])
	def Marte(m1,m2,d):
		F= (3.711*(m1*m2))/d**2
		return ([F,"Marte"])
	def Europa(m1,m2,d):
		F= (1.315*(m1*m2))/d**2
		return ([F,"Europa(satelite de jupiter)"])
	def Encelado(m1,m2,d):
		F= (0.113*(m1*m2))/d**2
		return ([F,"Encelado"])
	def Titan(m1,m2,d):
		F= (1.352*(m1*m2))/d**2
		return ([F,"Titan"])
	def Iss(m1,m2,d):
		F= (8.829*(m1*m2))/d**2
		return ([F,"ISS"])
	if (lu == 1):
		return Luna(m1,m2,d)
	if (lu == 2):
		return Marte(m1,m2,d)
	if (lu == 3):
		return Europa(m1,m2,d)
	if (lu == 4):
		return Encelado(m1,m2,d)
	if (lu == 5):
		return Titan(m1,m2,d)
	if (lu == 6):
		return Iss(m1,m2,d)

print("CLOSURE LEY GRAVITACIONAL UNIVERSAL")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
m2 = float(input("Dame el peso del objeto 2 en kg: "))
d = float(input("Dame la distancia entre ambos objetos en metros: "))
lu = int(input("Lugares:  1.Luna 2.Marte 3.Europa(satelite de jupiter) 4.Encelado 5.Titan 6.ISS ¿Qué lugar deseas? "))
F,L = CloLeygavitacional(m1,m2,d,lu)
print("La fuerza entre estos dos objetos en ",L," es: ", F)

"************************************ 3) FUNCION PARCIAL *********************************************"

def GeLeyGravitacionalUniversal(G,m1,m2,d):
	F= (G*(m1*m2))/d**2
	return F

def PaLeyGravitacionalUniversal(G):
	def masa1(m1):
		def masa2(m2):
			def distancia(d):
				return GeLeyGravitacionalUniversal(G,m1,m2,d)
			return distancia
		return masa2
	return masa1

print("FUNCION PARCIAL DE LA LEY GRAVITACIONAL UNIVERSAL")
G = float(input("Dame el valor de la Gravedad en m/s²: "))
p1 = PaLeyGravitacionalUniversal(G)
m1 = float(input("Dame el peso del objeto 1 en kg: "))
p2 = p1(m1)
m2 = float(input("Dame el peso del objeto 2 en kg: "))
p3 = p2(m2)
d = float(input("Dame la distancia entre ambos objetos en metros: "))
F = p3(d)
print("La fuerza entre estos dos objetos es ", F)

"************************************ 4) FUNCION CURRIFICADA *********************************************"

def CurrificadaLeyGravitacionalUniversal(m1):
	def masa2(m2):
		temp=m1*m2
		def gravedad(G):
			temp1= temp*G
			def distancia(d):
				return (temp1/d**2)
			return distancia
		return gravedad
	return masa2

print("FUNCION CURRIFICADA DE LA LEY GRAVITACIONAL UNIVERSAL")
m1 = float(input("Dame el peso del objeto 1 en kg: "))
p1 = CurrificadaLeyGravitacionalUniversal(m1)
m2 = float(input("Dame el peso del objeto 2 en kg: "))
p2 = p1(m2)
G = float(input("Dame el valor de la Gravedad en m/s²: "))
p3= p2(G)
d = float(input("Dame la distancia entre ambos objetos en metros: "))
F = p3(d)
print("La fuerza entre estos dos objetos es ", F)


"""
	Ley de Coulomb

	F = (K*(q1 * q2)) /r**2

	k = 9 * (10**9) ((N m²) / C)

	Valores de K en diferentes medios

	Vacio ==> K = k
	Aire  ==> K = k / 1.0005
	Gasolina  ==> K = k / 2.3
	Aceite  ==> K = k / 4.6
	Agua  ==> K = k / 81
	Glicerina  ==> K = k / 43


	Para cada reactivo del examen elabora un codigo que compruebe dicho
	reactivo.

	1) Elabora 6 wrappers de la Ley de Coulomb
	para calcular la fuerza, entre dos cargas
	en una distancia determinada, correspondientes a los 6
	medios diferentes presentados anteriormente.
	(5 puntos por wrapper)

	2) Elabora un closure que dependiendo el nombre del medio, te retorne
	la funcion con el valor K adecuado
	(30 puntos)

	3) Elabora una parcialización de una función que resuelva Ley de Coulomb.
	(20 puntos)

	4) Currifica la función de la Ley de Coulomb,
	asegurense de resolver la mayor cantidad operaciones posibles antes
	de retornar el resultado.
	(30 puntos)
"""
