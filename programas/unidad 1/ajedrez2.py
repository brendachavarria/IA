import numpy as np
import sys
from random import randint

nodos=list()

for i in range(0,8):
    for j in range(0,8):
        t=[i,j]
        nodos.append(t)

def revisamov(l):
    if 0<=l[0]<8 and 0<=l[1]<8:
        return True
    else:
        return False

def movimientos(nodo):
    m=[[1,2],[-1,2],[1,-2],[-1,-2],[2,1],[-2,1],[2,-1],[-2,-1]]
    movi=list()
    for i in range(0,8):
        x=nodo[0]+m[i][0]
        y=nodo[1]+m[i][1]
        if revisamov([x,y]):
            movi.append([x,y])
    return movi

def estados(historial,mov):
    movi=movimientos(mov)
    estados=0
    for m in movi:
        if not m in historial:
            estados+=1
    return estados

def siguientemov(historial):
    movi=movimientos(historial[-1])
    ms=list()
    for mov in movi:
        if not(mov in historial):
            e=(mov,estados(historial,mov))
            ms.append(e)
    return ms

def mover(historial):
    f=siguientemov(historial)
    if(f==[]):
        return False;
    else:
        movi,estados=zip(*siguientemov(historial))
    maxim=max(estados)
    if(maxim!=0):
        if(1 in estados):
             return movi[estados.index(1)]
        else:
              return movi[estados.index(min(estados))]
    elif(maxim==0 and len(historial)==63):
        return movi[estados.index(maxim)]
    else:
        return False


def tablero(historial):
    sys.stdout.write("\n\nT A B L E R O  F I N A L \n\n")
    for i in range(0,8):
        for j in range(0,8):
            if(([i,j] in historial)):
                sys.stdout.write("%.2d " % (historial.index([i,j])))
            else:
                sys.stdout.write(" # ")
        sys.stdout.write('\n')
    sys.stdout.write("\nNumero de movimientos : "+str(len(historial)))

historial=list()
xi=int(input("Ingresa la fila que quieres\n"))
yi=int(input("Ingresa la columna que quieres\n"))
casin=[(xi-1),(yi-1)]
historial.append(casin)
while(True):
    m=mover(historial)
    if(m==False):
        break
    else:
        historial.append(m)
tablero(historial)
