"""
50 puntos

Mapa del tesoro

Un pirata ha encontrado un mapa del tesoro,
pero las instrucciones son un tanto ...
ambiguas

El mapa consiste en una coordenada dada por columnas y filas
y una lista de pasos que debe dar que pueden ser:

Arriba == A
Abajo == V
Izquierda == <
Derecha == >

Si la lista tiene el simbolo 'A'
entonces la Fila incrementa

Si la lista tiene el simbolo 'V'
entonces la Fila decrementa

Si la lista tiene el simbolo '<'
entonces la Columna decrementa

Si la lista tiene el simbolo '>'
entonces la Columna incrementa

Siguiendo cada paso llegara a la ubicacion del tesoro

ejemplo:

def tesoro(Columna,Fila,Pasos):
	pass

P = ['>','>','>','>','>']

R = tesoro(0,0,P)

print(R)
# [5,0]


"""
def tesoro(C,F,P):
	R=[C,F]
	if not P:
		return R
	if P[0] == '>':
		R[0]+=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R
	if P[0] == '<':
		R[0]-=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R
	if P[0] == 'A':
		R[1]+=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R
	if P[0] == 'V':
		R[1]-=1
		P2=P[1:]
		R=tesoro(R[0],R[1],P2)
		return R

P=['>','>','>','>','>']
R= tesoro(0,0,P)
print(R)
