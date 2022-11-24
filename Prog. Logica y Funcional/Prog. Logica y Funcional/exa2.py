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