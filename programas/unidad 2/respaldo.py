import json
from pathlib import Path
from collections import defaultdict
JPATH ='.'
JNAME ='BC_Animales.json'
JNAME1 = 'BC_Preguntas.json'

def genera_pregunta(LC):
    Resp = dict()
    for car in LC:
        print('Para la caracteristica "', car, '"')
        pg = input('Escribe la pregunta adecuada \n')
        Resp[car] = pg
    return Resp

def genera_respuesta(carac,preg):
    x=0
    LRes = []
    for caracteristica in carac:
        print(preg[x])
        R = input('1) Si 2) No \n')
        LRes.append('1' if R == '1' else '0')
        x += 1
    SRes = "".join(LRes)
    return SRes

def genera_clases(carac,preg,Lanimales):
    a=0
    clases = dict()
    for animalito in Lanimales:
        print("Describe la caracteristicas de ", Lanimales[a])
        re = genera_respuesta(carac,preg)
        res = [(str(re),str(Lanimales[a]))]
        for r in res:
            clases.setdefault(r[0],[]).append(r[1])
        #print("ESTO TIENE EL DICCIONARIO POR AHORA: \n",clases)
        a += 1
    return clases

def main():
    Ruta = Path(JPATH) / JNAME
    if Ruta.exists():
        print('El archivo Json existe')
        with Ruta.open() as archivojson:
            BC_Animales = json.load(archivojson)
            ############################
            Res = map(lambda item: item[1], BC_Animales)
            cUnico = set(Res)
            LUnico = list(cUnico)
            LUnico.sort()
            print(LUnico)
            ############################
            R = genera_pregunta(LUnico)
            print(R)
            ############################
            JSalida = Path(JPATH) / 'BC_Preguntas.json'
            with JSalida.open('w') as jsonsalida:
                jsonsalida.write(json.dumps(R))
            print("¡¡Hecho!!")
            ############################ ENTRENAMIENTO
            carac = list(R.keys())
            preg = list(R.values())
            animal = map(lambda item: item[0], BC_Animales)
            aUnico = set(animal)
            Lanimales = list(aUnico)
            Lanimales.sort()
            print(Lanimales)
            C = genera_clases(carac,preg,Lanimales)
            JSal = Path(JPATH) / 'BC_Clases.json'
            with JSal.open('w') as jsonsal:
                jsonsal.write(json.dumps(C))
            print("¡¡Se hicieron las clases!!")

    else:
        print('Siga participando, suerte la proxima')


if __name__ == "__main__":
    main()
