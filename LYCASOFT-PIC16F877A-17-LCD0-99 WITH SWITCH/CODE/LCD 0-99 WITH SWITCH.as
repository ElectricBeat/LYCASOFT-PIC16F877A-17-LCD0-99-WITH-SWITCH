opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_divider
	FNCALL	_divider,___awdiv
	FNCALL	_divider,_Lcd_Data
	FNCALL	_divider,___awmod
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNROOT	_main
	global	_PORTC
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"LCD 0-99 WITH SWITCH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_divider
?_divider:	; 0 bytes @ 0x9
	global	divider@x
divider@x:	; 2 bytes @ 0x9
	ds	2
	global	??_divider
??_divider:	; 0 bytes @ 0xB
	global	??_main
??_main:	; 0 bytes @ 0xB
	global	main@Count
main@Count:	; 2 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	divider@Dig1
divider@Dig1:	; 2 bytes @ 0x0
	ds	2
	global	divider@Dig2
divider@Dig2:	; 2 bytes @ 0x2
	ds	2
	global	divider@Temp
divider@Temp:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 10, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_divider
;;   _divider->___awdiv
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_divider
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     948
;;                                             11 COMMON     2     2      0
;;                  _Lcd_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                            _divider
;; ---------------------------------------------------------------------------------
;; (1) _divider                                              8     6      2     753
;;                                              9 COMMON     2     0      2
;;                                              0 BANK0      6     6      0
;;                            ___awdiv
;;                           _Lcd_Data
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      89
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Data                                             3     3      0      44
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _divider
;;     ___awdiv
;;     _Lcd_Data
;;     ___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Count           2   11[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_divider
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l2850:	
;LCD 0-99 WITH SWITCH.c: 74: TRISD=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	75
	
l2852:	
;LCD 0-99 WITH SWITCH.c: 75: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	76
	
l2854:	
;LCD 0-99 WITH SWITCH.c: 76: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	77
	
l2856:	
;LCD 0-99 WITH SWITCH.c: 77: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	81
	
l2858:	
;LCD 0-99 WITH SWITCH.c: 79: int Count;
;LCD 0-99 WITH SWITCH.c: 81: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	83
	
l2860:	
;LCD 0-99 WITH SWITCH.c: 83: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	84
	
l2862:	
;LCD 0-99 WITH SWITCH.c: 84: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l706
	line	86
;LCD 0-99 WITH SWITCH.c: 86: while(1)
	
l705:	
	line	88
;LCD 0-99 WITH SWITCH.c: 87: {
;LCD 0-99 WITH SWITCH.c: 88: while(RD1==1)
	goto	l706
	
l707:	
	line	90
	
l2864:	
;LCD 0-99 WITH SWITCH.c: 89: {
;LCD 0-99 WITH SWITCH.c: 90: Lcd_Command(0xc0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	91
;LCD 0-99 WITH SWITCH.c: 91: divider(Count);
	movf	(main@Count+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(main@Count),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	92
	
l2866:	
;LCD 0-99 WITH SWITCH.c: 92: Count++;
	movlw	low(01h)
	addwf	(main@Count),f
	skipnc
	incf	(main@Count+1),f
	movlw	high(01h)
	addwf	(main@Count+1),f
	line	93
	
l2868:	
;LCD 0-99 WITH SWITCH.c: 93: if(Count>=100)
	movf	(main@Count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(064h)
	subwf	(main@Count),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l709
u2490:
	line	95
	
l2870:	
;LCD 0-99 WITH SWITCH.c: 94: {
;LCD 0-99 WITH SWITCH.c: 95: Count=0;
	clrf	(main@Count)
	clrf	(main@Count+1)
	goto	l709
	line	96
	
l708:	
	line	97
;LCD 0-99 WITH SWITCH.c: 96: }
;LCD 0-99 WITH SWITCH.c: 97: while(RD1==1);
	goto	l709
	
l710:	
	
l709:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l709
u2500:
	goto	l706
	
l711:	
	line	98
	
l706:	
	line	88
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l2864
u2510:
	goto	l706
	
l712:	
	goto	l706
	line	99
	
l713:	
	line	86
	goto	l706
	
l714:	
	line	100
	
l715:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_divider
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _divider *****************
;; Defined at:
;;		line 60 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  x               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  Temp            2    4[BANK0 ] int 
;;  Dig2            2    2[BANK0 ] int 
;;  Dig1            2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		_Lcd_Data
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text192
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	line	60
	global	__size_of_divider
	__size_of_divider	equ	__end_of_divider-_divider
	
_divider:	
	opt	stack 6
; Regs used in _divider: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l2840:	
;LCD 0-99 WITH SWITCH.c: 61: int Temp,Dig1,Dig2;
;LCD 0-99 WITH SWITCH.c: 63: Temp = x;
	movf	(divider@x+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(divider@Temp+1)
	addwf	(divider@Temp+1)
	movf	(divider@x),w
	clrf	(divider@Temp)
	addwf	(divider@Temp)

	line	65
	
l2842:	
;LCD 0-99 WITH SWITCH.c: 65: Dig1 = Temp/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(divider@Temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(divider@Temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(divider@Dig1+1)
	addwf	(divider@Dig1+1)
	movf	(0+(?___awdiv)),w
	clrf	(divider@Dig1)
	addwf	(divider@Dig1)

	line	66
	
l2844:	
;LCD 0-99 WITH SWITCH.c: 66: Lcd_Data(Dig1+48);
	movf	(divider@Dig1),w
	addlw	030h
	fcall	_Lcd_Data
	line	68
	
l2846:	
;LCD 0-99 WITH SWITCH.c: 68: Dig2 = Temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(divider@Temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(divider@Temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(divider@Dig2+1)
	addwf	(divider@Dig2+1)
	movf	(0+(?___awmod)),w
	clrf	(divider@Dig2)
	addwf	(divider@Dig2)

	line	69
	
l2848:	
;LCD 0-99 WITH SWITCH.c: 69: Lcd_Data(Dig2+48);
	movf	(divider@Dig2),w
	addlw	030h
	fcall	_Lcd_Data
	line	70
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_divider
	__end_of_divider:
;; =============== function _divider ends ============

	signat	_divider,4216
	global	_Lcd_Intialization
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 53 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text193
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	line	53
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l2700:	
;LCD 0-99 WITH SWITCH.c: 54: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	55
;LCD 0-99 WITH SWITCH.c: 55: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	56
;LCD 0-99 WITH SWITCH.c: 56: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	57
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 45 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text194
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	line	45
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	46
	
l2832:	
;LCD 0-99 WITH SWITCH.c: 46: while(*Str != 0)
	goto	l2838
	
l694:	
	line	48
	
l2834:	
;LCD 0-99 WITH SWITCH.c: 47: {
;LCD 0-99 WITH SWITCH.c: 48: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2836:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2838
	line	49
	
l693:	
	line	46
	
l2838:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2834
u2480:
	goto	l696
	
l695:	
	line	50
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_Lcd_Data
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 30 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_divider
;; This function uses a non-reentrant model
;;
psect	text195
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	line	30
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 6
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	31
	
l2812:	
;LCD 0-99 WITH SWITCH.c: 31: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l2814:	
;LCD 0-99 WITH SWITCH.c: 32: RD2 = 1;
	bsf	(66/8),(66)&7
	line	33
	
l2816:	
;LCD 0-99 WITH SWITCH.c: 33: RD3 = 1;
	bsf	(67/8),(67)&7
	line	34
	
l2818:	
;LCD 0-99 WITH SWITCH.c: 34: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2527:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2527
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2527
	clrwdt
opt asmopt_on

	line	35
	
l2820:	
;LCD 0-99 WITH SWITCH.c: 35: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	37
	
l2822:	
;LCD 0-99 WITH SWITCH.c: 37: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2475:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2475
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	38
	
l2824:	
;LCD 0-99 WITH SWITCH.c: 38: RD2 = 1;
	bsf	(66/8),(66)&7
	line	39
	
l2826:	
;LCD 0-99 WITH SWITCH.c: 39: RD3 = 1;
	bsf	(67/8),(67)&7
	line	40
	
l2828:	
;LCD 0-99 WITH SWITCH.c: 40: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2537:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2537
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2537
	clrwdt
opt asmopt_on

	line	41
	
l2830:	
;LCD 0-99 WITH SWITCH.c: 41: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	42
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 15 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text196
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\16-LCD0-99 WITH SWITCH\CODE\LCD 0-99 WITH SWITCH.c"
	line	15
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	16
	
l2652:	
;LCD 0-99 WITH SWITCH.c: 16: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
	
l2654:	
;LCD 0-99 WITH SWITCH.c: 17: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l2656:	
;LCD 0-99 WITH SWITCH.c: 18: RD3 = 1;
	bsf	(67/8),(67)&7
	line	19
	
l2658:	
;LCD 0-99 WITH SWITCH.c: 19: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2547:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2547
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2547
	clrwdt
opt asmopt_on

	line	20
	
l2660:	
;LCD 0-99 WITH SWITCH.c: 20: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	22
	
l2662:	
;LCD 0-99 WITH SWITCH.c: 22: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2225:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	23
	
l2664:	
;LCD 0-99 WITH SWITCH.c: 23: RD2 = 0;
	bcf	(66/8),(66)&7
	line	24
	
l2666:	
;LCD 0-99 WITH SWITCH.c: 24: RD3 = 1;
	bsf	(67/8),(67)&7
	line	25
	
l2668:	
;LCD 0-99 WITH SWITCH.c: 25: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2557:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2557
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2557
	clrwdt
opt asmopt_on

	line	26
	
l2670:	
;LCD 0-99 WITH SWITCH.c: 26: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	27
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	___awmod
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_divider
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2778:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l2782
u2380:
	line	10
	
l2780:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2782
	line	12
	
l1606:	
	line	13
	
l2782:	
	btfss	(___awmod@divisor+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l2786
u2390:
	line	14
	
l2784:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2786
	
l1607:	
	line	15
	
l2786:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l2804
u2400:
	line	16
	
l2788:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2794
	
l1610:	
	line	18
	
l2790:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2415
	line	19
	
l2792:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2794
	line	20
	
l1609:	
	line	17
	
l2794:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l2790
u2420:
	goto	l2796
	
l1611:	
	goto	l2796
	line	21
	
l1612:	
	line	22
	
l2796:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2435
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2435:
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l2800
u2430:
	line	23
	
l2798:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2800
	
l1613:	
	line	24
	
l2800:	
	movlw	01h
	
u2445:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2445
	line	25
	
l2802:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2796
u2450:
	goto	l2804
	
l1614:	
	goto	l2804
	line	26
	
l1608:	
	line	27
	
l2804:	
	movf	(___awmod@sign),w
	skipz
	goto	u2460
	goto	l2808
u2460:
	line	28
	
l2806:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2808
	
l1615:	
	line	29
	
l2808:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1616
	
l2810:	
	line	30
	
l1616:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_divider
;; This function uses a non-reentrant model
;;
psect	text198
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2738:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l2742
u2280:
	line	11
	
l2740:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2742
	line	13
	
l1538:	
	line	14
	
l2742:	
	btfss	(___awdiv@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2748
u2290:
	line	15
	
l2744:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2746:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2748
	line	17
	
l1539:	
	line	18
	
l2748:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2750:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l2770
u2300:
	line	20
	
l2752:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2758
	
l1542:	
	line	22
	
l2754:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	23
	
l2756:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2758
	line	24
	
l1541:	
	line	21
	
l2758:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l2754
u2320:
	goto	l2760
	
l1543:	
	goto	l2760
	line	25
	
l1544:	
	line	26
	
l2760:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2335
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2345
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2766
u2340:
	line	28
	
l2762:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2764:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2766
	line	30
	
l1545:	
	line	31
	
l2766:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	32
	
l2768:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2760
u2360:
	goto	l2770
	
l1546:	
	goto	l2770
	line	33
	
l1540:	
	line	34
	
l2770:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2370
	goto	l2774
u2370:
	line	35
	
l2772:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2774
	
l1547:	
	line	36
	
l2774:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1548
	
l2776:	
	line	37
	
l1548:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
