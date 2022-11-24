LPreguntas = [
    [
        1,
        "¿Cuantos lados tiene tu figura?",
        "a) 0   b) 3   c) 4 \n"
    ],
    [
        2,
        "¿Radio constante?",
        "d) si   e) no \n"
    ],
    [3,"Circulo\n", "fin"],
    [4,"Elipse\n", "fin"],
    [
        5,"¿Tiene un angulo recto?",
        "f) si   g) no \n"
    ],
    [6,"Triangulo Rectangulo", "fin"],
    [
        7,"¿Cuantos lados iguales tiene?",
        "h) 3   i) 2   j)ninguno \n"
    ],
    [8,"Triangulo Equilatero", "fin"],
    [9,"Triangulo Isosceles", "fin"],
    [10,"Triangulo Escaleno", "fin"],
    [
        11,"¿Cuantos lados iguales tiene?",
        "k) 4 lados   l) 2 lados   m) 2 pares de lados \n"
    ],
    [12,"Cuadrado","fin"],
    [13,"Rombo","fin"],
    [
        14,"¿Cuantos angulos rectos tiene?",
        "n) 4   o) ninguno \n"
    ],
    [15,"Rectangulo","fin"],
    [16,"Romboide","fin"]
]
LRespuestas = [
    ["a",2],
    ["d",3],
    ["e",4],
    ["b",5],
    ["f",6],
    ["g",7],
    ["h",8],
    ["i",9],
    ["j",10],
    ["c",11],
    ["k",12],
    ["l",13],
    ["m",14],
    ["n",15],
    ["o",16]
]
"""
#----------------- Ejemplo de como se va haciendo del profe -------------------------
PreguntaActiva = 1
#Buscar pregunta PreguntaActiva
Dato = filter(lambda e: e[0] == PreguntaActiva,LPreguntas)
LDato = list(Dato)[0]
print(LDato)
print(LDato[1])
Resp = input(LDato[2])

Dato = filter(lambda e: e[0] == Resp, LRespuestas)
LDato = list(Dato)[0]
PreguntaActiva = LDato[1]

"""
#--------------------Intento 1 xD ----------------------
PreguntaActiva = 1
def adivinafig(PreguntaActiva):
    Dato = filter(lambda e: e[0] == PreguntaActiva,LPreguntas)
    LDato = list(Dato)[0]
    print(LDato[1])
    Resp = input(LDato[2])
    if (LDato[2] != "fin"):
        Dato = filter(lambda e: e[0] == Resp, LRespuestas)
        LDato = list(Dato)[0]
        PreguntaActiva = LDato[1]
        adivinafig(PreguntaActiva)
    elif (LDato[2] == "fin"):
        exit()

adivinafig(PreguntaActiva)
