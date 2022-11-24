import json
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

def buscahijos(RAIZ,arbol):
    hijos = []
    for hoja in arbol:
        if(RAIZ == hoja[0]):
            h = hoja[1]
            hijos.append(h)
    return(hijos)

def busca(RAIZ,EB,arbol,LO,x):
    hijos=buscahijos(RAIZ,arbol)
    LO = LO + hijos
    for l in LO:
        if(l == EB):
            print("\nTRUE")
            exit()
    RAIZ = LO[x]
    x += 1
    busca(RAIZ,EB,arbol,LO,x)

def prueba(R,EB,arbol):
    letras = []
    x = 0
    for hoja in arbol:
        h0 = hoja[0]
        h1 = hoja[1]
        letras.append(h0)
        letras.append(h1)
    let = list(set(letras))
    let.sort()
    #print(let)
    for l in let:
        if(l == R):
            x += 1
        elif(l == EB):
            x +=1
    if(x < 2):
        print("FALSE")
        exit()

def main():
    RAIZ,EB = datosi()
    LO = []
    #LO.append(RAIZ)
    x = 0
    Ruta = Path(JPATH) / JNAME
    with Ruta.open() as archivojson:
        arbol = json.load(archivojson)
        prueba(RAIZ,EB,arbol)
        if(RAIZ == EB):
            print("\nTRUE")
        else:
            busca(RAIZ,EB,arbol,LO,x)
main()
