from pickle import TRUE


A=TRUE
B=False

if A or B:
    print ("es verdadero")
    print ("Fin del programa")

Lista=[]
if Lista:
    print("entro al if")
else:
    print("entro al else")

Cadvacia=""
if Cadvacia:
    print("entro al if")
else:
    print("entro al else")

Zero=0
if Zero:
    print("entro al if")
else:
    print("entro al else")

C=A or B
if C:
    print("Es igual al primer if")
elif A and B:
    print('esto no va a suceder')

def funciona (A,B):
    C=A*B
    return C**2

Z=funciona(2,3)
print(Z)

def intercambiar(A,B):
    return B,A

X,Y= intercambiar(3,2)
X,Y= intercambiar(X,Y)
print(X,Y)