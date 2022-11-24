"""
Nodos

Nodo = {
	Data
	Izq
	Der
}

Tabla de Adyaciencia


[[1,2,3,4],
 [2,4,3,7],
 ]

Lista de Adtacencia


L = [
	(1,2),
	(1,3),
	(1,4),
	(2,4),
	(1,9)
]


"""


BC_Animales = [
	["zorro","carnivoro"],
	["zorro","ladra"],
	["zorro","garras"],
	["zorro","leche"],
	["zorro","bigotes"],
	["zorro","pelo"],
	["zorro","nada"],
	["lobo","pelo"],
	["lobo","bigotes"],
	["lobo","ladra"],
	["lobo","leche"],
	["lobo","carnivoro"],
	["lobo","garras"],
	["lobo","nada"],
	["perro","bigotes"],
	["perro","carnivoro"],
	["perro","ladra"],
	["perro","leche"],
	["perro","garras"],
	["perro","pelo"],
	["perro","nada"],
	["mapache","bigotes"],
	["mapache","caminar en dos patas"],
	["mapache","omnivoro"],
	["mapache","cola anillada"],
	["mapache","leche"],
	["mapache","pelo"],
	["mapache","garras"],
	["mapache","nada"],
	["gato","ronronean"],
	["gato","bigotes"],
	["gato","leche"],
	["gato","carnivoro"],
	["gato","pelo"],
	["gato","garras"],
	["gato","nada"],
	["panda","caminar en dos patas"],
	["panda","hervivoro"],
	["panda","leche"],
	["panda","pelo"],
	["panda","garras"],
	["panda","nada"],
	["panda","caminar en dos patas"],
	["tigre","ronronean"],
	["tigre","bigotes"],
	["tigre","leche"],
	["tigre","carnivoro"],
	["tigre","garras"],
	["tigre","nada"],
	["tigre","pelo"],
	["delfin","leche"],
	["delfin","nada"],
	["delfin","carnivoro"],
	["cocodrilo","carnivoro"],
	["cocodrilo","reptan"],
	["cocodrilo","nada"],
	["cocodrilo","escamas"],
	["cocodrilo","garras"],
	["cocodrilo","caminar en dos patas"],
	["axolote","carnivoro"],
	["axolote","nada"],
	["tortuga","nada"],
	["tortuga","hervivoro"],
	["tortuga","reptan"],
	["tortuga","caparazon"]
]

#'carnivoro', 'leche', 'garras', ´bigotes', 'pelo', 'ladra'
BC_Preguntas = {
	"ronronean": "¿Tu animalito ronronea?",
	"carnivoro": "¿Tu animalito es carnivoro?",
	"leche": "¿Tu animalito bebe leche?",
	"nada": "¿Tu animalito nada?",
	"hervivoro": "¿Tu animalito es hervivoro?",
	"reptan": "¿Tu animalito repta?",
	"caminar en dos patas": "¿Tu animalito camina en dos patas?",
	"escamas": "¿Tu animalito tiene escamas?",
	"bigotes": "¿Tu animalito tiene bigotes?",
	"ladra": "¿Tu animalito ladra?",
	"pelo": "¿Tu animalito tiene pelo?",
	"cola anillada": "¿Tu animalito tiene cola anillada?",
	"garras": "¿Tu animalito tiene garras?",
	"omnivoro": "¿Tu animalito es omnivoro?",
}

BC_Clases = {
	"10100100110101" : ["gato","tigre"],
	"10100111110100" : ["zorro", "lobo", "perro"],
	"00100000010000" : ["ajolote"],
	"11010100111100" : ["mapache"],
	"01000110110100" : ["panda"],
	"00100000110000" : ["delfin"],
	"01101100010010" : ["cocodrilo"]
}

#Res = map(lambda item: item[1], BC_Animales)#(mi forma)
#Lista = set(list(Res))
#print(Lista)

Res = map(lambda item: item[1], BC_Animales)#(la del profe)
cUnico = set(Res)
LUnico = list(cUnico)
LUnico.sort()
print(LUnico)

LRes = []
for caracteristica in LUnico:
	print(BC_Preguntas[caracteristica])
	R = input("1) Si 2) No \n")
	LRes.append('1' if R == "1" else '0')
print("Respuestas")
SRes = "".join(LRes)
print(SRes)

print("Tu animalito es: ")
print(BC_Clases[SRes])
