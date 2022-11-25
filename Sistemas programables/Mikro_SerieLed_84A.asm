
_Ciclo1:

;Mikro_SerieLed_84A.c,3 :: 		void Ciclo1(){
;Mikro_SerieLed_84A.c,4 :: 		if(ban2==1){
	MOVLW      0
	XORWF      _ban2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Ciclo120
	MOVLW      1
	XORWF      _ban2+0, 0
L__Ciclo120:
	BTFSS      STATUS+0, 2
	GOTO       L_Ciclo10
;Mikro_SerieLed_84A.c,5 :: 		sal2=sal2+cont2;
	MOVF       _cont2+0, 0
	ADDWF      _sal2+0, 0
	MOVWF      R1+0
	MOVF       _sal2+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont2+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _sal2+0
	MOVF       R1+1, 0
	MOVWF      _sal2+1
;Mikro_SerieLed_84A.c,6 :: 		cont2=cont2/2;
	RRF        _cont2+1, 1
	RRF        _cont2+0, 1
	BCF        _cont2+1, 7
	BTFSC      _cont2+1, 6
	BSF        _cont2+1, 7
;Mikro_SerieLed_84A.c,7 :: 		if(sal2==255){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Ciclo121
	MOVLW      255
	XORWF      R1+0, 0
L__Ciclo121:
	BTFSS      STATUS+0, 2
	GOTO       L_Ciclo11
;Mikro_SerieLed_84A.c,8 :: 		PORTB=sal2;
	MOVF       _sal2+0, 0
	MOVWF      PORTB+0
;Mikro_SerieLed_84A.c,9 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Ciclo12:
	DECFSZ     R13+0, 1
	GOTO       L_Ciclo12
	DECFSZ     R12+0, 1
	GOTO       L_Ciclo12
	DECFSZ     R11+0, 1
	GOTO       L_Ciclo12
	NOP
;Mikro_SerieLed_84A.c,10 :: 		sal2=127;
	MOVLW      127
	MOVWF      _sal2+0
	MOVLW      0
	MOVWF      _sal2+1
;Mikro_SerieLed_84A.c,11 :: 		ban2=0;
	CLRF       _ban2+0
	CLRF       _ban2+1
;Mikro_SerieLed_84A.c,12 :: 		cont2=64;
	MOVLW      64
	MOVWF      _cont2+0
	MOVLW      0
	MOVWF      _cont2+1
;Mikro_SerieLed_84A.c,13 :: 		}
L_Ciclo11:
;Mikro_SerieLed_84A.c,14 :: 		}else{
	GOTO       L_Ciclo13
L_Ciclo10:
;Mikro_SerieLed_84A.c,15 :: 		sal2=sal2-cont2;
	MOVF       _cont2+0, 0
	SUBWF      _sal2+0, 0
	MOVWF      R1+0
	MOVF       _cont2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _sal2+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _sal2+0
	MOVF       R1+1, 0
	MOVWF      _sal2+1
;Mikro_SerieLed_84A.c,16 :: 		cont2=cont2/2;
	RRF        _cont2+1, 1
	RRF        _cont2+0, 1
	BCF        _cont2+1, 7
	BTFSC      _cont2+1, 6
	BSF        _cont2+1, 7
;Mikro_SerieLed_84A.c,17 :: 		if(sal2<=0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Ciclo122
	MOVF       R1+0, 0
	SUBLW      0
L__Ciclo122:
	BTFSS      STATUS+0, 0
	GOTO       L_Ciclo14
;Mikro_SerieLed_84A.c,18 :: 		sal2=128;
	MOVLW      128
	MOVWF      _sal2+0
	CLRF       _sal2+1
;Mikro_SerieLed_84A.c,19 :: 		cont2=64;
	MOVLW      64
	MOVWF      _cont2+0
	MOVLW      0
	MOVWF      _cont2+1
;Mikro_SerieLed_84A.c,20 :: 		ban2=1;
	MOVLW      1
	MOVWF      _ban2+0
	MOVLW      0
	MOVWF      _ban2+1
;Mikro_SerieLed_84A.c,21 :: 		}
L_Ciclo14:
;Mikro_SerieLed_84A.c,22 :: 		}
L_Ciclo13:
;Mikro_SerieLed_84A.c,23 :: 		}
L_end_Ciclo1:
	RETURN
; end of _Ciclo1

_Ciclo2:

;Mikro_SerieLed_84A.c,25 :: 		void Ciclo2(){
;Mikro_SerieLed_84A.c,26 :: 		if(ban1==1){
	MOVLW      0
	XORWF      _ban1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Ciclo224
	MOVLW      1
	XORWF      _ban1+0, 0
L__Ciclo224:
	BTFSS      STATUS+0, 2
	GOTO       L_Ciclo25
;Mikro_SerieLed_84A.c,27 :: 		sal1=sal1+cont1;
	MOVF       _cont1+0, 0
	ADDWF      _sal1+0, 0
	MOVWF      R1+0
	MOVF       _sal1+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont1+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _sal1+0
	MOVF       R1+1, 0
	MOVWF      _sal1+1
;Mikro_SerieLed_84A.c,28 :: 		cont1=cont1*2;
	RLF        _cont1+0, 1
	RLF        _cont1+1, 1
	BCF        _cont1+0, 0
;Mikro_SerieLed_84A.c,29 :: 		if(sal1>255){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Ciclo225
	MOVF       R1+0, 0
	SUBLW      255
L__Ciclo225:
	BTFSC      STATUS+0, 0
	GOTO       L_Ciclo26
;Mikro_SerieLed_84A.c,30 :: 		sal1=254;
	MOVLW      254
	MOVWF      _sal1+0
	CLRF       _sal1+1
;Mikro_SerieLed_84A.c,31 :: 		ban1=0;
	CLRF       _ban1+0
	CLRF       _ban1+1
;Mikro_SerieLed_84A.c,32 :: 		cont1=2;
	MOVLW      2
	MOVWF      _cont1+0
	MOVLW      0
	MOVWF      _cont1+1
;Mikro_SerieLed_84A.c,33 :: 		}
L_Ciclo26:
;Mikro_SerieLed_84A.c,34 :: 		}else{
	GOTO       L_Ciclo27
L_Ciclo25:
;Mikro_SerieLed_84A.c,35 :: 		sal1=sal1-cont1;
	MOVF       _cont1+0, 0
	SUBWF      _sal1+0, 0
	MOVWF      R1+0
	MOVF       _cont1+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _sal1+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _sal1+0
	MOVF       R1+1, 0
	MOVWF      _sal1+1
;Mikro_SerieLed_84A.c,36 :: 		cont1=cont1*2;
	RLF        _cont1+0, 1
	RLF        _cont1+1, 1
	BCF        _cont1+0, 0
;Mikro_SerieLed_84A.c,37 :: 		if(sal1<1){
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Ciclo226
	MOVLW      1
	SUBWF      R1+0, 0
L__Ciclo226:
	BTFSC      STATUS+0, 0
	GOTO       L_Ciclo28
;Mikro_SerieLed_84A.c,38 :: 		sal1=1;
	MOVLW      1
	MOVWF      _sal1+0
	MOVLW      0
	MOVWF      _sal1+1
;Mikro_SerieLed_84A.c,39 :: 		cont1=2;
	MOVLW      2
	MOVWF      _cont1+0
	MOVLW      0
	MOVWF      _cont1+1
;Mikro_SerieLed_84A.c,40 :: 		ban1=1;
	MOVLW      1
	MOVWF      _ban1+0
	MOVLW      0
	MOVWF      _ban1+1
;Mikro_SerieLed_84A.c,41 :: 		}
L_Ciclo28:
;Mikro_SerieLed_84A.c,42 :: 		}
L_Ciclo27:
;Mikro_SerieLed_84A.c,43 :: 		}
L_end_Ciclo2:
	RETURN
; end of _Ciclo2

_main:

;Mikro_SerieLed_84A.c,45 :: 		void main() {
;Mikro_SerieLed_84A.c,46 :: 		short aux1=0;
	CLRF       main_aux1_L0+0
;Mikro_SerieLed_84A.c,47 :: 		TRISA=0B00010000;
	MOVLW      16
	MOVWF      TRISA+0
;Mikro_SerieLed_84A.c,48 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_SerieLed_84A.c,49 :: 		do{
L_main9:
;Mikro_SerieLed_84A.c,50 :: 		if (PORTA.B4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_main12
;Mikro_SerieLed_84A.c,51 :: 		aux1=~aux1;
	COMF       main_aux1_L0+0, 1
;Mikro_SerieLed_84A.c,52 :: 		while (PORTA.B4==1)
L_main13:
	BTFSS      PORTA+0, 4
	GOTO       L_main14
;Mikro_SerieLed_84A.c,53 :: 		sal2=128;
	MOVLW      128
	MOVWF      _sal2+0
	CLRF       _sal2+1
	GOTO       L_main13
L_main14:
;Mikro_SerieLed_84A.c,54 :: 		sal1=1;
	MOVLW      1
	MOVWF      _sal1+0
	MOVLW      0
	MOVWF      _sal1+1
;Mikro_SerieLed_84A.c,55 :: 		}
L_main12:
;Mikro_SerieLed_84A.c,56 :: 		if(aux1==0){
	MOVF       main_aux1_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main15
;Mikro_SerieLed_84A.c,57 :: 		PORTB=sal1;
	MOVF       _sal1+0, 0
	MOVWF      PORTB+0
;Mikro_SerieLed_84A.c,58 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
;Mikro_SerieLed_84A.c,59 :: 		Ciclo2();
	CALL       _Ciclo2+0
;Mikro_SerieLed_84A.c,60 :: 		}else{
	GOTO       L_main17
L_main15:
;Mikro_SerieLed_84A.c,61 :: 		PORTB=sal2;
	MOVF       _sal2+0, 0
	MOVWF      PORTB+0
;Mikro_SerieLed_84A.c,62 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;Mikro_SerieLed_84A.c,63 :: 		Ciclo1();
	CALL       _Ciclo1+0
;Mikro_SerieLed_84A.c,64 :: 		}
L_main17:
;Mikro_SerieLed_84A.c,65 :: 		}while(1);
	GOTO       L_main9
;Mikro_SerieLed_84A.c,66 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
