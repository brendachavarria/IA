def imprimeListaPar(L):
    if not L: #condición de colapso
        return None
    F = L[0]
    if F % 2 == 0:
        print(F)
    C = L[1:]
    imprimeListaPar(C) #Expansión
    return None

imprimeListaPar([1,2,3,4,5,6,7,8,9,55])