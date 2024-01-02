;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module lab12
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _niciunButonApasat
	.globl _tasta_veche
	.globl _display4
	.globl _display3
	.globl _display2
	.globl _display1
	.globl _nr_taste_apasate
	.globl _i
	.globl _v
	.globl _x
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_x::
	.ds 1
_v::
	.ds 15
_i::
	.ds 1
_nr_taste_apasate::
	.ds 1
_display1::
	.ds 1
_display2::
	.ds 1
_display3::
	.ds 1
_display4::
	.ds 1
_tasta_veche::
	.ds 1
_niciunButonApasat::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	lab12.c:12: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lab12.c:18: P3 = 0x00;
	mov	_P3,#0x00
;	lab12.c:19: v[0] = 0xF0;
	mov	_v,#0xf0
;	lab12.c:20: v[1] = 0xF9;
	mov	(_v + 0x0001),#0xf9
;	lab12.c:21: v[2] = 0xA4;
	mov	(_v + 0x0002),#0xa4
;	lab12.c:22: v[3] = 0xB0;
	mov	(_v + 0x0003),#0xb0
;	lab12.c:23: v[4] = 0x99;
	mov	(_v + 0x0004),#0x99
;	lab12.c:24: v[5] = 0x92;
	mov	(_v + 0x0005),#0x92
;	lab12.c:25: v[6] = 0x82;
	mov	(_v + 0x0006),#0x82
;	lab12.c:26: v[7] = 0xF8;
	mov	(_v + 0x0007),#0xf8
;	lab12.c:27: v[8] = 0x80;
	mov	(_v + 0x0008),#0x80
;	lab12.c:28: v[9] = 0x90;
	mov	(_v + 0x0009),#0x90
;	lab12.c:29: v[10] = 0x00;//pentru steluta
	mov	(_v + 0x000a),#0x00
;	lab12.c:30: v[11] = 0x00;//pentru diez
	mov	(_v + 0x000b),#0x00
;	lab12.c:31: v[12] = 0xFF;//nimic
	mov	(_v + 0x000c),#0xff
;	lab12.c:32: nr_taste_apasate = 0;
	mov	_nr_taste_apasate,#0x00
;	lab12.c:33: display1 = 12;
	mov	_display1,#0x0c
;	lab12.c:34: display2 = 12;
	mov	_display2,#0x0c
;	lab12.c:35: display3 = 12;
	mov	_display3,#0x0c
;	lab12.c:36: display4 = 12;
	mov	_display4,#0x0c
;	lab12.c:37: tasta_veche = 12;
	mov	_tasta_veche,#0x0c
;	lab12.c:38: while(1) {
00156$:
;	lab12.c:39: x = 12;
	mov	_x,#0x0c
;	lab12.c:40: P0 = 0xFD;
	mov	_P0,#0xfd
;	lab12.c:41: if(P0_4 == 0) {
	jb	_P0_4,00107$
;	lab12.c:42: x = 9;
	mov	_x,#0x09
	sjmp	00108$
00107$:
;	lab12.c:44: else if(P0_5 == 0) {
	jb	_P0_5,00104$
;	lab12.c:45: x = 8;
	mov	_x,#0x08
	sjmp	00108$
00104$:
;	lab12.c:47: else if(P0_6 == 0) {
	jb	_P0_6,00108$
;	lab12.c:48: x = 7;
	mov	_x,#0x07
00108$:
;	lab12.c:51: P0 = 0xFE;
	mov	_P0,#0xfe
;	lab12.c:52: if(P0_4 == 0) {
	jb	_P0_4,00115$
;	lab12.c:53: x = 11;
	mov	_x,#0x0b
	sjmp	00116$
00115$:
;	lab12.c:55: else if(P0_5 == 0) {
	jb	_P0_5,00112$
;	lab12.c:56: x = 0;
	mov	_x,#0x00
	sjmp	00116$
00112$:
;	lab12.c:58: else if(P0_6 == 0) {
	jb	_P0_6,00116$
;	lab12.c:59: x = 10;
	mov	_x,#0x0a
00116$:
;	lab12.c:62: P0 = 0xFB;
	mov	_P0,#0xfb
;	lab12.c:63: if(P0_4 == 0) {
	jb	_P0_4,00123$
;	lab12.c:64: x = 6;
	mov	_x,#0x06
	sjmp	00124$
00123$:
;	lab12.c:66: else if(P0_5 == 0) {
	jb	_P0_5,00120$
;	lab12.c:67: x = 5;
	mov	_x,#0x05
	sjmp	00124$
00120$:
;	lab12.c:69: else if(P0_6 == 0) {
	jb	_P0_6,00124$
;	lab12.c:70: x = 4;
	mov	_x,#0x04
00124$:
;	lab12.c:73: P0 = 0xF7;
	mov	_P0,#0xf7
;	lab12.c:74: if(P0_4 == 0) {
	jb	_P0_4,00131$
;	lab12.c:75: x = 3;
	mov	_x,#0x03
	sjmp	00132$
00131$:
;	lab12.c:77: else if(P0_5 == 0) {
	jb	_P0_5,00128$
;	lab12.c:78: x = 2;
	mov	_x,#0x02
	sjmp	00132$
00128$:
;	lab12.c:80: else if(P0_6 == 0) {
	jb	_P0_6,00132$
;	lab12.c:81: x = 1;
	mov	_x,#0x01
00132$:
;	lab12.c:84: if(x == 12) {
	mov	a,#0x0c
	cjne	a,_x,00149$
;	lab12.c:85: niciunButonApasat = 1;
	mov	_niciunButonApasat,#0x01
	sjmp	00150$
00149$:
;	lab12.c:88: if(x != tasta_veche || (x == tasta_veche && niciunButonApasat)) {
	mov	a,_tasta_veche
	cjne	a,_x,00144$
	mov	a,_tasta_veche
	cjne	a,_x,00145$
	mov	a,_niciunButonApasat
	jz	00145$
00144$:
;	lab12.c:89: tasta_veche = x;
	mov	_tasta_veche,_x
;	lab12.c:90: nr_taste_apasate++;
	inc	_nr_taste_apasate
;	lab12.c:91: if(nr_taste_apasate == 1) {
	mov	a,#0x01
	cjne	a,_nr_taste_apasate,00142$
;	lab12.c:92: display1 = x;
	mov	_display1,_x
	sjmp	00145$
00142$:
;	lab12.c:94: else if(nr_taste_apasate == 2) {
	mov	a,#0x02
	cjne	a,_nr_taste_apasate,00139$
;	lab12.c:95: display2 = x;
	mov	_display2,_x
	sjmp	00145$
00139$:
;	lab12.c:97: else if(nr_taste_apasate == 3) {
	mov	a,#0x03
	cjne	a,_nr_taste_apasate,00136$
;	lab12.c:98: display3 = x;
	mov	_display3,_x
	sjmp	00145$
00136$:
;	lab12.c:100: else if(nr_taste_apasate == 4) {
	mov	a,#0x04
	cjne	a,_nr_taste_apasate,00145$
;	lab12.c:101: display4 = x;
	mov	_display4,_x
;	lab12.c:102: nr_taste_apasate = 0;
	mov	_nr_taste_apasate,#0x00
00145$:
;	lab12.c:105: niciunButonApasat = 0;
	mov	_niciunButonApasat,#0x00
00150$:
;	lab12.c:109: P3 = 0x00;
	mov	_P3,#0x00
;	lab12.c:110: P1 = v[display1];
	mov	a,_display1
	add	a,#_v
	mov	r1,a
	mov	_P1,@r1
;	lab12.c:111: for(i = 0; i < 20; i++);
	mov	_i,#0x14
00160$:
	djnz	_i,00160$
;	lab12.c:115: P3 = 0x0F;
	mov	_P3,#0x0f
;	lab12.c:116: P1 = v[display2];
	mov	a,_display2
	add	a,#_v
	mov	r1,a
	mov	_P1,@r1
;	lab12.c:117: for(i = 0; i < 20; i++);
	mov	_i,#0x14
00163$:
	djnz	_i,00163$
;	lab12.c:120: P3 = 0xF0;
	mov	_P3,#0xf0
;	lab12.c:121: P1 = v[display3];
	mov	a,_display3
	add	a,#_v
	mov	r1,a
	mov	_P1,@r1
;	lab12.c:122: for(i = 0; i < 20; i++);
	mov	_i,#0x14
00166$:
	djnz	_i,00166$
;	lab12.c:125: P3 = 0xFF;
	mov	_P3,#0xff
;	lab12.c:126: P1 = v[display4];
	mov	a,_display4
	add	a,#_v
	mov	r1,a
	mov	_P1,@r1
;	lab12.c:127: for(i = 0; i < 20; i++);
	mov	_i,#0x14
00169$:
	djnz	_i,00169$
	mov	_i,#0x14
;	lab12.c:130: return 0;
;	lab12.c:131: }
	ljmp	00156$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
