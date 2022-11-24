################################# EXAMEN UNIDAD II ######################################
#                                    HECHO POR:
#                   BRENDA LIZBETH CHAVARRIA RAMIREZ 18590219
#                   PALOMA GUADALUPE VARGAS ALEGRIA  17590099
"""
50 puntos
Limpiar una cadena, por delimitador.
Ocasionalmente es necesario limpiar un cadena especifica
que cumple con un par de delimitadores por ejemplo
en el siguiente texto:

XX2A|BEML920313HMCLNS09|343

El dato entre '|' es una curp

Realiza un funcion que pueda limpiar una cadena por delimitador

def limpiarCadena(Cadena,Delimitador);
	pass

Z = list('XX2A|BEML920313HMCLNS09|343')
print(limpiarCadena(Z,'|'))
# ['|','B', 'E', 'M', 'L', '9', '2', '0', '3', '1','3','H','M','C','L','N','S','0','9','|']

"""
print("PRIMER EJERCICIO *** Limpiar una cadena, por delimitador ***")
def limpiarCadena(Cadena,Delimitador):
	if not Cadena:
			return []
	if Cadena[0] == Delimitador:
			return [Cadena[0]] + limpiarCadena(print(Cadena[0:]),Delimitador)
	else:
    		return limpiarCadena(Cadena[1:-1],Delimitador)

Z = list('XX2A|BEML920313HMCLNS09|343')
print(limpiarCadena(Z,'|'))



"""
50 puntos

Mapa del tesoro

Un pirata ha encontrado un mapa del tesoro,
pero las instrucciones son un tanto ...
ambiguas

El mapa consiste en una coordenada dada por columnas y filas
y una lista de pasos que debe dar que pueden ser:

Arriba == A
Abajo == V
Izquierda == <
Derecha == >

Si la lista tiene el simbolo 'A'
entonces la Fila incrementa

Si la lista tiene el simbolo 'V'
entonces la Fila decrementa

Si la lista tiene el simbolo '<'
entonces la Columna decrementa

Si la lista tiene el simbolo '>'
entonces la Columna incrementa

Siguiendo cada paso llegara a la ubicacion del tesoro

ejemplo:

def tesoro(Columna,Fila,Pasos):
	pass

P = ['>','>','>','>','>']

R = tesoro(0,0,P)

print(R)
# [5,0]


"""
print("SEGUNDO EJERCICIO *** Mapa del tesoro ***")
def tesoro(C,F,P):
	R=[C,F]
	if not P:
		return R
	if P[0] == '>':
		R[0]+=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R
	if P[0] == '<':
		R[0]-=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R
	if P[0] == 'A':
		R[1]+=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R
	if P[0] == 'V':
		R[1]-=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R

P=['>','>','>','>','>']
R= tesoro(0,0,P)
print(R)


"""

25 puntos

Un matriz en python no es mas que una lista de listas
Defina una funcion que imprima un Matriz

def imprimirMatriz(M):
	pass

MM = [ 
	[1,1,1],
	[10,10,10],
	[0,0,0]
]

imprimirMatriz(MM)
[1,1,1]
[10,10,10]
[0,0,0]
"""
print("TERCER EJERCICIO *** Imprime una Matriz ***")
def imprimirMatriz(M):
    if not M:
        return
    d=M[1:]
    print(M[0])
    return imprimirMatriz(d)
	

MM = [ 
	[1,1,1],
	[10,10,10],
	[0,0,0]
]

imprimirMatriz(MM)

"""[1,1,1]
[10,10,10]
[0,0,0]"""

"""

25 puntos

Mandelbrot

Es una funcion de matematica de fractales asi

f(n+1) = f(n)**2  + 1, f(0) = 1

Demostracion
f(0) = 1
f(1) = f(0)**2  + 1 = 2
f(2) = f(1)**2  + 1 = 5
f(3) = f(2)**2  + 1 = 26

defina una funcion en python

def mandelBrot(N):
	pass
	
print(mandelBrot(0))
#1
print(mandelBrot(1))
#2
print(mandelBrot(2))
#5
print(mandelBrot(3))
#26
"""
print("CUARTO EJERCICIO *** Mandelbrot ***")
def mandelBrot(N):
    if N == 0:
        return 1
    return(mandelBrot(N-1)**2 + 1)

print(mandelBrot(0))

print(mandelBrot(1))

print(mandelBrot(2))

print(mandelBrot(3))