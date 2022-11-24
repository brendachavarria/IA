import anlexsin as als
import ansem as asm
import argparse
from miniboome import MiniBoome
from pathlib import Path
#HECHO POR BRENDA LIZBETH CHAVARRIA RAMIREZ Y PALOMA GUADALUPE VARGAS ALEGRIA
def main():
	parser = argparse.ArgumentParser(description='Interprete de boome')
	parser.add_argument(
		'codigo',
		type=str,
		help='El archivo a ejectuar'
	)
	args = parser.parse_args()
	print("El codigo a ejectuar es:",args.codigo)

	RutaArchivo = Path(args.codigo)
	if RutaArchivo.exists():
		print("El archivo si existe")
		with RutaArchivo.open() as Codigo:
			ListaInstrucciones = []
			for LineaCodigo in Codigo:
				ListaInstrucciones.append(LineaCodigo.strip())
			#print(ListaInstrucciones)
			VMB = MiniBoome()
			VMB.CargarInstrucciones(ListaInstrucciones)
			print("#############################")
			VMB.ImprimirEstado()
			print("#############################")
			while VMB.IndicadorInstruccion < len(VMB.Instrucciones):
				In = VMB.Instrucciones[VMB.IndicadorInstruccion]
				lon = In.split()
				VMB.Registro.append(In)
				#print(lon)
				if len(lon)==1:
					#print("ENTRO EN PASO")
					VMB.Sensores()
					VMB.Paso()
					VMB.ImprimirEstado()
					VMB.Detener()
				elif len(lon)==3:
					#print("ENTRO EN ASIGNACION")
					VMB.Sensores()
					VMB.Asigna(lon)
				elif len(lon)==4:
					#print("ENTRO EN SALTO")
					VMB.Sensores()
					VMB.Salta(lon)
				else:
					print("ERROR NO ES UNA INSTRUCCION VALIDA")

	else:
		print("No encontre el archivo:",args.codigo)


if __name__ == "__main__":
	main()
