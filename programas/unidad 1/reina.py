from numpy import shape

class AcomodaReinas():
    def __init__(self):
        self.PosColumna = 0
        self.PosFila = 0
        self.SDer = 0
        self.SIzq = 0
        self.SArr = 0
        self.SAbj = 0
        self.Mapa = [[]]
        self.copiaMapa = [[]]
        self.SAbj_ayuda = 0
        self.ban = 0
        self.ban1 = 0
        self.fila_max,self.columna_max = shape(self.Mapa)
        self.cont = 0
        self.todo_resta = self.fila_max * self.columna_max
        self.todo = 0
        #controladores de bayes
        self.aux1 = 0
        self.avanza_izquierda = False
        #contador de reinas
        self.reina = 0
        self.reina_actual = 0

        self.row = 0
        self.column = 0
        self.save_fila = 0
        self.save_columna = 0
        self.cont_ocacion = 0
        self.cont_vuelta = 0
        self.ban2 = True

    def agregar(self):
        self.copiaMapa[self.PosFila][self.PosColumna] = 1
        self.reina = self.reina - 1
        self.reina_actual = self.reina_actual + 1

    def imprimir(self,conteo):
        if conteo == 0:
            self.copiaMapa[self.PosFila][self.PosColumna] = 0
            for l in self.copiaMapa:
                print(l)
            self.copiaMapa[self.PosFila][self.PosColumna] = 0
        else:
            self.Mapa[self.PosFila][self.PosColumna] = 1
            for l in self.Mapa:
                print(l)
            print("\n")
            self.Mapa[self.PosFila][self.PosColumna] = 0
            for l in self.copiaMapa:
                print(l)
            if self.PosFila == self.fila_max - 2 and self.PosColumna == self.columna_max - 2:
                print("\n#####   FINAL   #####\n")
                for l in self.copiaMapa:
                    print(l)
            if self.PosFila == self.fila_max - 1 and self.PosColumna == self.columna_max - 1:
                print("\n#####   FINAL   #####\n")
                for l in self.copiaMapa:
                    print(l)

    def mover(self, conteo = 1):
        print("\nConteo: ", self.cont, "Conteo Resta: ", self.todo_resta, "Fila: ", self.PosFila, "Columna: ", self.PosColumna, "Reina actual: ", self.reina_actual, "Reinas faltantes: ", self.reina, "Conteo: ", conteo)
        valor_pos_columna_minimo = self.columna_max-self.columna_max
        valor_pos_columna_maximo = self.columna_max
        valor_pos_fila_minimo = self.fila_max-self.fila_max
        valor_pos_fila_maximo = self.fila_max
        aux_columna = 0
        aux_fila = 0
        if self.cont == 0:
            aux_fila = self.PosFila
            aux_columna = self.PosColumna
        # ciclo
        if self.PosFila == valor_pos_fila_maximo - 1 and self.PosColumna == valor_pos_columna_maximo - 1  and self.reina > 0:
            if self.row == 4 and self.column == 4:
                self.cont = 0
                ban = True
                self.reina = self.row
                self.reina_actual = 0
                if self.cont_ocacion == valor_pos_columna_maximo - 1:
                    self.save_fila = self.save_fila + 1
                    self.PosFila = self.save_fila
                    self.PosColumna = 0
                    self.save_columna = 0
                    ban = False
                    #print("Entro establecer en 0 columna",self.PosColumna)
                    #print("Conteo de ocacion",self.cont_ocacion)
                    #print("PosFila",self.PosFila)
                else:
                    #print("Conteo de ocacion",self.cont_ocacion)
                    #print("Else PosFila ",self.PosFila)
                    self.PosFila = self.save_fila
                if ban == True:
                    self.cont_ocacion = self.cont_ocacion + 1
                    self.save_columna = self.save_columna + 1
                    self.PosColumna = self.save_columna
                self.copiaMapa = [[]]
                self.copiaMapa = [[0 for t in range(self.row)] for e in range(self.column)]
                print("aux fila",aux_fila)
                print("aux columna",aux_columna)

            if self.row > 4 and self.column > 4:
                self.cont_vuelta = self.cont_vuelta + 1
                #print("Entro mayor a 4",self.cont_vuelta)
                self.cont = 0
                self.reina = self.row
                self.reina_actual = 0
                if self.cont_vuelta == 1:
                    #print("Entro 1 conatdor vuelta",self.cont_vuelta)
                    self.save_columna = self.save_columna + 1
                    self.PosColumna = self.save_columna
                    self.PosFila = self.save_fila
                    #print("PosColumna",self.PosColumna)
                    #print("PosFila",self.PosFila)
                if self.cont_vuelta == 2:
                    #print("Entro 2 conatdor vuelta")
                    self.PosColumna = self.save_columna
                    self.PosFila = self.save_fila
                    #print("PosColumna",self.PosColumna)
                    #print("PosFila",self.PosFila)
                self.copiaMapa = [[]]
                self.copiaMapa = [[0 for t in range(self.row)] for e in range(self.column)]
                print("aux fila",aux_fila)
                print("aux columna",aux_columna)
        if self.copiaMapa[self.PosFila][self.PosColumna] == 0:
            self.agregar()
            valor = self.copiaMapa[self.PosFila][self.PosColumna]
            print("valor del map",valor)

            fila = self.PosFila
            aux_fila = fila
            columna = self.PosColumna
            aux_columna = columna
            print("fila",fila)
            print("columna",columna)

            if self.copiaMapa[self.PosFila][self.PosColumna] == 1:
                #dibujando columnas a la derecha
                if self.PosColumna < valor_pos_columna_maximo - 1:
                    while columna < valor_pos_columna_maximo - 1:
                        if self.copiaMapa[self.PosFila][self.PosColumna+1] == 0:
                            #print("ENTRO dibujando columnas a la derecha : + 1")
                            self.PosColumna = self.PosColumna + 1
                            self.copiaMapa[self.PosFila][self.PosColumna] = 2
                            self.cont = self.cont + 1
                        elif self.copiaMapa[self.PosFila][self.PosColumna+1] == 2:
                            #print("ENTRO dibujando columnas a la derecha : + 2")
                            self.PosColumna = self.PosColumna + 1
                        columna += 1
                    #Restableciendo
                    self.PosFila = aux_fila
                    self.PosColumna = aux_columna
                #dibujando columnas a la izquierda
                if self.PosColumna > valor_pos_columna_minimo:
                    while self.PosColumna > valor_pos_columna_minimo:
                        if self.copiaMapa[self.PosFila][self.PosColumna-1] == 0:
                            #print("ENTRO dibujando columnas a la izquierda : + 1")
                            self.PosColumna = self.PosColumna - 1
                            self.copiaMapa[self.PosFila][self.PosColumna] = 2
                            self.cont = self.cont + 1
                        elif self.copiaMapa[self.PosFila][self.PosColumna-1] == 2:
                            #print("ENTRO dibujando columnas a la izquierda : + 2")
                            self.PosColumna = self.PosColumna - 1
                    #Restableciendo
                    self.PosFila = aux_fila
                    self.PosColumna = aux_columna
                #dibujando columnas en diagonal derecha
                if self.PosColumna < valor_pos_columna_maximo - 1:
                    while self.PosColumna < valor_pos_columna_maximo - 1 and self.PosFila < valor_pos_fila_maximo - 1:
                        if self.PosFila < valor_pos_fila_maximo - 1:
                            #print("ENTRO dibujando columnas en diagonal derecha PosFila : + 1")
                            self.PosFila = self.PosFila + 1
                        if self.copiaMapa[self.PosFila][self.PosColumna+1] == 0:
                            #print("ENTRO dibujando columnas en diagonal derecha PosColumna : + 1")
                            self.PosColumna = self.PosColumna + 1
                            self.copiaMapa[self.PosFila][self.PosColumna] = 2
                            self.cont = self.cont + 1
                        elif self.copiaMapa[self.PosFila][self.PosColumna+1] == 2:
                            #print("acaba diagonal derecha")
                            #print("ENTRO dibujando columnas en diagonal derecha PosColumna : + 2")
                            self.PosColumna = self.PosColumna + 1
                    #Restableciendo
                    self.PosFila = aux_fila
                    self.PosColumna = aux_columna
                #dibujando columnas en diagonal izquierda
                if self.cont_vuelta == 2 and self.ban2 == True:
                    self.ban2 = False
                    if self.PosColumna > valor_pos_columna_minimo:
                        while self.PosColumna > valor_pos_columna_minimo and self.PosColumna >= valor_pos_columna_minimo:
                            if self.PosFila < valor_pos_fila_maximo - 1:
                                #print("ENTRO dibujando columnas en diagonal izquierda PosFila cont_vuelta : - 1")
                                self.PosFila = self.PosFila + 1
                            if self.copiaMapa[self.PosFila][self.PosColumna-1] == 0:
                                #print("ENTRO dibujando columnas en diagonal izquierda PosColumna cont_vuelta : - 1")
                                self.PosColumna = self.PosColumna - 1
                                self.copiaMapa[self.PosFila][self.PosColumna] = 2
                                self.PosFila = self.PosFila + 1
                                self.copiaMapa[self.PosFila][self.PosColumna] = 2
                                self.cont = self.cont + 1
                                self.cont = self.cont + 1
                            elif self.copiaMapa[self.PosFila][self.PosColumna-1] == 2:
                                #print("ENTRO dibujando columnas en diagonal izquierda PosColumna cont_vuelta : - 2")
                                self.PosColumna = self.PosColumna - 1
                        #Restableciendo
                        self.PosFila = aux_fila
                        self.PosColumna = aux_columna
                #dibujando columnas en diagonal izquierda normal
                if self.PosColumna > valor_pos_columna_minimo:
                    while self.PosColumna > valor_pos_columna_minimo:
                        if self.PosFila < valor_pos_fila_maximo - 1:
                            #print("ENTRO dibujando columnas en diagonal izquierda PosFila : - 1")
                            self.PosFila = self.PosFila + 1
                        if self.copiaMapa[self.PosFila][self.PosColumna-1] == 0:
                            #print("ENTRO dibujando columnas en diagonal izquierda PosColumna : - 1")
                            self.PosColumna = self.PosColumna - 1
                            self.copiaMapa[self.PosFila][self.PosColumna] = 2
                            self.cont = self.cont + 1
                        elif self.copiaMapa[self.PosFila][self.PosColumna-1] == 2:
                            #print("ENTRO dibujando columnas en diagonal izquierda PosColumna : - 2")
                            self.PosColumna = self.PosColumna - 1
                    #Restableciendo
                    self.PosFila = aux_fila
                    self.PosColumna = aux_columna
                #dibujando columnas hacia abajo
                if self.PosFila < valor_pos_fila_maximo - 1:
                    while self.PosFila < valor_pos_fila_maximo - 1:
                        if self.copiaMapa[self.PosFila+1][self.PosColumna] == 0:
                            #print("ENTRO dibujando columnas hacia abajo : + 1")
                            self.PosFila = self.PosFila + 1
                            self.copiaMapa[self.PosFila][self.PosColumna] = 2
                            self.cont = self.cont + 1
                        elif self.copiaMapa[self.PosFila+1][self.PosColumna] == 2:
                            if self.PosFila < valor_pos_columna_maximo - 1:
                                #print("ENTRO dibujando columnas hacia abajo : + 2")
                                self.PosFila = self.PosFila + 1
                    self.PosFila = aux_fila
                    self.PosColumna = aux_columna
        print("\nimprimir 2 ")
        self.imprimir(conteo)
        print("\nfila:",self.PosFila)
        print("columna:",self.PosColumna)
        #MOVER COLUMNAS A LA DERECHA SI ES IGUAL
        if  self.PosColumna == valor_pos_columna_minimo and self.SDer == 0 and self.copiaMapa[self.PosFila][self.PosColumna] == 2 or self.copiaMapa[self.PosFila][self.PosColumna] == 1:
            self.avanza_izquierda = False
            # generar numero aleatorio
            #print("\nPosColumna DERECHA IGUAL ")
            #print("contador",self.cont)
            self.PosColumna = self.PosColumna + 1
            #print("Valor PosColumna 1 + :",self.PosColumna)
        #MOVER COLUMNAS A LA DERECHA SI NO ES IGUAL
        elif self.PosColumna < valor_pos_columna_maximo and self.SDer == 0 and self.PosColumna > self.columna_max - self.columna_max and self.avanza_izquierda == False and self.copiaMapa[self.PosFila][self.PosColumna] == 2 or self.copiaMapa[self.PosFila][self.PosColumna] == 1:
            # generar numero aleatorio ###################################
            self.SAbj_ayuda = 0
            #print("\nPosColumna DERECHA MAXIMO")
            #print("contador",self.cont)
            self.PosColumna = self.PosColumna + 1
            self.SAbj_ayuda = 0
            #print("Valor PosColumna 2 + :",self.PosColumna)
        self.todo_resta = self.todo-self.cont+1
        #FILA MAXIMA DERECHA
        if self.PosColumna == valor_pos_columna_maximo and self.SAbj_ayuda == 0:
            #print("\nFILA MAXIMO DERECHA")
            #print("contador",self.cont)
            self.SDer == 0
            if self.PosFila == valor_pos_fila_maximo - 1:
                self.PosFila = self.PosFila + 1
                exit()
            else:
                self.PosFila = self.PosFila + 1
            self.PosColumna = 0
            #print("Valor PosFila 2 PosColumna + :",self.PosFila)

    def coordenada(self):
        fila = int(input("Ingresa la fila a iniciar el tablero: \n"))
        columna = int(input("Ingresa la columna a iniciar el tablero: \n"))
        self.copiaMapa[fila][columna] = 1
        self.PosFila = fila
        self.PosColumna = columna

    def dimensionar_matriz(self):
        self.row = int(input("Ingresa el numero de filas del tablero: \n"))
        self.column = int(input("Ingresa el numero de columnas del tablero: \n"))
        #dimensionar matriz
        self.Mapa = [[0 for t in range(self.row)] for e in range(self.column)]
        self.copiaMapa = [[0 for t in range(self.row)] for e in range(self.column)]
        #checar pares
        if self.row % 2 == 0 and self.column % 2 == 0:
            self.reina = self.row
            print("\nReina establecida",self.reina,"\n")
        else:
            print("No puedes agregar un numero impar al tablero")
            exit()

    def inicio(self, obj):
        self.dimensionar_matriz()
        self.fila_max,self.columna_max = shape(self.Mapa)
        self.todo = int(self.fila_max*self.columna_max)
        c = 0
        while self.cont <= self.fila_max * self.columna_max:
            print("----- MAPA -----")
            if c == 0:
                print("\nESTADO INICIAL DE REINAS")
                print("\nConteo: ", self.cont, "Conteo Resta: ", self.todo_resta, "Fila: ", self.PosFila, "Columna: ", self.PosColumna, "Reina actual: ",0, "Reinas faltantes: ", self.reina, "Conteo: ", 0)
                self.imprimir(c)
            c += 1
            self.mover()

def main():
    Acomoda_Reinas = AcomodaReinas()
    Acomoda_Reinas.inicio(Acomoda_Reinas)
main()
