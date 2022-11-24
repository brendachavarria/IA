import anlexsin as als
import ansem as asm
import argparse
from miniboome import MiniBoome
from pathlib import Path

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
				VMB.Paso()
				VMB.ImprimirEstado()
				VMB.Detener()
				print("#############################")
	else:
		print("No encontre el archivo:",args.codigo)


if __name__ == "__main__":
	with open("ejemplo.boome") as codigo_fuente:
		R = als.analizador_lexico_sintactico(codigo_fuente.readlines())
		if(R[0]):
			for inst in R[1]:
				print(asm.sentencias(inst))
				main()
