;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sun Nov 21 19:25:59 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=16f886
	radix dec
	include "p16f886.inc"
;--------------------------------------------------------
; config word 
;--------------------------------------------------------
	__config _CONFIG1, 0x20e4
	__config _CONFIG2, 0x700
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_ADCON0_bits
	extern	_ADCON1_bits
	extern	_ANSEL_bits
	extern	_ANSELH_bits
	extern	_BAUDCTL_bits
	extern	_CCP1CON_bits
	extern	_CCP2CON_bits
	extern	_CM1CON0_bits
	extern	_CM2CON0_bits
	extern	_CM2CON1_bits
	extern	_ECCPAS_bits
	extern	_EECON1_bits
	extern	_INTCON_bits
	extern	_IOCB_bits
	extern	_OPTION_REG_bits
	extern	_OSCCON_bits
	extern	_OSCTUNE_bits
	extern	_PCON_bits
	extern	_PIE1_bits
	extern	_PIE2_bits
	extern	_PIR1_bits
	extern	_PIR2_bits
	extern	_PORTA_bits
	extern	_PORTB_bits
	extern	_PORTC_bits
	extern	_PORTE_bits
	extern	_PSTRCON_bits
	extern	_PWM1CON_bits
	extern	_RCSTA_bits
	extern	_SPBRG_bits
	extern	_SPBRGH_bits
	extern	_SRCON_bits
	extern	_SSPCON_bits
	extern	_SSPCON2_bits
	extern	_SSPSTAT_bits
	extern	_STATUS_bits
	extern	_T1CON_bits
	extern	_T2CON_bits
	extern	_TRISA_bits
	extern	_TRISB_bits
	extern	_TRISC_bits
	extern	_TRISE_bits
	extern	_TXSTA_bits
	extern	_VRCON_bits
	extern	_WDTCON_bits
	extern	_WPUB_bits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTE
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISE
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_OSCCON
	extern	_OSCTUNE
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPMSK
	extern	_MSK
	extern	_SSPSTAT
	extern	_WPUB
	extern	_IOCB
	extern	_VRCON
	extern	_TXSTA
	extern	_SPBRG
	extern	_SPBRGH
	extern	_PWM1CON
	extern	_ECCPAS
	extern	_PSTRCON
	extern	_ADRESL
	extern	_ADCON1
	extern	_WDTCON
	extern	_CM1CON0
	extern	_CM2CON0
	extern	_CM2CON1
	extern	_EEDATA
	extern	_EEDAT
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_SRCON
	extern	_BAUDCTL
	extern	_ANSEL
	extern	_ANSELH
	extern	_EECON1
	extern	_EECON2
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_pause
	global	_init
	global	_main
	global	_counter

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_main_0	udata
r0x1007	res	1
r0x1002	res	1
r0x1001	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_main_0	idata
_counter
	db	0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _init
;   _pause
;   _init
;   _pause
;2 compiler assigned registers:
;   r0x1007
;   STK00
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	11; "main.c"	init();
	PAGESEL	_init
	CALL	_init
	PAGESEL	$
_00106_DS_
;	.line	13; "main.c"	PORTA = counter; //count up
	BANKSEL	_counter
	MOVF	_counter,W
	BANKSEL	_PORTA
	MOVWF	_PORTA
;	.line	14; "main.c"	PORTB = counter;
	BANKSEL	_counter
	MOVF	_counter,W
	BANKSEL	_PORTB
	MOVWF	_PORTB
;	.line	15; "main.c"	PORTC = counter++^0xF; //count down!
	BANKSEL	_counter
	MOVF	_counter,W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_counter
	INCF	_counter,F
	MOVLW	0x0f
	BANKSEL	r0x1007
	XORWF	r0x1007,W
	BANKSEL	_PORTC
	MOVWF	_PORTC
;	.line	16; "main.c"	pause(50000);
	MOVLW	0x50
	MOVWF	STK00
	MOVLW	0xc3
	PAGESEL	_pause
	CALL	_pause
	PAGESEL	$
	GOTO	_00106_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _pause	;Function start
; 2 exit points
;has an exit
;7 compiler assigned registers:
;   r0x1001
;   STK00
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;; Starting pCode block
_pause	;Function start
; 2 exit points
;	.line	24; "main.c"	void pause(unsigned int delay){
	BANKSEL	r0x1001
	MOVWF	r0x1001
	MOVF	STK00,W
	MOVWF	r0x1002
;	.line	26; "main.c"	while(now++ < delay);
	CLRF	r0x1003
	CLRF	r0x1004
_00115_DS_
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	r0x1005
	MOVF	r0x1004,W
	MOVWF	r0x1006
	INCF	r0x1003,F
	BTFSC	STATUS,2
	INCF	r0x1004,F
	MOVF	r0x1001,W
	SUBWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00122_DS_
	MOVF	r0x1002,W
	SUBWF	r0x1005,W
_00122_DS_
	BTFSS	STATUS,0
	GOTO	_00115_DS_
;genSkipc:3083: created from rifx:0xbfd52774
	RETURN	
; exit point of _pause

;***
;  pBlock Stats: dbName = C
;***
;entry:  _init	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_init	;Function start
; 2 exit points
;	.line	20; "main.c"	TRISA = 0xF0;
	MOVLW	0xf0
	BANKSEL	_TRISA
	MOVWF	_TRISA
;	.line	21; "main.c"	TRISB = 0xF0;
	MOVLW	0xf0
	MOVWF	_TRISB
;	.line	22; "main.c"	TRISC = 0xF0;
	MOVLW	0xf0
	MOVWF	_TRISC
	RETURN	
; exit point of _init


;	code size estimation:
;	   45+   16 =    61 instructions (  154 byte)

	end
