"""
Patron332 <generadores> 20 pts

	Un montón de generos musicales usan el patron 3-3-2
	(Tango, Bachata, Bolero, Milonga, Salsa, Reegueton... )
	que es una manera de simplificar la secuencia de tonos
	1,2,3,1,2,3,1,2.


	Explicación del patrón ritmico
	https://youtu.be/XU4P_65-OqU?t=186
	Complemento a la explicación
	https://youtu.be/htkI1ZDcOs0?t=58


	Defina un generador que reciba un numero entero positivo mayor a 0 N,
	dicho generador proporciona numero de 1 hasta N, correspondiente al patron
	con las siguientes condiciones:

	def p332(N):
		pass

	a = p332(10)
	z = [e for e in a]
	print(z)
	#[1,2,3,1,2,3,1,2,1,2]
"""
def PideN(N):
	while N <= 0:
		N = PideN(int(input("Dame un numero mayor a 0: ")))
	else:
		return N

def p332(N):
	i=1
	r=1
	while N > 0:
		if r < 3:
			if i == 1:
				i = 2
				N -= 1
				yield "1"
			else:
				if i == 2:
					i = 3
					N -= 1
					yield "2"
				else:
					if i == 3:
						i = 1
						N -=1
						yield "3"
						r += 1
		else:
			if r == 3:
				if i == 1:
					i = 2
					N -= 1
					yield "1"
				else:
					if i == 2:
						i = 1
						N -= 1
						yield "2"
						r=1
print("Patron332")
print("")
N = PideN(int(input("Dame un numero mayor a 0: ")))
a = p332(N)
z = [e for e in a]
print(z)
"""
Usando monads, compresion de listas funciones acontinuacion realice lo
siguiente, sobre la lista L:
"""
L = [
	[5,5,5,7,3],
	[2,9,2,7,6],
	[8,7,4,3,8],
	[2,5,0,4,4],
	[2,0,6,4,8],
	[5,8,6,8,8],
	[4,9,2,1,1],
	[4,4,5,9,3],
	[9,7,9,1,6],
	[0,2,3,5,2],
	[8,1,8,1,2],
	[1,0,1,7,9],
	[9,6,1,8,2],
	[7,8,2,3,2],
	[9,4,9,1,0],
	[2,5,6,5,5],
	[3,8,8,9,1],
	[0,6,9,8,1],
	[0,7,1,7,7],
	[5,3,5,1,1],
	[2,3,8,7,0],
	[7,1,6,3,2],
	[6,0,9,2,2],
	[0,5,7,4,8],
	[7,3,4,2,5],
	[6,3,1,0,4],
	[6,8,2,9,8],
	[5,1,9,6,8],
	[6,2,1,1,9],
	[4,9,9,0,5],
	[5,5,2,7,4],
	[1,9,3,7,2],
	[1,1,3,8,7],
	[2,3,3,8,9],
	[0,1,2,8,0],
	[4,1,1,5,1],
	[8,3,2,8,9],
	[6,5,5,0,1],
	[9,0,6,0,7],
	[8,3,5,7,6],
	[1,0,4,6,6],
	[7,2,8,4,4],
	[0,9,8,0,8],
	[7,6,5,0,4],
	[8,6,6,4,5],
	[9,8,8,8,8],
	[2,1,4,2,9],
	[1,9,2,0,4],
	[8,2,3,5,9],
	[6,5,9,9,7],
	[3,1,7,3,3],
	[4,4,6,7,8],
	[8,0,5,9,0],
	[2,8,7,9,7],
	[3,6,8,9,5],
	[5,1,8,8,1],
	[2,0,5,3,6],
	[6,6,1,4,0],
	[1,9,3,4,7],
	[9,7,7,0,5],
	[4,0,1,8,7],
	[9,6,8,4,2],
	[2,7,8,3,8],
	[4,2,0,3,7],
	[3,0,7,7,4],
	[5,8,9,5,5],
	[9,8,7,4,6],
	[6,3,1,1,5],
	[9,9,3,0,4],
	[3,6,4,6,2],
	[5,4,3,6,1],
	[8,6,2,9,5],
	[2,2,1,5,9],
	[3,8,7,3,9],
	[8,0,7,0,1],
	[2,5,3,1,5],
	[3,2,6,0,6],
	[1,5,2,3,8],
	[3,6,0,0,8],
	[6,9,0,5,2],
	[5,2,2,1,2],
	[1,6,9,3,8],
	[2,3,8,8,1],
	[6,1,8,1,1],
	[6,4,1,8,3],
	[2,8,5,7,4],
	[8,7,8,3,3],
	[2,6,2,6,7],
	[6,4,6,6,5],
	[0,9,8,1,3],
	[2,1,3,7,9],
	[7,4,6,4,4],
	[2,3,1,4,6],
	[9,9,7,2,5],
	[0,1,7,4,5],
	[4,9,0,1,4],
	[4,8,7,2,2],
	[0,8,2,6,3],
	[3,9,5,6,6],
	[0,7,3,3,1],
	[0,6,7,0,9],
	[2,8,4,9,1],
	[3,8,8,5,0],
	[6,0,4,5,3],
	[8,0,1,2,5],
	[3,0,9,1,9],
	[9,0,8,5,0],
	[1,4,6,4,2],
	[8,7,1,4,9],
	[5,9,2,1,8],
	[8,1,0,5,3],
	[3,4,1,4,4],
	[5,8,9,9,4],
	[7,9,8,6,2],
	[2,5,1,2,3],
	[5,2,5,5,9],
	[1,8,3,8,7],
	[6,0,0,0,0],
	[5,2,4,7,6],
	[0,5,1,6,7],
	[4,7,7,9,5],
	[5,6,7,9,9],
	[9,6,9,8,2],
	[5,2,4,2,8],
	[8,6,5,9,7],
	[7,8,4,6,4],
	[8,1,3,2,7],
	[7,1,1,9,1],
	[8,1,0,4,7],
	[8,1,7,2,4],
	[1,5,7,4,2],
	[5,0,0,3,6],
	[3,3,7,1,1],
	[4,8,4,8,3],
	[7,0,6,6,7],
	[8,0,3,2,2],
	[5,9,0,5,2],
	[1,0,4,6,2],
	[8,5,1,8,9],
	[8,6,8,6,9],
	[9,2,5,5,8],
	[1,6,1,2,7],
	[9,6,7,1,5],
	[1,8,0,5,8],
	[3,2,5,9,5],
	[4,8,0,6,5],
	[9,6,7,4,7],
	[2,1,2,5,2],
	[3,8,0,5,0],
	[8,9,9,0,1],
	[6,4,9,4,5],
	[8,7,2,3,2],
	[9,1,5,0,3],
	[0,0,0,1,0],
	[6,8,9,2,0],
	[7,2,6,1,7],
	[2,1,6,1,7],
	[7,0,1,7,9],
	[6,2,0,5,0],
	[8,4,4,8,9],
	[6,4,3,6,8],
	[5,4,8,4,0],
	[1,7,4,3,1],
	[2,9,1,6,9],
	[1,4,8,2,3],
	[2,2,1,7,7],
	[2,6,4,9,6],
	[2,9,1,1,4],
	[8,8,5,0,4],
	[0,5,4,8,3],
	[4,0,1,3,6],
	[1,0,8,2,7],
	[0,1,1,9,2],
	[8,7,7,4,0],
	[0,3,7,9,0],
	[5,2,9,7,1],
	[7,0,9,3,4],
	[2,2,7,8,5],
	[5,0,2,8,6],
	[3,3,3,9,4],
	[4,4,0,4,1],
	[7,0,5,5,5],
	[3,0,5,1,5],
	[1,5,5,4,9],
	[6,3,5,3,1],
	[3,1,3,9,1],
	[5,7,4,7,4],
	[0,4,0,3,1],
	[5,6,2,9,2],
	[6,5,0,4,8],
	[6,4,4,4,8],
	[7,3,6,6,4],
	[6,5,5,5,2],
	[5,8,2,7,7],
	[9,3,9,2,4],
	[1,4,3,3,9],
	[1,2,3,6,1],
	[1,2,9,9,1],
	[9,1,9,4,2],
	[1,4,8,1,3],
	[9,7,2,2,2],
	[0,6,2,5,4],
	[0,5,8,7,3],
	[9,8,7,3,4],
	[9,3,9,3,3],
	[1,1,6,9,9],
	[6,4,6,6,9],
	[5,9,8,0,6],
	[3,4,7,3,8],
	[6,6,4,3,7],
	[0,7,7,7,5],
	[7,8,3,9,5],
	[9,4,4,4,3],
	[0,3,5,1,3],
	[4,0,3,7,4],
	[0,1,1,1,4],
	[3,1,7,2,5],
	[6,4,0,1,6],
	[6,9,5,7,7],
	[9,6,4,5,2],
	[5,5,3,6,4],
	[7,4,2,7,7],
	[1,6,3,2,1],
	[2,6,3,2,8],
	[8,2,5,1,2],
	[4,2,5,5,4],
	[1,6,6,1,4],
	[3,3,3,7,2],
	[3,1,1,3,9],
	[2,9,5,5,4],
	[5,7,3,4,2],
	[3,3,8,2,9],
	[9,1,6,1,2],
	[1,4,3,6,1],
	[6,5,7,1,6],
	[9,6,7,0,0],
	[4,6,0,2,6],
	[1,7,5,6,2],
	[1,3,8,0,8],
	[9,0,5,5,0],
	[2,1,6,8,6],
	[5,7,7,9,2],
	[8,0,7,2,3],
	[6,8,8,1,6],
	[7,5,0,1,4],
	[8,4,9,6,4],
	[1,2,9,1,7],
	[1,2,5,3,9],
	[8,5,4,5,9],
	[8,7,3,9,0],
	[9,4,1,9,6],
	[1,1,5,3,5],
	[3,3,8,5,9],
	[2,1,0,7,0],
	[8,6,8,2,7],
	[3,3,9,2,8],
	[2,7,2,3,3],
	[2,4,2,9,5],
	[8,7,2,5,9],
	[0,0,5,7,6],
	[3,1,7,5,9],
	[8,3,5,8,3],
	[7,5,7,6,2],
	[8,9,8,8,1],
	[6,2,1,4,8],
	[2,1,4,7,5],
	[1,6,3,6,3],
	[3,3,5,3,3],
	[9,6,0,4,0],
	[8,8,2,2,0],
	[9,3,4,7,2],
	[6,2,8,4,7],
	[7,9,8,9,2],
	[4,0,8,0,1],
	[1,6,5,3,8],
	[0,5,6,5,0],
	[4,1,0,6,6],
	[5,8,5,4,4],
	[0,2,4,2,6],
	[5,7,5,0,9],
	[3,7,4,6,3],
	[2,3,1,9,6],
	[2,3,8,7,3],
	[6,9,0,2,3],
	[1,1,9,9,5],
	[3,4,9,6,5],
	[1,1,9,2,2],
	[5,7,6,7,7],
	[5,0,7,3,1],
	[0,6,2,1,6],
	[5,6,7,2,3],
	[2,7,5,5,5],
	[9,0,4,5,9],
	[7,5,5,2,2],
	[1,7,4,0,2],
	[2,8,4,0,0],
	[1,7,6,2,3],
	[5,1,6,6,5],
	[2,3,7,2,0],
	[4,7,8,8,3]
]

"""
1. Obtenga las fila, cuya suma de la misma sea un numero par.
	ejemp: (15 pts)

	L = [
	[5,5,5,7,3], # suma 25
	[2,9,2,7,6] # suma 26
	]

	z = [[2,9,2,7,6]]
"""
y = filter(lambda a: (a[0] + a[1] + a[2] + a[3] + a[4]) % 2 == 0, L)
z = list(y)
print("")
print("")
print("Filas cuya suma es un numero par")
print (z)
"""
2. Calcule la suma total de todas la filas del resultado del numero 1
	(15 pts)
"""
from functools import reduce
print("")
print("")
x = map(lambda a: a[0] + a[1] + a[2] + a[3] + a[4], z)
y = list(x)
w = reduce(lambda a,b: a + b, y)
print("SUMA DE LAS LISTAS: ")
print(w)
"""
3. Calcule la transpuesta de la Lista L, es decir las columnas se convierten
	en filas. (30 pts)
"""
print("")
print("")
fu = map(lambda a: a[0], L)
lu = list(fu)
fd = map(lambda a: a[1], L)
ld = list(fd)
ft = map(lambda a: a[2], L)
lt = list(ft)
fc = map(lambda a: a[3], L)
lc = list(fc)
fs = map(lambda a: a[4], L)
ls = list(fs)
print("LISTA TRANSPUESTA: ")
print(lu,",",ld,",",lt,",",lc,",",ls)
