import json
from pathlib import Path
from collections import defaultdict
import re
JPATH ='.'

ListaPuntuacion = [
    ',',
    '?',
    '¿',
    '-',
    '.',
    '!',
    '¡',
    '”',
    '“',
    '"',
    '\'',
    ':',
    '####'
]

prepo = [
"a","ante","bajo","con","contra","de","desde","durante","en","entre","hacia","hasta",
"mediante","para","par","segun","sin","so","sobre","tras","versus","via","según","en contra de",
"a pesar de","a favor de","el","la","lo","las","los","un","una","unas","unos",")","(","pero",
"mas","sino","sino que","ni","no solo","sino tambien","tanto","como","asi como","igual",
"igual que","lo mismo","lo mismo que","mientras que","o bien","bien","ya","ora","sea","fuera",
"porque","ya que","dado que","visto que","puesto que","pues","como si","sin que","aun cuando",
"si bien","por mas que","por mucho que","a menos que","con tal de que","siempre que",
"siempre y cuando","salvo que","cada vez que","y", "ni", "pero", "aunque","puesto que",
"a fin de que","de manera que"

]

DM = {
    "SPAM": [],
    "NoSPAM": []
}

def obtiene_spam_y_nospam():
    s = list(DM['SPAM'])
    nus = len(s)
    ns = list(DM['NoSPAM'])
    nuns = len(ns)
    return(s,nus,ns,nuns)

def juntar_palabras(s,nus,ns,nuns):
    sp=[]
    nosp=[]
    y=0
    e=0
    while(nus > y):
        p = s[y]
        #print(p,"\n\n")
        y += 1
        if(y == 0):
            sp = p
        else:
            sp = sp + p
    #print(sp, "\n\n")
    while(nuns > e):
        p = ns[e]
        #print(p,"\n\n")
        e += 1
        if(e == 0):
            nosp = p
        else:
            nosp = nosp + p
    nosp.pop(0)
    #print(nosp)
    return(sp,nosp)

def quita_prepo(sp,nosp):
    spam = []
    nospam = []
    todas = []
    for element in sp:
        if element not in prepo:
            spam.append(element)
    for element in nosp:
        if element not in prepo:
            nospam.append(element)
    todas = spam + nospam
    return(spam,nospam,todas)

def repeticiones(pam,nopam,todas):
    #lista = [1,2,3,1,2]
    DS = dict(zip(pam,map(lambda x: pam.count(x),pam)))
    DNS = dict(zip(nopam,map(lambda x: nopam.count(x),nopam)))
    DT = dict(zip(todas,map(lambda x: todas.count(x),todas)))
    #print("DS",DS,"\n\nDNS",DNS,"\n\nDT",DT)
    return(DS,DNS,DT)

def porcentajes(DS,DNS,DT):
    x = 0
    PS = dict()
    PNS =dict()
    LDT = list(DT.keys())
    LDS = list(DS.keys())
    LDNS = list(DNS.keys())
    #a = DT[LDS[x]]
    #print(a)
    for llave in LDT:
        val = DT[LDT[x]]
        #print(val)
        pal = LDT[x]
        #print(pal)
        y = 0
        for clav in LDS:
            if(pal == LDS[y]):
                valds = DS[pal]
                if (val == valds):
                    PS[pal] = 100
                    #print(100)
                else:
                    t = 100 / val
                    v = t * valds
                    #print(v)
                    PS[pal] = v
                    #print(PS[pal])
            y +=1
        #print("busco en LDNS")
        y = 0
        for clav in LDNS:
            if(pal == LDNS[y]):
                valds = DNS[pal]
                if (val == valds):
                    PNS[pal] = 100
                    #print(100)
                else:
                    t = 100 / val
                    v = t * valds
                    #print(v)
                    PNS[pal] = v
            y += 1
        x += 1
    #print("PS",PS,"\n\n\nPNS",PNS)
    return(PS,PNS)

def listaspam(PS):
    x = 0
    l = 0
    llaves=list(PS.keys())
    SP = []
    #print(llaves)
    for pal in PS:
        if (PS[llaves[x]] > 60):
            SP.append(llaves[x])
            x += 1
        else:
            #print("no entra en spam")
            x += 1
    #print(SP)
    return(SP)

MSGFILE = 'spam.txt'
PATH = Path('.').resolve()
msg = PATH / MSGFILE

def main():
    with msg.open(encoding="utf8") as men:
        GUARDADO = "SPAM"
        for linea in men:
            if '####' in linea:
                GUARDADO = "NoSPAM"
                #continue
            LT = [ e for e in linea.lower().strip().split(' ') if e]
            def F(palabra,ListaP):
                for simb in ListaP:
                    if simb in palabra:
                        return palabra.replace(simb,'')
                return palabra
            LT = [F(e,ListaPuntuacion) for e in LT ]
            #print(LT, type(LT))
            DM[GUARDADO].append(LT[:])
    s,nus,ns,nuns = obtiene_spam_y_nospam()
    sp,nosp = juntar_palabras(s,nus,ns,nuns)
    #print("SP inicial",sp,"\n\nNOSP inicial",nosp,"\n\n")
    pam,nopam,todas = quita_prepo(sp,nosp)
    #print("SP modificado",pam,"\n\nNOSP modificado",nopam,"\n\n\nTODASSSS",todas)
    #print(sp,"\n\n",nosp)
    DS,DNS,DT = repeticiones(pam,nopam,todas)
    #print("DS",DS,"\n\nDNS",DNS,"\n\nDT",DT)
    PS,PNS=porcentajes(DS,DNS,DT)
    lps = listaspam(PS)
    Dic = {"PS": PS, "PNS": PNS, "Lista palabras spam":lps}
    JSal = Path(JPATH) / 'SPAM.json'
    with JSal.open('w') as jsonsal:
        jsonsal.write(json.dumps(Dic))
    #print("¡¡Se creo el archivo de porcentajes!!")
main()
