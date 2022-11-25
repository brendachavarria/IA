LIST P=16F84A
INCLUDE <P16F84A.INC>
__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

CBLOCK 0x0C
ENDC


ORG 0
Inicio
call LCD_Inicializa
movlw Mensaje0 
call LCD_Mensaje 
sleep 

Mensajes
addwf PCL,F
Mensaje0
DT "Hola!, que tal? ", 0x00

INCLUDE <LCD_4BIT.INC>
INCLUDE <LCD_MENS.INC>
INCLUDE <RETARDOS.INC>
END