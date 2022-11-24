tablero = [
    ["CR"],["  "],["CR"],
    ["  "],["  "],["  "],
    ["CB"],["  "],["CB"]
]


def imprime(tableroi,tablerof):
    print("\nTablero Inicial \n")
    imp(tableroi)
    print("\nTablero Final \n")
    imp(tablerof)

def imp(tablero):
    n=0
    for c in range(0,3):
        print(tablero[n],tablero[n+1],tablero[n+2])
        n += 3
    print("\n")

def cambio(tablero):
    campos = [5,-5,5,-5,1,-1,-7,7]
    picr = [0,2]
    picb = [6,8]

    def mueve(c1,c2,p1,p2):
        i = picr[p1]
        val = tablero[i]
        tablero[i]= ["  "]
        a = campos[c1]
        tablero[i+a] = val
        picr[p1]= a+i
        imp(tablero)
        i = picb[p2]
        val = tablero[i]
        tablero[i]= ["  "]
        a = campos[c2]
        tablero[i+a] = val
        picb[p2]= a+i
        imp(tablero)


    for n in range(0,8):
        if(n == 0 or n == 4):
            mueve(0,1,0,1)
        elif(n == 1 or n == 5):
            mueve(2,3,1,0)
        elif(n == 2 or n == 6):
            mueve(4,5,0,1)
        elif(n == 3 or n == 7):
            mueve(6,7,1,0)
            picr = [0,2]
            picb = [6,8]

    print("Tablero Final")
    imp(tablero)


def main():
    print("\nTablero Inicial \n")
    imp(tablero)
    print("Movimientos")
    cambio(tablero)


main()
