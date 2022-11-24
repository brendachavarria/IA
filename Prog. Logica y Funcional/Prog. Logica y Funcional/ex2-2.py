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
def mandelBrot(N):
    if N == 0:
        return 1
    return(mandelBrot(N-1)**2 + 1)

print(mandelBrot(0))

print(mandelBrot(1))

print(mandelBrot(2))

print(mandelBrot(3))

