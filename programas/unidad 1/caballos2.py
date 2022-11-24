tableroval=[
    [42,59,44,9,40,21,46,7],
    [61,10,41,58,45,8,39,20],
    [12,43,60,55,22,57,6,47],
    [53,62,11,30,25,28,19,38],
    [32,13,54,27,56,23,48,5],
    [63,52,31,24,29,26,37,18],
    [14,33,2,51,16,35,4,49],
    [1,64,15,34,3,50,17,36]
]

def imp():
    for f in tablero:
        print(*f)
    print("\n")

def muevecaballo(eb,ei,cr):
    fb = x-1
    cb = y-1
    c = 0
    f = 0

    for fil in tableroval:
        for col in fil:
            n = tableroval[f][c]
            if(cr == 64):
                print("Se recorrio todo el tablero")
                imp()
                exit()
            if(eb == 65):
                eb = 1
                #print("entro2")
            if(n == eb):
                #print("entro ", cr)
                cr += 1
                tablero[f][c] = str(cr)
                imp()
                eb +=1
                muevecaballo(eb,ei,cr)
            if(c < 7):
                c += 1
            else:
                c = 0
        if(f < 7):
            f += 1
        else:
            f = 0

tablero = []
for i in range(8):
    tablero.append(['*'] * 8)

x = int(input("Dame la fila en la que quieres que inicie tu caballo\n"))
y = int(input("Dame la columna en la que quieres que inicie tu caballo\n"))

print("--- Tablero Inicial ---\n")
tablero[x-1][y-1] = '1'
cr = 0
eb = tableroval[x-1][y-1]
ei = eb
imp()
muevecaballo(eb,ei,cr)
