def main():
    m = 8
    n = 8
    ciclo = True
    jj=0
    x = int(input("Ingresa la fila donde quieres que inicie tu caballo: \n"))
    y = int(input("Ingresa la columna donde quieres que inicie tu caballo: \n"))

    def kdeij(i, j):
      return 1 + i + m * j

    def ijdek(k):
      return divmod(k - 1, m)

    raiz = kdeij(x // 2, y // 2)
    mn = m * n # cantidad de vértices
    mn1 = mn + 1 # para range
    vecinos = [[] for k in range(mn1)]
    vecinos[0] = None
    vecinos = [[] for v in range(mn1)]
    vecinos[0] = None
    for i in range(m):
        for j in range(n):
            k = kdeij(i, j)
            ii = i - 2
            if ii >= 0:
                jj = j + 1
            if jj < n:
                kk = kdeij(ii, jj)
                vecinos[k].append(kk)
                vecinos[kk].append(k)
        ii = i - 1
        if ii >= 0:
            jj = j + 2
            if jj < n:
                kk = kdeij(ii, jj)
                vecinos[k].append(kk)
                vecinos[kk].append(k)
        ii = i + 1
        if ii < m:
            jj = j + 2
            if jj < n:
                kk = kdeij(ii, jj)
                vecinos[k].append(kk)
                vecinos[kk].append(k)
        ii = i + 2
        if ii < m:
            jj = j + 1
            if jj < n:
                kk = kdeij(ii, jj)
                vecinos[k].append(kk)
                vecinos[kk].append(k)

    def hamilton(m, n, vecinos, raiz=1, ciclo=True):

        def grado(v):
            a = [u for u in vecinos[v] if padre[u] == None]
            return len(a)

        def visitar(u):
            global llegamos
            if llegamos:
                return
            if len(ciclov) < mn: # todavía no llegamos
                a = [v for v in vecinos[u] if padre[v] == None]
                if a != []:
                    a.sort(key=grado)
                    for v in a:
                        padre[v] = u
                        ciclov.append(v)
                        visitar(v)
                        if llegamos:
                            return
                        padre[v] = None
                        ciclov.pop()
            elif (len(ciclov) == mn):
                if not ciclo:
                    llegamos = True
                if (u in vecinosraiz):
                    llegamos = True
                    ciclov.append(raiz)

        mn = m * n # cantidad de vértices
        mn1 = mn + 1
        vecinosraiz = vecinos[raiz]
        ciclov = [raiz] # empezamos desde la raíz
        padre = [None for v in range(mn1)]
        padre[raiz] = raiz
        cuenta = 0
        global llegamos
        llegamos = False
        visitar(raiz)
        print(40 * '-')
        print('Cantidad de entradas a visitar:', cuenta)
        if llegamos:
            return ciclov
        print('No hay ciclo de hamilton')
        return []

    ciclo = hamilton(m, n, vecinos, raiz, True)
    print(40 * '-')
    print('Ciclo resultante:')
    print(ciclo)
    print('Longitud:', len(ciclo))
    # cantidad de espacios para que no se superpongan los números
    s = len(str(mn1)) + 1
    formato = '{:' + str(s) + '}'
    # buscamos la inversa del ciclo
    pos = [None for v in range(mn1)]
    for p in range(mn):
        pos[ciclo[p]] = p + 1
    print(40 * '-')
    print('Recorrido del tablero (posiciones en cada movimiento):')
    for j in range(n-1, -1, -1):
        k = 1 + m * j
        for i in range(m):
            print(formato.format(pos[k + i]), end='')
        print()

main()
