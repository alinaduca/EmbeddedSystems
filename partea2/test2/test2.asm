;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module test2
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
	.globl _nrCif
	.globl _n_afis
	.globl _disp
	.globl _display
	.globl _delta
	.globl _rez
	.globl _j
	.globl _i
	.globl _aux
	.globl _c
	.globl _b
	.globl _a
	.globl _n
	.globl _cif
	.globl _cifre
	.globl _tastaAnterioara
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
_tastaAnterioara::
	.ds 1
_cifre::
	.ds 12
_cif::
	.ds 1
_n::
	.ds 1
_a::
	.ds 1
_b::
	.ds 1
_c::
	.ds 1
_aux::
	.ds 1
_i::
	.ds 1
_j::
	.ds 1
_rez::
	.ds 1
_delta::
	.ds 1
_display::
	.ds 3
_disp::
	.ds 1
_n_afis::
	.ds 1
_nrCif::
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
;	test2.c:6: int main() {
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
;	test2.c:7: v[0] = 0xC0;
	mov	_v,#0xc0
;	test2.c:8: v[1] = 0xF9;
	mov	(_v + 0x0001),#0xf9
;	test2.c:9: v[2] = 0xA4;
	mov	(_v + 0x0002),#0xa4
;	test2.c:10: v[3] = 0xB0;
	mov	(_v + 0x0003),#0xb0
;	test2.c:11: v[4] = 0x99;
	mov	(_v + 0x0004),#0x99
;	test2.c:12: v[5] = 0x92;
	mov	(_v + 0x0005),#0x92
;	test2.c:13: v[6] = 0x82;
	mov	(_v + 0x0006),#0x82
;	test2.c:14: v[7] = 0xF8;
	mov	(_v + 0x0007),#0xf8
;	test2.c:15: v[8] = 0x80;
	mov	(_v + 0x0008),#0x80
;	test2.c:16: v[9] = 0x90;
	mov	(_v + 0x0009),#0x90
;	test2.c:17: v[10] = 0xBF; //pentru * pun -
	mov	(_v + 0x000a),#0xbf
;	test2.c:18: v[11] = 0x89; //pentru # pun H
	mov	(_v + 0x000b),#0x89
;	test2.c:19: v[12] = 0xFF; //pentru nimic
	mov	(_v + 0x000c),#0xff
;	test2.c:20: disp = 0;
	mov	_disp,#0x00
;	test2.c:21: a = 0;
	mov	_a,#0x00
;	test2.c:22: b = 0;
	mov	_b,#0x00
;	test2.c:23: c = 0;
	mov	_c,#0x00
;	test2.c:24: n = 0;
	mov	_n,#0x00
;	test2.c:25: cif = 0;
	mov	_cif,#0x00
;	test2.c:26: nrCif = 0;
	mov	_nrCif,#0x00
;	test2.c:27: display[0] = 12;
	mov	_display,#0x0c
;	test2.c:28: display[1] = 12;
	mov	(_display + 0x0001),#0x0c
;	test2.c:29: display[2] = 12;
	mov	(_display + 0x0002),#0x0c
;	test2.c:30: for(i = 0; i < 3; i++)
	mov	_i,#0x00
00183$:
;	test2.c:31: for(j = 0; j < 4; j++)
	mov	_j,#0x00
00181$:
;	test2.c:32: cifre[i][j] = 0;
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_cifre
	mov	r7,a
	add	a,_j
	mov	r0,a
	mov	@r0,#0x00
;	test2.c:31: for(j = 0; j < 4; j++)
	inc	_j
	mov	a,#0x100 - 0x04
	add	a,_j
	jnc	00181$
;	test2.c:30: for(i = 0; i < 3; i++)
	inc	_i
	mov	a,#0x100 - 0x03
	add	a,_i
	jnc	00183$
;	test2.c:33: while(1) {
00179$:
;	test2.c:34: x = 12;
	mov	_x,#0x0c
;	test2.c:35: P0 = 0xF7;
	mov	_P0,#0xf7
;	test2.c:36: if(P0_6 == 0) x = 1;
	jb	_P0_6,00109$
	mov	_x,#0x01
	sjmp	00110$
00109$:
;	test2.c:37: else if(P0_5 == 0) x = 2;
	jb	_P0_5,00106$
	mov	_x,#0x02
	sjmp	00110$
00106$:
;	test2.c:38: else if(P0_4 == 0) x = 3;
	jb	_P0_4,00110$
	mov	_x,#0x03
00110$:
;	test2.c:40: P0=0xFB;
	mov	_P0,#0xfb
;	test2.c:41: if(P0_6 == 0) x = 4;
	jb	_P0_6,00117$
	mov	_x,#0x04
	sjmp	00118$
00117$:
;	test2.c:42: else if(P0_5 == 0) x = 5;
	jb	_P0_5,00114$
	mov	_x,#0x05
	sjmp	00118$
00114$:
;	test2.c:43: else if(P0_4 == 0) x = 6;
	jb	_P0_4,00118$
	mov	_x,#0x06
00118$:
;	test2.c:45: P0 = 0xFD;
	mov	_P0,#0xfd
;	test2.c:46: if(P0_6 == 0) x = 7;
	jb	_P0_6,00125$
	mov	_x,#0x07
	sjmp	00126$
00125$:
;	test2.c:47: else if(P0_5 == 0) x = 8;
	jb	_P0_5,00122$
	mov	_x,#0x08
	sjmp	00126$
00122$:
;	test2.c:48: else if(P0_4 == 0) x = 9;
	jb	_P0_4,00126$
	mov	_x,#0x09
00126$:
;	test2.c:50: P0 = 0xFE;
	mov	_P0,#0xfe
;	test2.c:51: if(P0_6 == 0) x = 10;
	jb	_P0_6,00133$
	mov	_x,#0x0a
	sjmp	00134$
00133$:
;	test2.c:52: else if(P0_5 == 0) x = 0;
	jb	_P0_5,00130$
	mov	_x,#0x00
	sjmp	00134$
00130$:
;	test2.c:53: else if(P0_4 == 0) x = 11;
	jb	_P0_4,00134$
	mov	_x,#0x0b
00134$:
;	test2.c:55: if(tastaAnterioara != x && x != 12) {
	mov	a,_x
	cjne	a,_tastaAnterioara,00353$
	ljmp	00159$
00353$:
	mov	a,#0x0c
	cjne	a,_x,00354$
	mov	a,#0x01
	sjmp	00355$
00354$:
	clr	a
00355$:
	mov	r7,a
	jz	00356$
	ljmp	00159$
00356$:
;	test2.c:56: if(x == 11) {
	mov	a,#0x0b
	cjne	a,_x,00156$
;	test2.c:57: if(cif > 0) {
	mov	a,_cif
	jnz	00359$
	ljmp	00159$
00359$:
;	test2.c:58: aux = cifre[n][0] * 1000 + cifre[n][1] * 100 + cifre[n][2] * 10 + cifre[n][3];
	mov	a,_n
	add	a,_n
	add	a,acc
	add	a,#_cifre
	mov	r1,a
	mov	a,@r1
	mov	b,#0xe8
	mul	ab
	mov	r6,a
	mov	a,r1
	inc	a
	mov	r0,a
	mov	a,@r0
	mov	b,#0x64
	mul	ab
	add	a,r6
	mov	r6,a
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0a
	mul	ab
	add	a,r6
	mov	r6,a
	inc	r1
	inc	r1
	inc	r1
	mov	a,@r1
	mov	r5,a
	add	a,r6
	mov	_aux,a
;	test2.c:59: if(n == 0) {
	mov	a,_n
	jnz	00141$
;	test2.c:60: a = aux;
	mov	_a,_aux
	sjmp	00142$
00141$:
;	test2.c:62: else if(n == 1) {
	mov	a,#0x01
	cjne	a,_n,00138$
;	test2.c:63: b = aux;
	mov	_b,_aux
	sjmp	00142$
00138$:
;	test2.c:65: else if(n == 2) {
	mov	a,#0x02
	cjne	a,_n,00142$
;	test2.c:66: c = aux;
	mov	_c,_aux
00142$:
;	test2.c:68: cif = 0;
	mov	_cif,#0x00
;	test2.c:69: n++;
	inc	_n
	sjmp	00159$
00156$:
;	test2.c:72: else if(x == 10) {
	mov	a,#0x0a
	cjne	a,_x,00153$
;	test2.c:73: n = 0;
	mov	_n,#0x00
;	test2.c:74: cif = 0;
	mov	_cif,#0x00
;	test2.c:75: a = 0;
	mov	_a,#0x00
;	test2.c:76: b = 0;
	mov	_b,#0x00
;	test2.c:77: c = 0;
	mov	_c,#0x00
;	test2.c:78: for(i = 0; i < 3; i++)
	mov	_i,#0x00
00187$:
;	test2.c:79: for(j = 0; j < 4; j++)
	mov	_j,#0x00
00185$:
;	test2.c:80: cifre[i][j] = 0;
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_cifre
	mov	r6,a
	add	a,_j
	mov	r0,a
	mov	@r0,#0x00
;	test2.c:79: for(j = 0; j < 4; j++)
	inc	_j
	mov	a,#0x100 - 0x04
	add	a,_j
	jnc	00185$
;	test2.c:78: for(i = 0; i < 3; i++)
	inc	_i
	mov	a,#0x100 - 0x03
	add	a,_i
	jnc	00187$
	sjmp	00159$
00153$:
;	test2.c:82: else if(x != 12) {
	mov	a,r7
	jnz	00159$
;	test2.c:83: if(n < 3 && cif < 4) {
	mov	a,#0x100 - 0x03
	add	a,_n
	jc	00159$
	mov	a,#0x100 - 0x04
	add	a,_cif
	jc	00159$
;	test2.c:84: cifre[n][cif] = x;
	mov	a,_n
	add	a,_n
	add	a,acc
	add	a,#_cifre
	mov	r7,a
	add	a,_cif
	mov	r0,a
	mov	@r0,_x
;	test2.c:85: cif++;
	inc	_cif
00159$:
;	test2.c:90: if(n == 3) {
	mov	a,#0x03
	cjne	a,_n,00372$
	sjmp	00373$
00372$:
	ljmp	00171$
00373$:
;	test2.c:95: delta = b * b - 4 * a * c;
	mov	a,_b
	mov	b,a
	mul	ab
	mov	r7,a
	mov	a,_a
	add	a,acc
	add	a,acc
	mov	r6,a
	mov	r5,_c
	mov	b,r5
	mov	a,r6
	mul	ab
	mov	r6,a
	mov	a,r7
	clr	c
	subb	a,r6
	mov	_delta,a
;	test2.c:96: if(P2_0 == 0) rez = (-b + delta/2) / (2 * a);
	jb	_P2_0,00162$
	mov	r6,_b
	mov	r7,#0x00
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	r4,_delta
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	mov	r6,_a
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	__divsint_PARM_2,a
	mov	a,r7
	rlc	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	mov	_rez,r6
	sjmp	00163$
00162$:
;	test2.c:97: else rez = (-b - delta/2) / (2 * a);
	mov	r6,_b
	mov	r7,#0x00
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	r4,_delta
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r7
	subb	a,r5
	mov	dph,a
	mov	r6,_a
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	__divsint_PARM_2,a
	mov	a,r7
	rlc	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	mov	_rez,r6
00163$:
;	test2.c:99: display[0] = rez % 10;
	mov	r6,_rez
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	_display,r6
;	test2.c:100: display[1] = (rez / 10) % 10;
	mov	r6,_rez
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	(_display + 0x0001),r6
;	test2.c:101: display[2] = (rez / 100) % 10; //maximul e 255
	mov	r6,_rez
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
;	test2.c:102: if(display[2] == 0) {
	mov	a,r6
	mov	(_display + 0x0002),a
	jnz	00168$
;	test2.c:103: if(display[1] == 0) {
	mov	a,(_display + 0x0001)
	jnz	00165$
;	test2.c:104: nrCif = 1;
	mov	_nrCif,#0x01
	sjmp	00169$
00165$:
;	test2.c:106: else nrCif = 2;
	mov	_nrCif,#0x02
	sjmp	00169$
00168$:
;	test2.c:108: else nrCif = 3;
	mov	_nrCif,#0x03
00169$:
;	test2.c:109: n = 0;
	mov	_n,#0x00
00171$:
;	test2.c:112: P1 = 0xFF;
	mov	_P1,#0xff
;	test2.c:113: P3 = disp << 3;
	mov	a,_disp
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_P3,a
;	test2.c:114: P1 = v[display[n_afis]];
	mov	a,_n_afis
	add	a,#_display
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	add	a,#_v
	mov	r1,a
	mov	_P1,@r1
;	test2.c:115: if(i == 0) i = 3;
	mov	a,_i
	jnz	00173$
	mov	_i,#0x03
	sjmp	00174$
00173$:
;	test2.c:116: else i--;
	dec	_i
00174$:
;	test2.c:117: if(n_afis == 0) n_afis = nrCif;
	mov	a,_n_afis
	jnz	00176$
	mov	_n_afis,_nrCif
	ljmp	00179$
00176$:
;	test2.c:118: else n_afis--;
	dec	_n_afis
;	test2.c:120: return 0;
;	test2.c:121: }
	ljmp	00179$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
