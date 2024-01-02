                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module ex1
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _rutina_de_tratare
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _v
                                    110 	.globl _x
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _x::
      000008                        227 	.ds 1
      000009                        228 _v::
      000009                        229 	.ds 10
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram 
                                    232 ;--------------------------------------------------------
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	SSEG
      000013                        237 __start__stack:
      000013                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external initialized ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector 
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 11         [24]  284 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  285 	reti
      000004                        286 	.ds	7
      00000B 02 00 6D         [24]  287 	ljmp	_rutina_de_tratare
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.globl __sdcc_gsinit_startup
                                    296 	.globl __sdcc_program_startup
                                    297 	.globl __start__stack
                                    298 	.globl __mcs51_genXINIT
                                    299 	.globl __mcs51_genXRAMCLEAR
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  302 	ljmp	__sdcc_program_startup
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
      00000E                        308 __sdcc_program_startup:
      00000E 02 00 92         [24]  309 	ljmp	_main
                                    310 ;	return from main will return to caller
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'rutina_de_tratare'
                                    317 ;------------------------------------------------------------
                                    318 ;	ex1.c:33: void rutina_de_tratare() __interrupt 1
                                    319 ;	-----------------------------------------
                                    320 ;	 function rutina_de_tratare
                                    321 ;	-----------------------------------------
      00006D                        322 _rutina_de_tratare:
                           000007   323 	ar7 = 0x07
                           000006   324 	ar6 = 0x06
                           000005   325 	ar5 = 0x05
                           000004   326 	ar4 = 0x04
                           000003   327 	ar3 = 0x03
                           000002   328 	ar2 = 0x02
                           000001   329 	ar1 = 0x01
                           000000   330 	ar0 = 0x00
      00006D C0 E0            [24]  331 	push	acc
      00006F C0 07            [24]  332 	push	ar7
      000071 C0 D0            [24]  333 	push	psw
      000073 75 D0 00         [24]  334 	mov	psw,#0x00
                                    335 ;	ex1.c:35: x=x+1;
      000076 E5 08            [12]  336 	mov	a,_x
      000078 04               [12]  337 	inc	a
      000079 F5 08            [12]  338 	mov	_x,a
                                    339 ;	ex1.c:36: if(x == 10) x = 0;
      00007B 74 0A            [12]  340 	mov	a,#0x0a
      00007D B5 08 03         [24]  341 	cjne	a,_x,00102$
      000080 75 08 00         [24]  342 	mov	_x,#0x00
      000083                        343 00102$:
                                    344 ;	ex1.c:37: TF0=0;
                                    345 ;	assignBit
      000083 C2 8D            [12]  346 	clr	_TF0
                                    347 ;	ex1.c:38: TH0=4;
      000085 75 8C 04         [24]  348 	mov	_TH0,#0x04
                                    349 ;	ex1.c:39: TL0=0;
      000088 75 8A 00         [24]  350 	mov	_TL0,#0x00
                                    351 ;	ex1.c:40: }
      00008B D0 D0            [24]  352 	pop	psw
      00008D D0 07            [24]  353 	pop	ar7
      00008F D0 E0            [24]  354 	pop	acc
      000091 32               [24]  355 	reti
                                    356 ;	eliminated unneeded push/pop dpl
                                    357 ;	eliminated unneeded push/pop dph
                                    358 ;	eliminated unneeded push/pop b
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'main'
                                    361 ;------------------------------------------------------------
                                    362 ;	ex1.c:42: int main() {
                                    363 ;	-----------------------------------------
                                    364 ;	 function main
                                    365 ;	-----------------------------------------
      000092                        366 _main:
                                    367 ;	ex1.c:43: TR0=0;
                                    368 ;	assignBit
      000092 C2 8C            [12]  369 	clr	_TR0
                                    370 ;	ex1.c:44: TMOD=1;
      000094 75 89 01         [24]  371 	mov	_TMOD,#0x01
                                    372 ;	ex1.c:45: TL0=100;
      000097 75 8A 64         [24]  373 	mov	_TL0,#0x64
                                    374 ;	ex1.c:46: TH0=0;
      00009A 75 8C 00         [24]  375 	mov	_TH0,#0x00
                                    376 ;	ex1.c:47: EA=1;
                                    377 ;	assignBit
      00009D D2 AF            [12]  378 	setb	_EA
                                    379 ;	ex1.c:48: ET0=1;
                                    380 ;	assignBit
      00009F D2 A9            [12]  381 	setb	_ET0
                                    382 ;	ex1.c:49: x = 1;
      0000A1 75 08 01         [24]  383 	mov	_x,#0x01
                                    384 ;	ex1.c:50: P3 = 0x00;
      0000A4 75 B0 00         [24]  385 	mov	_P3,#0x00
                                    386 ;	ex1.c:51: v[0] = 0xF0;
      0000A7 75 09 F0         [24]  387 	mov	_v,#0xf0
                                    388 ;	ex1.c:52: v[1] = 0xF9;
      0000AA 75 0A F9         [24]  389 	mov	(_v + 0x0001),#0xf9
                                    390 ;	ex1.c:53: v[2] = 0xA4;
      0000AD 75 0B A4         [24]  391 	mov	(_v + 0x0002),#0xa4
                                    392 ;	ex1.c:54: v[3] = 0xB0;
      0000B0 75 0C B0         [24]  393 	mov	(_v + 0x0003),#0xb0
                                    394 ;	ex1.c:55: v[4] = 0x99;
      0000B3 75 0D 99         [24]  395 	mov	(_v + 0x0004),#0x99
                                    396 ;	ex1.c:56: v[5] = 0x92;
      0000B6 75 0E 92         [24]  397 	mov	(_v + 0x0005),#0x92
                                    398 ;	ex1.c:57: v[6] = 0x82;
      0000B9 75 0F 82         [24]  399 	mov	(_v + 0x0006),#0x82
                                    400 ;	ex1.c:58: v[7] = 0xF8;
      0000BC 75 10 F8         [24]  401 	mov	(_v + 0x0007),#0xf8
                                    402 ;	ex1.c:59: v[8] = 0x80;
      0000BF 75 11 80         [24]  403 	mov	(_v + 0x0008),#0x80
                                    404 ;	ex1.c:60: v[9] = 0x90;
      0000C2 75 12 90         [24]  405 	mov	(_v + 0x0009),#0x90
                                    406 ;	ex1.c:61: P0_7=1; // daca e pe 0 atunci decodorul e oprit
                                    407 ;	assignBit
      0000C5 D2 87            [12]  408 	setb	_P0_7
                                    409 ;	ex1.c:62: P1 = v[x];
      0000C7 E5 08            [12]  410 	mov	a,_x
      0000C9 24 09            [12]  411 	add	a,#_v
      0000CB F9               [12]  412 	mov	r1,a
      0000CC 87 90            [24]  413 	mov	_P1,@r1
                                    414 ;	ex1.c:63: TR0=1;
                                    415 ;	assignBit
      0000CE D2 8C            [12]  416 	setb	_TR0
                                    417 ;	ex1.c:64: while(1) {
      0000D0                        418 00102$:
                                    419 ;	ex1.c:65: P1 = v[x];
      0000D0 E5 08            [12]  420 	mov	a,_x
      0000D2 24 09            [12]  421 	add	a,#_v
      0000D4 F9               [12]  422 	mov	r1,a
      0000D5 87 90            [24]  423 	mov	_P1,@r1
                                    424 ;	ex1.c:67: return 0;
                                    425 ;	ex1.c:68: }
      0000D7 80 F7            [24]  426 	sjmp	00102$
                                    427 	.area CSEG    (CODE)
                                    428 	.area CONST   (CODE)
                                    429 	.area XINIT   (CODE)
                                    430 	.area CABS    (ABS,CODE)
