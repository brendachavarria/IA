"""
 Primos  <generadores>

	Realice una generador que devuelva  de todos lo numeros primos
	existentes de 0 hasta n-1 que cumpla con el siguiente prototipo:

	def gprimo(N):
		pass


	a = gprimo(10)
	z = [e for e in a]
	print(z)
	# [2, 3 ,5 ,7 ,11 ,13 ,17 ,19 ,23 ,29]
"""
def gprimo(N):
    i=1
    while i < N:
        creciente = 2
        esprimo = True
        while esprimo and creciente < i:
            if i % creciente == 0:
                esprimo = False
            else:
                creciente += 1
        if esprimo:
            yield (i)
        i += 1

a = gprimo(int(input("Dame el valor del limite: ")))
z = [e for e in a]
print(z)
# [2, 3 ,5 ,7 ,11 ,13 ,17 ,19 ,23 ,29]

"""
Bada Boom!!! <generadores>

	Defina un generador que reciba un numero entero positivo mayor a 0 N,
	dicho generador proporciona numero de 1 hasta N
	con las siguientes condiciones:
		1) si es multiplo de 3 coloque la cadena "Bada"
		2) si es multiplo de 5 coloque la cadena "Boom!!"
		3) si es multiplo de 3 y 5 coloque "Bada Boom!!"

	def genBadaBoom(N):
		pass

	a = genBadaBoom(10)
	z = [e for e in a]
	print(z)
	#[1,2,"Bada",4,"Boom","Bada",7,8,"Bada","Boom"]
"""
def genBadaBoom(N):
    i=1
    while i <= N:
        if i % 3 == 0 and i % 5 == 0:
            yield "Bada Boom"
        else:
            if i % 3 == 0:
                yield "Bada"
            else:
                if i % 5 == 0:
                    yield "Boom"
                else:
                    yield i
        i += 1

a = genBadaBoom(int(input("Dame un numero entero positivo mayor a 0 : ")))
z = [e for e in a]
print(z)
#[1,2,"Bada",4,"Boom","Bada",7,8,"Bada","Boom"]
