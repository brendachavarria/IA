
_Configuracion:

;display_7s.h,1 :: 		
;display_7s.h,2 :: 		
	GOTO       L_Configuracion0
;display_7s.h,3 :: 		
L_Configuracion2:
	MOVLW      10
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,4 :: 		
L_Configuracion3:
	MOVLW      9
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,5 :: 		
L_Configuracion4:
	MOVLW      35
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,6 :: 		
L_Configuracion5:
	MOVLW      15
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,7 :: 		
L_Configuracion6:
	MOVLW      32
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,8 :: 		
L_Configuracion7:
	MOVLW      7
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,9 :: 		
L_Configuracion8:
	MOVLW      23
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,10 :: 		
L_Configuracion9:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Configuracion
;display_7s.h,11 :: 		
L_Configuracion0:
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion94
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion94:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion2
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion95
	MOVLW      1
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion95:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion3
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion96
	MOVLW      2
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion96:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion4
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion97
	MOVLW      3
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion97:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion5
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion98
	MOVLW      4
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion98:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion6
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion99
	MOVLW      5
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion99:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion7
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion100
	MOVLW      6
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion100:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion8
	MOVLW      0
	XORWF      FARG_Configuracion_entrada+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Configuracion101
	MOVLW      7
	XORWF      FARG_Configuracion_entrada+0, 0
L__Configuracion101:
	BTFSC      STATUS+0, 2
	GOTO       L_Configuracion9
;display_7s.h,12 :: 		
L_end_Configuracion:
	RETURN
; end of _Configuracion

_ASCII_a_7Segmentos:

;display_7s.h,14 :: 		
;display_7s.h,15 :: 		
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      32
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos10
;display_7s.h,16 :: 		
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,17 :: 		
L_ASCII_a_7Segmentos10:
;display_7s.h,18 :: 		
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      209
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos12
;display_7s.h,19 :: 		
	MOVLW      85
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,20 :: 		
L_ASCII_a_7Segmentos12:
;display_7s.h,21 :: 		
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      176
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos14
;display_7s.h,22 :: 		
	MOVLW      99
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,23 :: 		
L_ASCII_a_7Segmentos14:
;display_7s.h,24 :: 		
	MOVLW      43
	SUBWF      FARG_ASCII_a_7Segmentos_c+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__ASCII_a_7Segmentos92
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	SUBLW      90
	BTFSS      STATUS+0, 0
	GOTO       L__ASCII_a_7Segmentos92
	GOTO       L_ASCII_a_7Segmentos18
L__ASCII_a_7Segmentos92:
;display_7s.h,25 :: 		
	MOVLW      128
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,26 :: 		
L_ASCII_a_7Segmentos18:
;display_7s.h,28 :: 		
	GOTO       L_ASCII_a_7Segmentos20
;display_7s.h,29 :: 		
L_ASCII_a_7Segmentos22:
	MOVLW      70
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,30 :: 		
L_ASCII_a_7Segmentos23:
	MOVLW      4
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,31 :: 		
L_ASCII_a_7Segmentos24:
	MOVLW      64
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,32 :: 		
L_ASCII_a_7Segmentos25:
	MOVLW      128
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,33 :: 		
L_ASCII_a_7Segmentos26:
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,34 :: 		
L_ASCII_a_7Segmentos27:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,35 :: 		
L_ASCII_a_7Segmentos28:
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,36 :: 		
L_ASCII_a_7Segmentos29:
	MOVLW      91
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,37 :: 		
L_ASCII_a_7Segmentos30:
	MOVLW      79
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,38 :: 		
L_ASCII_a_7Segmentos31:
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,39 :: 		
L_ASCII_a_7Segmentos32:
	MOVLW      109
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,40 :: 		
L_ASCII_a_7Segmentos33:
	MOVLW      125
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,41 :: 		
L_ASCII_a_7Segmentos34:
	MOVLW      7
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,42 :: 		
L_ASCII_a_7Segmentos35:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,43 :: 		
L_ASCII_a_7Segmentos36:
	MOVLW      103
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,44 :: 		
L_ASCII_a_7Segmentos37:
	MOVLW      65
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,45 :: 		
L_ASCII_a_7Segmentos38:
	MOVLW      136
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,46 :: 		
L_ASCII_a_7Segmentos39:
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,47 :: 		
L_ASCII_a_7Segmentos40:
	MOVLW      72
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,48 :: 		
L_ASCII_a_7Segmentos41:
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,49 :: 		
L_ASCII_a_7Segmentos42:
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,50 :: 		
L_ASCII_a_7Segmentos43:
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,51 :: 		
L_ASCII_a_7Segmentos44:
	MOVLW      119
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,52 :: 		
L_ASCII_a_7Segmentos45:
	MOVLW      124
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,53 :: 		
L_ASCII_a_7Segmentos46:
	MOVLW      57
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,54 :: 		
L_ASCII_a_7Segmentos47:
	MOVLW      94
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,55 :: 		
L_ASCII_a_7Segmentos48:
	MOVLW      121
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,56 :: 		
L_ASCII_a_7Segmentos49:
	MOVLW      113
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,57 :: 		
L_ASCII_a_7Segmentos50:
	MOVLW      111
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,58 :: 		
L_ASCII_a_7Segmentos51:
	MOVLW      118
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,59 :: 		
L_ASCII_a_7Segmentos52:
	MOVLW      25
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,60 :: 		
L_ASCII_a_7Segmentos53:
	MOVLW      30
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,61 :: 		
L_ASCII_a_7Segmentos54:
	MOVLW      122
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,62 :: 		
L_ASCII_a_7Segmentos55:
	MOVLW      56
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,63 :: 		
L_ASCII_a_7Segmentos56:
	MOVLW      55
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,64 :: 		
L_ASCII_a_7Segmentos57:
	MOVLW      84
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,65 :: 		
L_ASCII_a_7Segmentos58:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,66 :: 		
L_ASCII_a_7Segmentos59:
	MOVLW      115
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,67 :: 		
L_ASCII_a_7Segmentos60:
	MOVLW      103
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,68 :: 		
L_ASCII_a_7Segmentos61:
	MOVLW      80
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,69 :: 		
L_ASCII_a_7Segmentos62:
	MOVLW      109
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,70 :: 		
L_ASCII_a_7Segmentos63:
	MOVLW      120
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,71 :: 		
L_ASCII_a_7Segmentos64:
	MOVLW      28
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,72 :: 		
L_ASCII_a_7Segmentos65:
	MOVLW      62
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,73 :: 		
L_ASCII_a_7Segmentos66:
	MOVLW      29
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,74 :: 		
L_ASCII_a_7Segmentos67:
	MOVLW      112
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,75 :: 		
L_ASCII_a_7Segmentos68:
	MOVLW      110
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,76 :: 		
L_ASCII_a_7Segmentos69:
	MOVLW      73
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,77 :: 		
L_ASCII_a_7Segmentos20:
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos22
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      39
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos23
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos24
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      46
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos25
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos26
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      48
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos27
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      49
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos28
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      50
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos29
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      51
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos30
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      52
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos31
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      53
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos32
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      54
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos33
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      55
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos34
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      56
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos35
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      57
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos36
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      58
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos37
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      59
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos38
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      60
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos39
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos40
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      62
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos41
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      63
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos42
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      64
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos43
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      65
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos44
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      66
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos45
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      67
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos46
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      68
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos47
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      69
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos48
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      70
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos49
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      71
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos50
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      72
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos51
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      73
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos52
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      74
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos53
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      75
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos54
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      76
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos55
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      77
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos56
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      78
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos57
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      79
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos58
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      80
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos59
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      81
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos60
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      82
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos61
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      83
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos62
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      84
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos63
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      85
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos64
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      86
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos65
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      87
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos66
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      88
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos67
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      89
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos68
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      90
	BTFSC      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos69
;display_7s.h,79 :: 		
L_end_ASCII_a_7Segmentos:
	RETURN
; end of _ASCII_a_7Segmentos

_Numero_a_7Segmentos:

;display_7s.h,81 :: 		
;display_7s.h,82 :: 		
	GOTO       L_Numero_a_7Segmentos70
;display_7s.h,83 :: 		
L_Numero_a_7Segmentos72:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,84 :: 		
L_Numero_a_7Segmentos73:
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,85 :: 		
L_Numero_a_7Segmentos74:
	MOVLW      91
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,86 :: 		
L_Numero_a_7Segmentos75:
	MOVLW      79
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,87 :: 		
L_Numero_a_7Segmentos76:
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,88 :: 		
L_Numero_a_7Segmentos77:
	MOVLW      109
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,89 :: 		
L_Numero_a_7Segmentos78:
	MOVLW      125
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,90 :: 		
L_Numero_a_7Segmentos79:
	MOVLW      7
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,91 :: 		
L_Numero_a_7Segmentos80:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,92 :: 		
L_Numero_a_7Segmentos81:
	MOVLW      103
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Numero_a_7Segmentos
;display_7s.h,93 :: 		
L_Numero_a_7Segmentos70:
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos104
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos104:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos72
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos105
	MOVLW      1
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos105:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos73
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos106
	MOVLW      2
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos106:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos74
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos107
	MOVLW      3
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos107:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos75
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos108
	MOVLW      4
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos108:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos76
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos109
	MOVLW      5
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos109:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos77
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos110
	MOVLW      6
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos110:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos78
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos111
	MOVLW      7
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos111:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos79
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos112
	MOVLW      8
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos112:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos80
	MOVLW      0
	XORWF      FARG_Numero_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Numero_a_7Segmentos113
	MOVLW      9
	XORWF      FARG_Numero_a_7Segmentos_valor+0, 0
L__Numero_a_7Segmentos113:
	BTFSC      STATUS+0, 2
	GOTO       L_Numero_a_7Segmentos81
;display_7s.h,94 :: 		
L_end_Numero_a_7Segmentos:
	RETURN
; end of _Numero_a_7Segmentos

_main:

;Display_ABC.c,5 :: 		void main() {
;Display_ABC.c,6 :: 		TRISB = 0;
	CLRF       TRISB+0
;Display_ABC.c,7 :: 		do {
L_main82:
;Display_ABC.c,8 :: 		if (Char == 167)
	MOVLW      0
	XORWF      _Char+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main115
	MOVLW      167
	XORWF      _Char+0, 0
L__main115:
	BTFSS      STATUS+0, 2
	GOTO       L_main85
;Display_ABC.c,9 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
L_main85:
;Display_ABC.c,10 :: 		Char = 43;
	MOVLW      43
	MOVWF      _Char+0
	MOVLW      0
	MOVWF      _Char+1
;Display_ABC.c,12 :: 		Char = 48;
L_main86:
;Display_ABC.c,13 :: 		if (Char == 60)
	MOVLW      0
	XORWF      _Char+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main116
	MOVLW      60
	XORWF      _Char+0, 0
L__main116:
	BTFSS      STATUS+0, 2
	GOTO       L_main87
;Display_ABC.c,14 :: 		Char = 61;
	MOVLW      61
	MOVWF      _Char+0
	MOVLW      0
	MOVWF      _Char+1
L_main87:
;Display_ABC.c,15 :: 		if (Char == 62)
	MOVLW      0
	XORWF      _Char+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main117
	MOVLW      62
	XORWF      _Char+0, 0
L__main117:
	BTFSS      STATUS+0, 2
	GOTO       L_main88
;Display_ABC.c,16 :: 		Char = 65;
	MOVLW      65
	MOVWF      _Char+0
	MOVLW      0
	MOVWF      _Char+1
L_main88:
;Display_ABC.c,17 :: 		if (Char == 91)
	MOVLW      0
	XORWF      _Char+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main118
	MOVLW      91
	XORWF      _Char+0, 0
L__main118:
	BTFSS      STATUS+0, 2
	GOTO       L_main89
;Display_ABC.c,18 :: 		Char = 165;
	MOVLW      165
	MOVWF      _Char+0
	CLRF       _Char+1
L_main89:
;Display_ABC.c,19 :: 		if (Char == 166)
	MOVLW      0
	XORWF      _Char+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main119
	MOVLW      166
	XORWF      _Char+0, 0
L__main119:
	BTFSS      STATUS+0, 2
	GOTO       L_main90
;Display_ABC.c,20 :: 		Char = 167;
	MOVLW      167
	MOVWF      _Char+0
	CLRF       _Char+1
L_main90:
;Display_ABC.c,21 :: 		PORTB = ASCII_a_7Segmentos(Char);
	MOVF       _Char+0, 0
	MOVWF      FARG_ASCII_a_7Segmentos_c+0
	CALL       _ASCII_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Display_ABC.c,22 :: 		Delay_ms(150);
	MOVLW      195
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_main91:
	DECFSZ     R13+0, 1
	GOTO       L_main91
	DECFSZ     R12+0, 1
	GOTO       L_main91
;Display_ABC.c,23 :: 		Char++;
	INCF       _Char+0, 1
	BTFSC      STATUS+0, 2
	INCF       _Char+1, 1
;Display_ABC.c,24 :: 		} while(1);
	GOTO       L_main82
;Display_ABC.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
