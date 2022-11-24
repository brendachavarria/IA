"""
	z(0) = 1
	z(N) = (z(N-1) * 3N) + 1
	z(1) = (z(1-1) * 3(1)) + 1 = (z(0) * 3) + 1 = (1*3) + 1 = 4
	Z(2) = (z(2-1) * 3(2)) + 1 = (z(1) * 3(2)) +1 = (4 * 6) + 1 = 24 + 1 = 25
	Z(3) = (z(3-1) * 3(3)) + 1 = (z(2) * 9) + 1 = (25 * 9) + 1 = 226
	z(30) = (z(30-1) * 3(30)) + 1 = (z(29) * 90) + 1 = 
	
	Traslade la funcion matematica anterior
	a una funcion de python
	
	def zeta(n):
		pass
	
	#Zeta 0 ==> 1
	#Zeta 1 ==> 4
	#Zeta 2 ==> 25
	#Zeta 3 ==> 226
	#Zeta 30 ==> 76218876680129540009492280126966594431350261921

	76218876680129540009492280126966594431350261921

"""
#z(N) = (z(N-1) * 3N) + 1

def num(x, o):
	n=[]
	if x >= 1 :
		n= o + [x]
		#print(n)
		x-=1
		num(x, n)

	if x == 0 :
		n= n + [0]
		print("esto es lo que pasa:")
		print(n)
		return n

def Zeta(N):
	a=[]
	w=0
	if not N: #reviso si hay elementos en N
		return 0

	a=num(N,a)
	print("esto recibe")
	print(a)

	if N == 0:
		return 1

	if w >= 1:
		return 0

#y=[]
#print(num(5, y))

#print("Z(0)=")
#print(Zeta(0))

print("Z(1)=")
print(Zeta(2))

#print("Z(2)=")
#print(Zeta(2))

#print("Z(3)=")
#print(Zeta(3))

#print("Z(30)=")
#print(Zeta(30))