apunte profe
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
    [3,"Circulo\n"],
    [4,"Elipse\n"]
]
LRespuestas = [
    ["a",2],
    ["d",3],
    ["e",4]
]

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
