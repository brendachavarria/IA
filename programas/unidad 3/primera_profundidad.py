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

def buscacamino(h,a,ri):
    camino=[]
    m = "z"
    camino.append(h)
    while(m != ri):
        for hoja in a:
            if(h == hoja[1]):
                m = hoja[0]
                camino.append(m)
                h = m
    cam = camino[::-1]
    return(cam)

def busca(RAIZ,EB,arbol,RI):
    hijos = buscahijos(RAIZ,arbol)
    nh=len(hijos)
    for hijo in hijos:
        if(hijo == EB):
            c = buscacamino(hijo,arbol,RI)
            print("\nTRUE \nEl camino es: ",c)
            exit()
        else:
            RAIZ = hijo
            busca(RAIZ,EB,arbol,RI)

def main():
    RAIZ,EB = datosi()
    Ruta = Path(JPATH) / JNAME
    with Ruta.open() as archivojson:
        arbol = json.load(archivojson)
        if(RAIZ == EB):
            print("\nTRUE")
        else:
            busca(RAIZ,EB,arbol,RAIZ)
        print("\nFALSE")
main()
