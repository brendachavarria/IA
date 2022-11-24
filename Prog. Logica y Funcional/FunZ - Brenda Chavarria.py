"""
	Traslade la funcion matematica anterior
	a una funcion de python
	
	def zeta(n):
		pass
	
	#Zeta 0 ==> 1
	#Zeta 1 ==> 4
	#Zeta 2 ==> 25
	#Zeta 3 ==> 226
	#Zeta 30 ==> 76218876680129540009492280126966594431350261921
"""
def Z(N):
	if N==0:
		return(1)
	return((Z(N-1)*(3*N))+1)

print("Z(0) ==> "+ str(Z(0)))
print("Z(1) ==> "+ str(Z(1)))
print("Z(2) ==> "+ str(Z(2)))
print("Z(3) ==> "+ str(Z(3)))
print("Z(30) ==> "+ str(Z(30)))
