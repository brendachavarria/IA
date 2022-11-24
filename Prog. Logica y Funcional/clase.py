def factorial(N):
    if N < 0:
        return 1
    if N == 0:
        return 1
    return factorial(N-1) * N
print("F a c t o r i a l")
print(factorial(0))
print(factorial(1))
print(factorial(2))
print(factorial(3))

def mandelbrot(N):
    if N == 0:
        return 0
    return mandelbrot(N-1)**2 +1

print("M a n d e l b r o t")
print(mandelbrot(0))
print(mandelbrot(1))
print(mandelbrot(2))
print(mandelbrot(3))
print(mandelbrot(4))

def elevarcuadrado(N):
    return N**2

def sumacubo(N):
    return N + N**3

print("Composicion ", sumacubo(elevarcuadrado(2)))

def compuestaversion1(N,F):
    T=N**2
    return F(T)

print("Composicion 1:  ", compuestaversion1(2,sumacubo))

def compuestaversion2 (N,F,G):
    return(G(F(N)))

print("Composicion 2", compuestaversion2(2,elevarcuadrado,sumacubo))

def composicionrecursiva(N,LF):
    if not LF:
        return N
    PF=LF[0]
    return composicionrecursiva(PF(N),LF[1:])

print("Composicion Recursiva ", composicionrecursiva(2,[elevarcuadrado,sumacubo]))

def iterar(LN,LF):
    if not LN:
        return []
    if not LF:
        return LN
    F = LN[0]
    R = composicionrecursiva(F,LF)
    return[R] + iterar(LN[1:],LF)

ListaNumeros = [1,2,3,4,5]
ListaFunciones = [elevarcuadrado, sumacubo]
ListaResultado = iterar(ListaNumeros, ListaFunciones)
print(ListaResultado)
