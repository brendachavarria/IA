"""
Ejercicio que permite sumar los elementos de una lista

def sumalista(L):
    pass

L=[3,2,1]
R=sumalista(L)
print(L)

#consola
6
"""
# Version 1
# Sumando al derecho
def sumalista(L):
    if not L: #reviso si hay elementos en L
        return 0 #retorno un elemento neutro
    #revisamos que tome el 1 elemento
    print(L[0])
    # tomo el 1 elemento y lo sumo con lo que 
    # obtenga de la siguiente llamada recursiva
    return L[0] + sumalista(L[1:])

print(sumalista([1,2,3]))
print()

# Version 2
# Sumando al reves
def sumalistaR(L):
    if not L: #checo que L tenga elementos
        return 0 #regreso un valor neutro
    F=L[0] #primer elemto de la lista original
    C=L[1:] #resto de la lista
    #revisa cuando se acabaron los elemtos en la lista 
    if not C: # es decir cuando llegamos a F
        print(F)
        return F
    # al ir al reves primero se hace la suma y despues la expansion
    Suma = sumalistaR(C) + F
    print(F) #revisamos como lo suma
    return Suma

print(sumalistaR([1,2,3]))

