def imp():
    for f in tablero:
        print(*f)
    print("\n")

t = int(input("Dame el tamaño del tablero\n"))
tablero = []
for i in range(t):
    tablero.append(['-'] * t)
print("-- Tablero Inicial --")
imp()
