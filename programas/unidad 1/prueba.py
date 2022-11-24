###En un programa de consurso hay una ruleta de con 20 numeros (1-20)
#
#si a cada persona del consurso se le dio un boleto con 2 numeros del 1 al 20
#
#Realice la simulacion de cuantas veces se tiene que girar la ruleta para que
#salga el numero de un boleto de los concursantes
#
# 3 10
#
#Pedir los dos numeros de un boleto
#Simular girar dos veces la ruleta
#Comparar los numeros de la ruleta con el boleto
#y si no son iguales volver a repetir
#los giros hasta que salgan los dos numeros

import random
g=0
nr1=0
nr2=0

n1= input("Dame el primer numero del boleto: ")
n2= input("Dame el segundo numero del boleto: ")

def giro(g,n1,n2):
    nr1 = random.randrange(1,3)
    print(nr1)
    nr2 = random.randrange(1,3)
    print(nr2)
    print()
    if (n1 != nr1) and (n2 != nr2):
        g= g+1
        giro(g,n1,n2)
    else:
        input("El numero de giros necesarios fueron: ")

giro(g,n1,n2)
