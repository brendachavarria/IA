def impListaPar(L,num):
    pospares=""
    if num <= len(L)-1:
        if not L:
            return None
        if num % 2 == 0:
            num+=1
            pospares=L[num]
        else:
            num+=1
        impListaPar(L,num)
    print(pospares)
        
impListaPar([1,2,3,4,5,6,7,8,9,55],0)