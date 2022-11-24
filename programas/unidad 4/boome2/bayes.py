import random
from pathlib import Path
from collections import defaultdict
import re
import json

def detector(valor):
    Vacias10 = [0,0,0,0,0,0,0,0,1,1]
    Bombas10 = [1,1,1,1,1,1,1,1,1,0]
    FN = random.choice(Vacias10)
    FP = random.choice(Bombas10)
    if valor == 1:
        return FP
    else:
        return FN

def probayes(tnc,fila):
    def repite(probom,d,fila,totalp):
        if(totalp >= 0.60):
            totalp=totalp
            return totalp
        else:
            #P(!Bomba)
            pronobom = 1-probom#(tnc-nc)/tnc

            #P(D+|Bomba)
            probomdecpo = 0.9
            #P(D-|Bomba)
            probomdecneg = 0.1

            #P(D+|!Bomba)
            pronobomdecpo = 0.2
            #P(D-|!Bomba)
            pronobomdecneg = 0.8

            #P(Bomba|D+) = (P(D+|Bomba) * P(bomba)) / P(D+)
            PT = (probom * probomdecpo) + (pronobom * pronobomdecpo)
            PT = round(PT,3)
            PB = (probomdecpo * probom) / PT
            PB = round(PB,3)

            totalp = PB + totalp
            #print("prob total=",totalp)
            dec = detector(fila)
            d += 1
            #print("dec1= ",dec,"veces que se activo el detector=",d,"prob total=",totalp)
            if(d < 3):
                if(dec == 1):
                    totalp = repite(totalp,d,fila,totalp)
                    d = 3
                elif(dec == 0):
                    dec = detector(fila)
                    d += 1
                    #print("dec1= ",dec,"veces que se activo el detector=",d,"prob total=",totalp)
                    if(d < 3):
                        if(dec == 1):
                            totalp = repite(totalp,d,fila,totalp)
                            d = 3
                        elif(dec == 0):
                            dec = detector(fila)
                            d += 1
                            #print("dec1= ",dec,"veces que se activo el detector=",d,"prob total=",totalp)
                            if(d < 3):
                                if(dec == 1):
                                    totalp = repite(totalp,d,fila,totalp)
                                    d = 3

            if(d==3):
                #print("se regreso",totalp)
                return totalp

    dec = 0
    d = 1
    totalp = 0
    #P(Bomba)
    probom = round((1/tnc), 3)
    totalp = repite(probom,d,fila,totalp)
    #print("se obtuvo",totalp)
    return totalp

def avance(matriz, cd, tnc, db, P):
    a = 0
    fi = []
    col= 0
    print("\n||| Numero de casilla: ", cd, " | Numero de casillas a evaluar: ", tnc," | Detector de Bomba: ",db," | Probailidad de bomba: ", P, " |||\n")
    for columna in matriz:
        if (col==0 or col==2 or col==4 or col==6 or col==8 or col==10):
            for fila in columna[::-1]:
                a += 1
                if(a <= cd):
                    x = str(fila)
                    fi.append(x)
                if(a > cd):
                    fi.append("*")
            print(fi[::-1])
        if (col==1 or col==3 or col==5 or col==7 or col==9):
            for fila in columna:
                a += 1
                if(a <= cd):
                    x = str(fila)
                    fi.append(x)
                if(a > cd):
                    fi.append("*")
            print(fi)
        col += 1
        fi = []
    print("\n")

def main():
    JPATH ='.'
    JNAME ='matriz.json'
    Ruta = Path(JPATH) / JNAME
    with Ruta.open() as archivojson:
        matriz = json.load(archivojson)
        numcas = 51
        casilla = 0
        desactivador = 3
        bomdesac = 0
        nb = 1
        c= 0
        for columna in matriz:
                c += 1
                if (c==2 or c==4 or c==6 or c==8 or c==10):
                    for fila in columna:
                        casilla += 1
                        numcas -= 1
                        #print(casilla,numcas,fila)
                        if(bomdesac == nb):
                            if(fila == 1):
                                print("!!!BOMBA¡¡¡\nBOOMIE MURIO :C porque piso una bomba 5")
                                exit()
                            elif (fila == 0):
                                #print("imprimio5")
                                avance(matriz, casilla, numcas, 0, 0 )
                        elif(bomdesac < nb):
                            db = detector(fila)
                            if(db == 1):
                                #print("numero de casillas:",numcas)
                                P = probayes(numcas,fila)
                                if(P < 0.60):
                                    if(fila == 1):
                                        print("!!!BOMBA¡¡¡\nBOOMIE MURIO :C porque piso una bomba 4")
                                        exit()
                                    elif (fila == 0):
                                        #print("imprimio1")
                                        avance(matriz, casilla, numcas, db, P)
                                elif(P >= 0.60):
                                    if(desactivador <= 0 and fila == 1):
                                        print("!!!BOMBA¡¡¡\nBOOMIE MURIO :C porque se quedo sin intentos y piso una bomba")
                                        exit()
                                    elif(desactivador <= 3 and desactivador > 0):
                                        desactivador -= 1
                                        if(fila == 1):
                                            bomdesac += 1
                                            print("Se desactivo una bomba con exito, quedaban ",desactivador," intentos----------------------------------")
                                        elif(fila == 0):
                                            print("Se desactivo una bomba falsa, quedan ",desactivador," intentos")
                                        #print("imprimio2")
                                        avance(matriz, casilla, numcas, db, P)
                            elif(db == 0):
                                if(fila == 1):
                                    print("BOMBA BOOMIE MURIO :C porque piso una bomba 6")
                                    exit()
                                elif (fila == 0):
                                    #print("imprimio4")
                                    avance(matriz, casilla, numcas, 0, 0)
                if (c==1 or c==3 or c==5 or c==7 or c==9):
                    for fila in columna[::-1]:
                        casilla += 1
                        numcas -= 1
                        #print(casilla,numcas,fila)
                        if(bomdesac == nb):
                            if(fila == 1):
                                print("!!!BOMBA¡¡¡\nBOOMIE MURIO :C porque piso una bomba 5")
                                exit()
                            elif (fila == 0):
                                #print("imprimio5")
                                avance(matriz, casilla, numcas, 0, 0 )
                        elif(bomdesac < nb):
                            db = detector(fila)
                            if(db == 1):
                                #print("numero de casillas:",numcas)
                                P = probayes(numcas,fila)
                                if(P < 0.60):
                                    if(fila == 1):
                                        print("!!!BOMBA¡¡¡\nBOOMIE MURIO :C porque piso una bomba 4")
                                        exit()
                                    elif (fila == 0):
                                        #print("imprimio1")
                                        avance(matriz, casilla, numcas, db, P)
                                elif(P >= 0.60):
                                    if(desactivador <= 0 and fila == 1):
                                        print("!!!BOMBA¡¡¡\nBOOMIE MURIO :C porque se quedo sin intentos y piso una bomba")
                                        exit()
                                    elif(desactivador <= 3 and desactivador > 0):
                                        desactivador -= 1
                                        if(fila == 1):
                                            bomdesac += 1
                                            print("Se desactivo una bomba con exito, quedaban ",desactivador," intentos----------------------------------")
                                        elif(fila == 0):
                                            print("Se desactivo una bomba falsa, quedan ",desactivador," intentos")
                                        #print("imprimio2")
                                        avance(matriz, casilla, numcas, db, P)
                            elif(db == 0):
                                if(fila == 1):
                                    print("BOMBA BOOMIE MURIO :C porque piso una bomba 6")
                                    exit()
                                elif (fila == 0):
                                    #print("imprimio4")
                                    avance(matriz, casilla, numcas, 0, 0)
        if(nb == bomdesac):
            print("BOOMIE DESACTIVO CON EXITO LA BOMBA")
        else:
            print("BOOMIE MURIO TRATANDO DE SALVARNOS DE UNA BOMBA")

main()
