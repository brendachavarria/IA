# ******************  EXAMÉN DIAGNOSTICO PROGRAMACIÓN LÓGICA Y FUNCIONAL  *****************************
#                          DOCENTE: VALDES ARTEAGA LEONARDO	
#                    ESTUDIANTE: CHAVARRIA RAMIREZ BRENDA LIZBETH
i=1
while (i==1):
    num=0

    while (num<1) :
        num= int(input("Dame un numero de tecla (debe ser entero y positivo): "))
        if num<=0:
            print("El valor dado no es valido")

    notas=["Do", "Do#", "Re", "Re#", "Mi", "Fa", "Fa#", "Sol", "Sol#", "La", "La#", "Si"]

    if num<=11:
        print("La nota es: "+ notas[num-1])

    if num>11:
        while num>11:
            num=num-12
        print("La nota es: "+ notas[num-1])