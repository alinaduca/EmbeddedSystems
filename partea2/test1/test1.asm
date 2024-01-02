;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module test1
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
	.globl _activareTimer
	.globl _apasatSET
	.globl _n_afis
	.globl _tastaAnterioara
	.globl _n
	.globl _cifre
	.globl _v
	.globl _i
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
_i::
	.ds 1
_v::
	.ds 15
_cifre::
	.ds 4
_n::
	.ds 1
_tastaAnterioara::
	.ds 1
_n_afis::
	.ds 1
_apasatSET::
	.ds 1
_activareTimer::
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
;	test1.c:5: int main() {
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
;	test1.c:6: TR0 = 0;
;	assignBit
	clr	_TR0
;	test1.c:7: TMOD = 1;
	mov	_TMOD,#0x01
;	test1.c:8: TH0 = 39;
	mov	_TH0,#0x27
;	test1.c:9: TL0 = 16;
	mov	_TL0,#0x10
;	test1.c:10: v[0] = 0xC0;
	mov	_v,#0xc0
;	test1.c:11: v[1] = 0xF9;
	mov	(_v + 0x0001),#0xf9
;	test1.c:12: v[2] = 0xA4;
	mov	(_v + 0x0002),#0xa4
;	test1.c:13: v[3] = 0xB0;
	mov	(_v + 0x0003),#0xb0
;	test1.c:14: v[4] = 0x99;
	mov	(_v + 0x0004),#0x99
;	test1.c:15: v[5] = 0x92;
	mov	(_v + 0x0005),#0x92
;	test1.c:16: v[6] = 0x82;
	mov	(_v + 0x0006),#0x82
;	test1.c:17: v[7] = 0xF8;
	mov	(_v + 0x0007),#0xf8
;	test1.c:18: v[8] = 0x80;
	mov	(_v + 0x0008),#0x80
;	test1.c:19: v[9] = 0x90;
	mov	(_v + 0x0009),#0x90
;	test1.c:20: v[10] = 0xBF; //pentru * pun -
	mov	(_v + 0x000a),#0xbf
;	test1.c:21: v[11] = 0x89; //pentru # pun H
	mov	(_v + 0x000b),#0x89
;	test1.c:22: v[12] = 0xFF; //pentru nimic
	mov	(_v + 0x000c),#0xff
;	test1.c:23: apasatSET = 0;
	mov	_apasatSET,#0x00
;	test1.c:24: tastaAnterioara = 12;
	mov	_tastaAnterioara,#0x0c
;	test1.c:25: i = 0;
	mov	_i,#0x00
;	test1.c:26: n_afis = 3;
	mov	_n_afis,#0x03
;	test1.c:27: cifre[0] = 12;
	mov	_cifre,#0x0c
;	test1.c:28: cifre[1] = 12;
	mov	(_cifre + 0x0001),#0x0c
;	test1.c:29: cifre[2] = 12;
	mov	(_cifre + 0x0002),#0x0c
;	test1.c:30: cifre[3] = 12;
	mov	(_cifre + 0x0003),#0x0c
;	test1.c:31: activareTimer = 0;
	mov	_activareTimer,#0x00
;	test1.c:32: while(1) {
00176$:
;	test1.c:33: if(apasatSET) {
	mov	a,_apasatSET
	jnz	00312$
	ljmp	00141$
00312$:
;	test1.c:34: x = 12;
	mov	_x,#0x0c
;	test1.c:35: P0 = 0xF7;
	mov	_P0,#0xf7
;	test1.c:36: if(P0_6 == 0) x = 1;
	jb	_P0_6,00107$
	mov	_x,#0x01
	sjmp	00108$
00107$:
;	test1.c:37: else if(P0_5 == 0) x = 2;
	jb	_P0_5,00104$
	mov	_x,#0x02
	sjmp	00108$
00104$:
;	test1.c:38: else if(P0_4 == 0) x = 3;
	jb	_P0_4,00108$
	mov	_x,#0x03
00108$:
;	test1.c:40: P0=0xFB;
	mov	_P0,#0xfb
;	test1.c:42: if(P0_6 == 0) x = 4;
	jb	_P0_6,00115$
	mov	_x,#0x04
	sjmp	00116$
00115$:
;	test1.c:43: else if(P0_5 == 0) x = 5;
	jb	_P0_5,00112$
	mov	_x,#0x05
	sjmp	00116$
00112$:
;	test1.c:44: else if(P0_4 == 0) x = 6;
	jb	_P0_4,00116$
	mov	_x,#0x06
00116$:
;	test1.c:46: P0 = 0xFD;
	mov	_P0,#0xfd
;	test1.c:48: if(P0_6 == 0) x = 7;
	jb	_P0_6,00123$
	mov	_x,#0x07
	sjmp	00124$
00123$:
;	test1.c:49: else if(P0_5 == 0) x = 8;
	jb	_P0_5,00120$
	mov	_x,#0x08
	sjmp	00124$
00120$:
;	test1.c:50: else if(P0_4 == 0) x = 9;
	jb	_P0_4,00124$
	mov	_x,#0x09
00124$:
;	test1.c:52: P0 = 0xFE;
	mov	_P0,#0xfe
;	test1.c:53: if(P0_6 == 0) x = 10;
	jb	_P0_6,00131$
	mov	_x,#0x0a
	sjmp	00132$
00131$:
;	test1.c:54: else if(P0_5 == 0) x = 0;
	jb	_P0_5,00128$
	mov	_x,#0x00
	sjmp	00132$
00128$:
;	test1.c:55: else if(P0_4 == 0) x = 11;
	jb	_P0_4,00132$
	mov	_x,#0x0b
00132$:
;	test1.c:57: if(tastaAnterioara != x && x != 12) {
	mov	a,_x
	cjne	a,_tastaAnterioara,00325$
	sjmp	00134$
00325$:
	mov	a,#0x0c
	cjne	a,_x,00326$
	sjmp	00134$
00326$:
;	test1.c:58: cifre[n] = x;
	mov	a,_n
	add	a,#_cifre
	mov	r0,a
	mov	@r0,_x
;	test1.c:59: n++;
	inc	_n
00134$:
;	test1.c:62: if(n == 4) {
	mov	a,#0x04
	cjne	a,_n,00139$
;	test1.c:63: apasatSET = 0;
	mov	_apasatSET,#0x00
;	test1.c:64: if(!activareTimer) {
	mov	a,_activareTimer
	jnz	00139$
;	test1.c:65: TR0 = 1;
;	assignBit
	setb	_TR0
;	test1.c:66: activareTimer = 1;
	mov	_activareTimer,#0x01
00139$:
;	test1.c:70: tastaAnterioara = x;
	mov	_tastaAnterioara,_x
00141$:
;	test1.c:73: if(TF0 == 1) {
	jnb	_TF0,00145$
;	test1.c:74: cifre[3]++;
	mov	r7,(_cifre + 0x0003)
	inc	r7
	mov	(_cifre + 0x0003),r7
;	test1.c:75: if(cifre[3] == 10) {
	cjne	r7,#0x0a,00143$
;	test1.c:76: cifre[3] = 0;
	mov	(_cifre + 0x0003),#0x00
;	test1.c:77: cifre[2]++;
	mov	a,(_cifre + 0x0002)
	mov	r7,a
	inc	a
	mov	(_cifre + 0x0002),a
00143$:
;	test1.c:79: TF0 = 0;
;	assignBit
	clr	_TF0
;	test1.c:80: TH0 = 39;
	mov	_TH0,#0x27
;	test1.c:81: TL0 = 16;
	mov	_TL0,#0x10
00145$:
;	test1.c:84: if(P2_0 == 0) { //SET
	jb	_P2_0,00147$
;	test1.c:85: apasatSET = 1;
	mov	_apasatSET,#0x01
;	test1.c:86: n = 0;
	mov	_n,#0x00
00147$:
;	test1.c:89: if(P2_1 == 0) { //M+
	jb	_P2_1,00151$
;	test1.c:90: cifre[1]++;
	mov	r7,(_cifre + 0x0001)
	inc	r7
	mov	(_cifre + 0x0001),r7
;	test1.c:91: if(cifre[1] == 10) {
	cjne	r7,#0x0a,00151$
;	test1.c:92: cifre[1] = 0;
	mov	(_cifre + 0x0001),#0x00
;	test1.c:93: cifre[0]++;
	mov	a,_cifre
	mov	r7,a
	inc	a
	mov	_cifre,a
00151$:
;	test1.c:97: if(P2_2 == 0) { //M-
	jb	_P2_2,00158$
;	test1.c:98: if(cifre[1] == 0) {
	mov	a,(_cifre + 0x0001)
	jnz	00155$
;	test1.c:99: if(cifre[0] > 0) {
	mov	a,_cifre
	jz	00158$
;	test1.c:100: cifre[1] = 9;
	mov	(_cifre + 0x0001),#0x09
;	test1.c:101: cifre[0]--;
	mov	a,_cifre
	mov	r7,a
	dec	a
	mov	_cifre,a
	sjmp	00158$
00155$:
;	test1.c:104: else cifre[1]--;
	mov	a,(_cifre + 0x0001)
	mov	r7,a
	dec	a
	mov	(_cifre + 0x0001),a
00158$:
;	test1.c:107: if(P2_3 == 0) { //S+
	jb	_P2_3,00162$
;	test1.c:108: cifre[3]++;
	mov	r7,(_cifre + 0x0003)
	inc	r7
	mov	(_cifre + 0x0003),r7
;	test1.c:109: if(cifre[3] == 10) {
	cjne	r7,#0x0a,00162$
;	test1.c:110: cifre[3] = 0;
	mov	(_cifre + 0x0003),#0x00
;	test1.c:111: cifre[2]++;
	mov	a,(_cifre + 0x0002)
	mov	r7,a
	inc	a
	mov	(_cifre + 0x0002),a
00162$:
;	test1.c:115: if(P2_4 == 0) { //S-
	jb	_P2_4,00169$
;	test1.c:116: if(cifre[3] == 0) {
	mov	a,(_cifre + 0x0003)
	jnz	00166$
;	test1.c:117: if(cifre[2] > 0) {
	mov	a,(_cifre + 0x0002)
	jz	00169$
;	test1.c:118: cifre[3] = 9;
	mov	(_cifre + 0x0003),#0x09
;	test1.c:119: cifre[2]--;
	mov	a,(_cifre + 0x0002)
	mov	r7,a
	dec	a
	mov	(_cifre + 0x0002),a
	sjmp	00169$
00166$:
;	test1.c:122: else cifre[3]--;
	mov	a,(_cifre + 0x0003)
	mov	r7,a
	dec	a
	mov	(_cifre + 0x0003),a
00169$:
;	test1.c:125: P1 = 0xFF;
	mov	_P1,#0xff
;	test1.c:126: P3 = i << 3;
	mov	a,_i
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_P3,a
;	test1.c:127: P1 = v[cifre[n_afis]];
	mov	a,_n_afis
	add	a,#_cifre
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	add	a,#_v
	mov	r1,a
	mov	_P1,@r1
;	test1.c:128: n_afis++;
	inc	_n_afis
;	test1.c:129: if(i == 0) i = 3;
	mov	a,_i
	jnz	00171$
	mov	_i,#0x03
	sjmp	00172$
00171$:
;	test1.c:130: else i--;
	dec	_i
00172$:
;	test1.c:131: if(n_afis == 4) n_afis = 0;
	mov	a,#0x04
	cjne	a,_n_afis,00347$
	sjmp	00348$
00347$:
	ljmp	00176$
00348$:
	mov	_n_afis,#0x00
;	test1.c:133: return 0;
;	test1.c:134: }
	ljmp	00176$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
