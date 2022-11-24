def calculoz( n, index, z):
    if n > index:
        if index == 0:
            index+=1
            z=[1]
            calculoz(n,index,z)
        if index > 0:
            i=index-1
            va=((z[i]) * (3*index)) + 1
            z= z + [va]
            index+=1
            calculoz(n,index,z)
    if n == 0:
        print(1) 
        return
    if n == index:
        i=index-1
        va=((z[i]) * (3*index)) + 1
        z= z + [va]
        print(va)
        return

a=[]
print("Z(0)=")
calculoz(0, 0, a)

print("Z(1)=")
calculoz(1, 0, a)

print("Z(2)=")
calculoz(2, 0, a)

print("Z(3)=")
calculoz(3, 0, a)

print("Z(30)=")
calculoz(30, 0, a)