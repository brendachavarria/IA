
_main:

;Mickro_reloj.c,1 :: 		void main() {
;Mickro_reloj.c,2 :: 		int led=1,ban=1;
	MOVLW      1
	MOVWF      main_led_L0+0
	MOVLW      0
	MOVWF      main_led_L0+1
	MOVLW      1
	MOVWF      main_ban_L0+0
	MOVLW      0
	MOVWF      main_ban_L0+1
;Mickro_reloj.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Mickro_reloj.c,4 :: 		do{
L_main0:
;Mickro_reloj.c,5 :: 		PORTB=led;
	MOVF       main_led_L0+0, 0
	MOVWF      PORTB+0
;Mickro_reloj.c,6 :: 		delay_ms (150);
	MOVLW      195
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
;Mickro_reloj.c,7 :: 		if(ban==1){
	MOVLW      0
	XORWF      main_ban_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      1
	XORWF      main_ban_L0+0, 0
L__main9:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;Mickro_reloj.c,8 :: 		led=led<<1;
	MOVF       main_led_L0+0, 0
	MOVWF      R1+0
	MOVF       main_led_L0+1, 0
	MOVWF      R1+1
	RLF        R1+0, 1
	RLF        R1+1, 1
	BCF        R1+0, 0
	MOVF       R1+0, 0
	MOVWF      main_led_L0+0
	MOVF       R1+1, 0
	MOVWF      main_led_L0+1
;Mickro_reloj.c,9 :: 		if(led>128){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVF       R1+0, 0
	SUBLW      128
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Mickro_reloj.c,10 :: 		led=64;
	MOVLW      64
	MOVWF      main_led_L0+0
	MOVLW      0
	MOVWF      main_led_L0+1
;Mickro_reloj.c,11 :: 		ban=0;
	CLRF       main_ban_L0+0
	CLRF       main_ban_L0+1
;Mickro_reloj.c,12 :: 		}
L_main5:
;Mickro_reloj.c,13 :: 		}
	GOTO       L_main6
L_main4:
;Mickro_reloj.c,15 :: 		led=led>>1;
	MOVF       main_led_L0+0, 0
	MOVWF      R1+0
	MOVF       main_led_L0+1, 0
	MOVWF      R1+1
	RRF        R1+1, 1
	RRF        R1+0, 1
	BCF        R1+1, 7
	BTFSC      R1+1, 6
	BSF        R1+1, 7
	MOVF       R1+0, 0
	MOVWF      main_led_L0+0
	MOVF       R1+1, 0
	MOVWF      main_led_L0+1
;Mickro_reloj.c,16 :: 		if(led<1){
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      1
	SUBWF      R1+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;Mickro_reloj.c,17 :: 		led=2;
	MOVLW      2
	MOVWF      main_led_L0+0
	MOVLW      0
	MOVWF      main_led_L0+1
;Mickro_reloj.c,18 :: 		ban=1;
	MOVLW      1
	MOVWF      main_ban_L0+0
	MOVLW      0
	MOVWF      main_ban_L0+1
;Mickro_reloj.c,19 :: 		}
L_main7:
;Mickro_reloj.c,20 :: 		}
L_main6:
;Mickro_reloj.c,21 :: 		}while(1);
	GOTO       L_main0
;Mickro_reloj.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
