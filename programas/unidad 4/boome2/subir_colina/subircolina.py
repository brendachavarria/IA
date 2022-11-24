import json
import random
from pathlib import Path
from collections import defaultdict
import re
JPATH ='.'
JNAME ='arbol.json'

def datosi():
    raiz = input("¿Cuál va a ser tu raiz?\n")
    RAIZ = raiz.upper()
    eb = input("¿Cuál es el elemento que vas a buscar?\n")
    EB = eb.upper()
    return(RAIZ,EB)

def obtenerele(arbol):
    elementos=[]
    for camino in arbol:
        elementos.append(camino[0])
        elementos.append(camino[2])
    elementos = list(set(elementos))
    return elementos

def buscacamino(arbol,R,EB,YAPASO):
    caminos = []
    cami = []
    n = 0
    if(R == EB):
        print("TRUE")
        print("Llego a ",EB)
    elif(R != EB):
        for c in arbol:
            if(c[0] == R):
                caminos.append(c)
        #print("CAMINOS",caminos,"\n")
        for ca in caminos:
            #print("primer camino:",ca[1])
            if(n == 0):
                cami.append(ca)
                #print("CAMI 1 es:",cami)
            if(n > 0):
                comp = cami[0]
                #print("comparar: ",comp[1])
                if(comp[1] > ca[1]):
                    cami.pop()
                    cami.append(ca)
                    #print(cami)
                elif(comp[1] == ca[1]):
                    cami.append(ca)
                    #print(cami)
            #print("\n")
            n += 1
        nc = len(cami)
        #print(nc)
        if(nc == 1):
            YAPASO.append(R)
            yp = len(YAPASO)
            if(yp >= 4):
                YAPASO.pop(0)
            print("Ya paso por ",YAPASO)
            comp = cami[0]
            R = comp[2]
            #print("NUEVA R: ",R)
            buscacamino(arbol,R,EB,YAPASO)
        elif(nc > 1):
            cr = random.randint(0,(nc-1))
            #print("camino elegido al azar:",cr)
            YAPASO.append(R)
            yp = len(YAPASO)
            if(yp >= 4):
                YAPASO.pop(0)
            print("Ya paso por ",YAPASO)
            comp = cami[cr]
            R = comp[2]
            #print("NUEVA R: ",R)
            buscacamino(arbol,R,EB,YAPASO)

def main():
    R,EB = datosi()
    Ruta = Path(JPATH) / JNAME
    cb = 0
    YAPASO =[]
    with Ruta.open() as archivojson:
        arbol = json.load(archivojson)
        elementos = obtenerele(arbol)
        for elemento in elementos:
            if(elemento == EB):
                cb = 1
        if(cb == 0):
            print("FALSE")
        elif(cb == 1):
            buscacamino(arbol,R,EB,YAPASO)

main()
