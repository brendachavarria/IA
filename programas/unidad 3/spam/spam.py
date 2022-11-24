from pathlib import Path
from collections import defaultdict
import re
import json
import nose

JPATH ='.'
JNAME ='SPAM.json'
MSGFILE = 'mensaje.txt'
PATH = Path('.').resolve()
msg = PATH / MSGFILE

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

DICM = []

def juntar_pal(nl,DICM):
    sp=[]
    y=0
    #print(nl)
    #print(DICM)
    while(nl > y):
        p = DICM[y]
        #print(p,"\n\n")
        y += 1
        if(y == 0):
            sp = p
        else:
            sp = sp + p
    return(sp)

def quita_prep(sp):
    spam = []
    for element in sp:
        if element not in prepo:
            spam.append(element)
    res = []
    for ele in spam:
        if ele.strip():
            res.append(ele)
    return(spam)

def spamonospam(lps,men):
    npm = len(men)
    npsm = 0
    por = (npm/5)*3
    x = 0
    for pal in men:
        y=0
        for pals in lps:
            if(men[x] == lps[y]):
                npsm += 1
                y += 1
            else:
                y += 1
        y += 1
    print(npsm)
    #print(por)
    if(npsm >= por):
        print("Es un mensaje de SPAM")
    else:
        print("No es un mensaje de SPAM")

def sonsppor(PS,men):
    ps = 0
    nps = 0
    prom = 0
    x = 0
    llaves = list(PS.keys())
    #print(llaves)
    for pal in men:
        y = 0
        for pals in llaves:
            if (men[x] == llaves[y]):
                nps += 1
                #print(PS[men[x]])
                ps = ps + PS[men[x]]
                y += 1
            else:
                y += 1
        x += 1
    prom = ps/nps
    if(prom >= 65):
        print("Es un mensaje de SPAM", prom)
    else:
        print("No es un mensaje de SPAM")
    #print("NUMERO DE PALABRAS CON SPAM = ",nps,"\n\nPORCENTAJE DE PALABRAS CON SPAM",ps,"\n\nPROMEDIO DE SPAM = ",prom)



def main():
    with msg.open(encoding="utf8") as men:
        for linea in men:
            LT = [ e for e in linea.lower().strip().split(' ') if e]
            def F(palabra,ListaP):
                for simb in ListaP:
                    if simb in palabra:
                        return palabra.replace(simb,'')
                return palabra
            LT = [F(e,ListaPuntuacion) for e in LT ]
            DICM.append(LT[:])
        nl = len(DICM)
        me = juntar_pal(nl,DICM)
        men = quita_prep(me)
        #print("ESTE ES EL NUEVO MENSAJE",men)
        Ruta = Path(JPATH) / JNAME #empiezo a manejar el archivo json
        if Ruta.exists():
            #print('El archivo Json existe')
            with Ruta.open() as archivojson:
                porcentajes = json.load(archivojson)
        #print(porcentajes)
        PS=porcentajes['PS']
        #print(PS)
        PNS=porcentajes['PNS']
        lps = porcentajes['Lista palabras spam']
        #print("LISTA SPAM: ",lps,"\n")
        #spamonospam(lps,men)
        sonsppor(PS,men)

main()
