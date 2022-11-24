def imp():
    for f in tablero:
        print(*f)
    print("\n")

def revisa(fil, col):
        for i in range(t):
            if tablero[fil][i] == 'R' or tablero[i][col] == 'R':
                print("entro 1 fila y columna son:",fil,col, tablero[fil][i], tablero[i][col])
                imp()
                return False
        if fil <= col:
            c = col - fil
            f = 0
            print("entro 2 f y c son:",f,c)
        else:
            f = fil - col
            c = 0
            print("entro 3 f y c son:",f,c)
        while c < t and f < t:
            print("entro 4 f y c son:",f,c)
            if tablero[f][c] == 'R':
                print("entro 5 f y c son:",f,c)
                return False
            f += 1
            c += 1
        if fil <= col:
            f = 0
            c = col + fil
            print("entro 6 f y c son:",f,c)
            if c > (t-1):
                f = c - (t-1)
                c = (t-1)
                print("entro 7 f y c son:",f,c)
        else:
            c = (t-1)
            f = fil - ((t-1) - col)
            print("entro 8 f y c son:",f,c)

        while c >= 0 and f < t:
            print("entro 9")
            if tablero[f][c] == 'R':
                print("entro 10 f y c son:",f,c)
                return False
            f += 1
            c -= 1
        print("entro 11 f y c son:",f,c)
        return True

def agregar_reina(nr):
        if nr < 1:
            return True
        for nf in range(t):
            for nc in range(t):
                if revisa(nf, nc):
                    tablero[nf][nc] = 'R'
                    if agregar_reina(nr-1):
                        print("entro 12")
                        return True
                    else:
                        tablero[nf][nc] = '-'
                    #imp()
        return False


t = int(input("Dame el tamaño del tablero\n"))
tablero = []
for i in range(t):
    tablero.append(['*'] * t)

print("--- Tablero Inicial ---")
imp()
agregar_reina(t)
print("\n--- Tablero Final ---")
imp()
