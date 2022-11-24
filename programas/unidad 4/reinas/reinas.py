def compone_tab():
    for nf in range(t):
        for nc in range(t):
            if tablero[nf][nc] == 'R':
                tablero[nf][nc]
            else:
                tablero[nf][nc] = '-'

def imp():
    for f in tablero:
        print(*f)
    print("\n")

def revisa(fil, col):
        for i in range(t):
            if tablero[fil][i] == 'R' or tablero[i][col] == 'R':
                return False
        if fil <= col:
            c = col - fil
            f = 0
        else:
            f = fil - col
            c = 0
        while c < t and f < t:
            if tablero[f][c] == 'R':
                imp()
                return False
            f += 1
            c += 1
        if fil <= col:
            f = 0
            c = col + fil
            if c > (t-1):
                f = c - (t-1)
                c = (t-1)
        else:
            c = (t-1)
            f = fil - ((t-1) - col)

        while c >= 0 and f < t:
            if tablero[f][c] == 'R':
                imp()
                return False
            f += 1
            c -= 1
        return True

def agregar_reina(n):
        if n < 1:
            imp()
            return True
        for nf in range(t):
            for nc in range(t):
                if revisa(nf, nc):
                    tablero[nf][nc] = 'R'
                    if agregar_reina(n-1):
                        return True
                    else:
                        tablero[nf][nc] = '*'
        imp()
        return False

t = int(input("Dame el tamaño del tablero\n"))
tablero = []
for i in range(t):
    tablero.append(['-'] * t)
print("--- Tablero Inicial ---")
imp()
agregar_reina(t)
compone_tab()
print("\n--- Tablero Final ---")
imp()
