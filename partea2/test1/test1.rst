                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module test1
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _activareTimer
                                    109 	.globl _apasatSET
                                    110 	.globl _n_afis
                                    111 	.globl _tastaAnterioara
                                    112 	.globl _n
                                    113 	.globl _cifre
                                    114 	.globl _v
                                    115 	.globl _i
                                    116 	.globl _x
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _x::
      000008                        233 	.ds 1
      000009                        234 _i::
      000009                        235 	.ds 1
      00000A                        236 _v::
      00000A                        237 	.ds 15
      000019                        238 _cifre::
      000019                        239 	.ds 4
      00001D                        240 _n::
      00001D                        241 	.ds 1
      00001E                        242 _tastaAnterioara::
      00001E                        243 	.ds 1
      00001F                        244 _n_afis::
      00001F                        245 	.ds 1
      000020                        246 _apasatSET::
      000020                        247 	.ds 1
      000021                        248 _activareTimer::
      000021                        249 	.ds 1
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      000022                        257 __start__stack:
      000022                        258 	.ds	1
                                    259 
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area IABS    (ABS,DATA)
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
                                    273 ;--------------------------------------------------------
                                    274 ; paged external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area PSEG    (PAG,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XSEG    (XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XABS    (ABS,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; external initialized ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XISEG   (XDATA)
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT0 (CODE)
                                    291 	.area GSINIT1 (CODE)
                                    292 	.area GSINIT2 (CODE)
                                    293 	.area GSINIT3 (CODE)
                                    294 	.area GSINIT4 (CODE)
                                    295 	.area GSINIT5 (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area CSEG    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; interrupt vector 
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
      000000                        303 __interrupt_vect:
      000000 02 00 06         [24]  304 	ljmp	__sdcc_gsinit_startup
                                    305 ;--------------------------------------------------------
                                    306 ; global & static initialisations
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.globl __sdcc_gsinit_startup
                                    313 	.globl __sdcc_program_startup
                                    314 	.globl __start__stack
                                    315 	.globl __mcs51_genXINIT
                                    316 	.globl __mcs51_genXRAMCLEAR
                                    317 	.globl __mcs51_genRAMCLEAR
                                    318 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  319 	ljmp	__sdcc_program_startup
                                    320 ;--------------------------------------------------------
                                    321 ; Home
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area HOME    (CODE)
      000003                        325 __sdcc_program_startup:
      000003 02 00 62         [24]  326 	ljmp	_main
                                    327 ;	return from main will return to caller
                                    328 ;--------------------------------------------------------
                                    329 ; code
                                    330 ;--------------------------------------------------------
                                    331 	.area CSEG    (CODE)
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'main'
                                    334 ;------------------------------------------------------------
                                    335 ;	test1.c:5: int main() {
                                    336 ;	-----------------------------------------
                                    337 ;	 function main
                                    338 ;	-----------------------------------------
      000062                        339 _main:
                           000007   340 	ar7 = 0x07
                           000006   341 	ar6 = 0x06
                           000005   342 	ar5 = 0x05
                           000004   343 	ar4 = 0x04
                           000003   344 	ar3 = 0x03
                           000002   345 	ar2 = 0x02
                           000001   346 	ar1 = 0x01
                           000000   347 	ar0 = 0x00
                                    348 ;	test1.c:6: TR0 = 0;
                                    349 ;	assignBit
      000062 C2 8C            [12]  350 	clr	_TR0
                                    351 ;	test1.c:7: TMOD = 1;
      000064 75 89 01         [24]  352 	mov	_TMOD,#0x01
                                    353 ;	test1.c:8: TH0 = 39;
      000067 75 8C 27         [24]  354 	mov	_TH0,#0x27
                                    355 ;	test1.c:9: TL0 = 16;
      00006A 75 8A 10         [24]  356 	mov	_TL0,#0x10
                                    357 ;	test1.c:10: v[0] = 0xC0;
      00006D 75 0A C0         [24]  358 	mov	_v,#0xc0
                                    359 ;	test1.c:11: v[1] = 0xF9;
      000070 75 0B F9         [24]  360 	mov	(_v + 0x0001),#0xf9
                                    361 ;	test1.c:12: v[2] = 0xA4;
      000073 75 0C A4         [24]  362 	mov	(_v + 0x0002),#0xa4
                                    363 ;	test1.c:13: v[3] = 0xB0;
      000076 75 0D B0         [24]  364 	mov	(_v + 0x0003),#0xb0
                                    365 ;	test1.c:14: v[4] = 0x99;
      000079 75 0E 99         [24]  366 	mov	(_v + 0x0004),#0x99
                                    367 ;	test1.c:15: v[5] = 0x92;
      00007C 75 0F 92         [24]  368 	mov	(_v + 0x0005),#0x92
                                    369 ;	test1.c:16: v[6] = 0x82;
      00007F 75 10 82         [24]  370 	mov	(_v + 0x0006),#0x82
                                    371 ;	test1.c:17: v[7] = 0xF8;
      000082 75 11 F8         [24]  372 	mov	(_v + 0x0007),#0xf8
                                    373 ;	test1.c:18: v[8] = 0x80;
      000085 75 12 80         [24]  374 	mov	(_v + 0x0008),#0x80
                                    375 ;	test1.c:19: v[9] = 0x90;
      000088 75 13 90         [24]  376 	mov	(_v + 0x0009),#0x90
                                    377 ;	test1.c:20: v[10] = 0xBF; //pentru * pun -
      00008B 75 14 BF         [24]  378 	mov	(_v + 0x000a),#0xbf
                                    379 ;	test1.c:21: v[11] = 0x89; //pentru # pun H
      00008E 75 15 89         [24]  380 	mov	(_v + 0x000b),#0x89
                                    381 ;	test1.c:22: v[12] = 0xFF; //pentru nimic
      000091 75 16 FF         [24]  382 	mov	(_v + 0x000c),#0xff
                                    383 ;	test1.c:23: apasatSET = 0;
      000094 75 20 00         [24]  384 	mov	_apasatSET,#0x00
                                    385 ;	test1.c:24: tastaAnterioara = 12;
      000097 75 1E 0C         [24]  386 	mov	_tastaAnterioara,#0x0c
                                    387 ;	test1.c:25: i = 0;
      00009A 75 09 00         [24]  388 	mov	_i,#0x00
                                    389 ;	test1.c:26: n_afis = 3;
      00009D 75 1F 03         [24]  390 	mov	_n_afis,#0x03
                                    391 ;	test1.c:27: cifre[0] = 12;
      0000A0 75 19 0C         [24]  392 	mov	_cifre,#0x0c
                                    393 ;	test1.c:28: cifre[1] = 12;
      0000A3 75 1A 0C         [24]  394 	mov	(_cifre + 0x0001),#0x0c
                                    395 ;	test1.c:29: cifre[2] = 12;
      0000A6 75 1B 0C         [24]  396 	mov	(_cifre + 0x0002),#0x0c
                                    397 ;	test1.c:30: cifre[3] = 12;
      0000A9 75 1C 0C         [24]  398 	mov	(_cifre + 0x0003),#0x0c
                                    399 ;	test1.c:31: activareTimer = 0;
      0000AC 75 21 00         [24]  400 	mov	_activareTimer,#0x00
                                    401 ;	test1.c:32: while(1) {
      0000AF                        402 00176$:
                                    403 ;	test1.c:33: if(apasatSET) {
      0000AF E5 20            [12]  404 	mov	a,_apasatSET
      0000B1 70 03            [24]  405 	jnz	00312$
      0000B3 02 01 48         [24]  406 	ljmp	00141$
      0000B6                        407 00312$:
                                    408 ;	test1.c:34: x = 12;
      0000B6 75 08 0C         [24]  409 	mov	_x,#0x0c
                                    410 ;	test1.c:35: P0 = 0xF7;
      0000B9 75 80 F7         [24]  411 	mov	_P0,#0xf7
                                    412 ;	test1.c:36: if(P0_6 == 0) x = 1;
      0000BC 20 86 05         [24]  413 	jb	_P0_6,00107$
      0000BF 75 08 01         [24]  414 	mov	_x,#0x01
      0000C2 80 0E            [24]  415 	sjmp	00108$
      0000C4                        416 00107$:
                                    417 ;	test1.c:37: else if(P0_5 == 0) x = 2;
      0000C4 20 85 05         [24]  418 	jb	_P0_5,00104$
      0000C7 75 08 02         [24]  419 	mov	_x,#0x02
      0000CA 80 06            [24]  420 	sjmp	00108$
      0000CC                        421 00104$:
                                    422 ;	test1.c:38: else if(P0_4 == 0) x = 3;
      0000CC 20 84 03         [24]  423 	jb	_P0_4,00108$
      0000CF 75 08 03         [24]  424 	mov	_x,#0x03
      0000D2                        425 00108$:
                                    426 ;	test1.c:40: P0=0xFB;
      0000D2 75 80 FB         [24]  427 	mov	_P0,#0xfb
                                    428 ;	test1.c:42: if(P0_6 == 0) x = 4;
      0000D5 20 86 05         [24]  429 	jb	_P0_6,00115$
      0000D8 75 08 04         [24]  430 	mov	_x,#0x04
      0000DB 80 0E            [24]  431 	sjmp	00116$
      0000DD                        432 00115$:
                                    433 ;	test1.c:43: else if(P0_5 == 0) x = 5;
      0000DD 20 85 05         [24]  434 	jb	_P0_5,00112$
      0000E0 75 08 05         [24]  435 	mov	_x,#0x05
      0000E3 80 06            [24]  436 	sjmp	00116$
      0000E5                        437 00112$:
                                    438 ;	test1.c:44: else if(P0_4 == 0) x = 6;
      0000E5 20 84 03         [24]  439 	jb	_P0_4,00116$
      0000E8 75 08 06         [24]  440 	mov	_x,#0x06
      0000EB                        441 00116$:
                                    442 ;	test1.c:46: P0 = 0xFD;
      0000EB 75 80 FD         [24]  443 	mov	_P0,#0xfd
                                    444 ;	test1.c:48: if(P0_6 == 0) x = 7;
      0000EE 20 86 05         [24]  445 	jb	_P0_6,00123$
      0000F1 75 08 07         [24]  446 	mov	_x,#0x07
      0000F4 80 0E            [24]  447 	sjmp	00124$
      0000F6                        448 00123$:
                                    449 ;	test1.c:49: else if(P0_5 == 0) x = 8;
      0000F6 20 85 05         [24]  450 	jb	_P0_5,00120$
      0000F9 75 08 08         [24]  451 	mov	_x,#0x08
      0000FC 80 06            [24]  452 	sjmp	00124$
      0000FE                        453 00120$:
                                    454 ;	test1.c:50: else if(P0_4 == 0) x = 9;
      0000FE 20 84 03         [24]  455 	jb	_P0_4,00124$
      000101 75 08 09         [24]  456 	mov	_x,#0x09
      000104                        457 00124$:
                                    458 ;	test1.c:52: P0 = 0xFE;
      000104 75 80 FE         [24]  459 	mov	_P0,#0xfe
                                    460 ;	test1.c:53: if(P0_6 == 0) x = 10;
      000107 20 86 05         [24]  461 	jb	_P0_6,00131$
      00010A 75 08 0A         [24]  462 	mov	_x,#0x0a
      00010D 80 0E            [24]  463 	sjmp	00132$
      00010F                        464 00131$:
                                    465 ;	test1.c:54: else if(P0_5 == 0) x = 0;
      00010F 20 85 05         [24]  466 	jb	_P0_5,00128$
      000112 75 08 00         [24]  467 	mov	_x,#0x00
      000115 80 06            [24]  468 	sjmp	00132$
      000117                        469 00128$:
                                    470 ;	test1.c:55: else if(P0_4 == 0) x = 11;
      000117 20 84 03         [24]  471 	jb	_P0_4,00132$
      00011A 75 08 0B         [24]  472 	mov	_x,#0x0b
      00011D                        473 00132$:
                                    474 ;	test1.c:57: if(tastaAnterioara != x && x != 12) {
      00011D E5 08            [12]  475 	mov	a,_x
      00011F B5 1E 02         [24]  476 	cjne	a,_tastaAnterioara,00325$
      000122 80 10            [24]  477 	sjmp	00134$
      000124                        478 00325$:
      000124 74 0C            [12]  479 	mov	a,#0x0c
      000126 B5 08 02         [24]  480 	cjne	a,_x,00326$
      000129 80 09            [24]  481 	sjmp	00134$
      00012B                        482 00326$:
                                    483 ;	test1.c:58: cifre[n] = x;
      00012B E5 1D            [12]  484 	mov	a,_n
      00012D 24 19            [12]  485 	add	a,#_cifre
      00012F F8               [12]  486 	mov	r0,a
      000130 A6 08            [24]  487 	mov	@r0,_x
                                    488 ;	test1.c:59: n++;
      000132 05 1D            [12]  489 	inc	_n
      000134                        490 00134$:
                                    491 ;	test1.c:62: if(n == 4) {
      000134 74 04            [12]  492 	mov	a,#0x04
      000136 B5 1D 0C         [24]  493 	cjne	a,_n,00139$
                                    494 ;	test1.c:63: apasatSET = 0;
      000139 75 20 00         [24]  495 	mov	_apasatSET,#0x00
                                    496 ;	test1.c:64: if(!activareTimer) {
      00013C E5 21            [12]  497 	mov	a,_activareTimer
      00013E 70 05            [24]  498 	jnz	00139$
                                    499 ;	test1.c:65: TR0 = 1;
                                    500 ;	assignBit
      000140 D2 8C            [12]  501 	setb	_TR0
                                    502 ;	test1.c:66: activareTimer = 1;
      000142 75 21 01         [24]  503 	mov	_activareTimer,#0x01
      000145                        504 00139$:
                                    505 ;	test1.c:70: tastaAnterioara = x;
      000145 85 08 1E         [24]  506 	mov	_tastaAnterioara,_x
      000148                        507 00141$:
                                    508 ;	test1.c:73: if(TF0 == 1) {
      000148 30 8D 19         [24]  509 	jnb	_TF0,00145$
                                    510 ;	test1.c:74: cifre[3]++;
      00014B AF 1C            [24]  511 	mov	r7,(_cifre + 0x0003)
      00014D 0F               [12]  512 	inc	r7
      00014E 8F 1C            [24]  513 	mov	(_cifre + 0x0003),r7
                                    514 ;	test1.c:75: if(cifre[3] == 10) {
      000150 BF 0A 09         [24]  515 	cjne	r7,#0x0a,00143$
                                    516 ;	test1.c:76: cifre[3] = 0;
      000153 75 1C 00         [24]  517 	mov	(_cifre + 0x0003),#0x00
                                    518 ;	test1.c:77: cifre[2]++;
      000156 E5 1B            [12]  519 	mov	a,(_cifre + 0x0002)
      000158 FF               [12]  520 	mov	r7,a
      000159 04               [12]  521 	inc	a
      00015A F5 1B            [12]  522 	mov	(_cifre + 0x0002),a
      00015C                        523 00143$:
                                    524 ;	test1.c:79: TF0 = 0;
                                    525 ;	assignBit
      00015C C2 8D            [12]  526 	clr	_TF0
                                    527 ;	test1.c:80: TH0 = 39;
      00015E 75 8C 27         [24]  528 	mov	_TH0,#0x27
                                    529 ;	test1.c:81: TL0 = 16;
      000161 75 8A 10         [24]  530 	mov	_TL0,#0x10
      000164                        531 00145$:
                                    532 ;	test1.c:84: if(P2_0 == 0) { //SET
      000164 20 A0 06         [24]  533 	jb	_P2_0,00147$
                                    534 ;	test1.c:85: apasatSET = 1;
      000167 75 20 01         [24]  535 	mov	_apasatSET,#0x01
                                    536 ;	test1.c:86: n = 0;
      00016A 75 1D 00         [24]  537 	mov	_n,#0x00
      00016D                        538 00147$:
                                    539 ;	test1.c:89: if(P2_1 == 0) { //M+
      00016D 20 A1 11         [24]  540 	jb	_P2_1,00151$
                                    541 ;	test1.c:90: cifre[1]++;
      000170 AF 1A            [24]  542 	mov	r7,(_cifre + 0x0001)
      000172 0F               [12]  543 	inc	r7
      000173 8F 1A            [24]  544 	mov	(_cifre + 0x0001),r7
                                    545 ;	test1.c:91: if(cifre[1] == 10) {
      000175 BF 0A 09         [24]  546 	cjne	r7,#0x0a,00151$
                                    547 ;	test1.c:92: cifre[1] = 0;
      000178 75 1A 00         [24]  548 	mov	(_cifre + 0x0001),#0x00
                                    549 ;	test1.c:93: cifre[0]++;
      00017B E5 19            [12]  550 	mov	a,_cifre
      00017D FF               [12]  551 	mov	r7,a
      00017E 04               [12]  552 	inc	a
      00017F F5 19            [12]  553 	mov	_cifre,a
      000181                        554 00151$:
                                    555 ;	test1.c:97: if(P2_2 == 0) { //M-
      000181 20 A2 19         [24]  556 	jb	_P2_2,00158$
                                    557 ;	test1.c:98: if(cifre[1] == 0) {
      000184 E5 1A            [12]  558 	mov	a,(_cifre + 0x0001)
      000186 70 0F            [24]  559 	jnz	00155$
                                    560 ;	test1.c:99: if(cifre[0] > 0) {
      000188 E5 19            [12]  561 	mov	a,_cifre
      00018A 60 11            [24]  562 	jz	00158$
                                    563 ;	test1.c:100: cifre[1] = 9;
      00018C 75 1A 09         [24]  564 	mov	(_cifre + 0x0001),#0x09
                                    565 ;	test1.c:101: cifre[0]--;
      00018F E5 19            [12]  566 	mov	a,_cifre
      000191 FF               [12]  567 	mov	r7,a
      000192 14               [12]  568 	dec	a
      000193 F5 19            [12]  569 	mov	_cifre,a
      000195 80 06            [24]  570 	sjmp	00158$
      000197                        571 00155$:
                                    572 ;	test1.c:104: else cifre[1]--;
      000197 E5 1A            [12]  573 	mov	a,(_cifre + 0x0001)
      000199 FF               [12]  574 	mov	r7,a
      00019A 14               [12]  575 	dec	a
      00019B F5 1A            [12]  576 	mov	(_cifre + 0x0001),a
      00019D                        577 00158$:
                                    578 ;	test1.c:107: if(P2_3 == 0) { //S+
      00019D 20 A3 11         [24]  579 	jb	_P2_3,00162$
                                    580 ;	test1.c:108: cifre[3]++;
      0001A0 AF 1C            [24]  581 	mov	r7,(_cifre + 0x0003)
      0001A2 0F               [12]  582 	inc	r7
      0001A3 8F 1C            [24]  583 	mov	(_cifre + 0x0003),r7
                                    584 ;	test1.c:109: if(cifre[3] == 10) {
      0001A5 BF 0A 09         [24]  585 	cjne	r7,#0x0a,00162$
                                    586 ;	test1.c:110: cifre[3] = 0;
      0001A8 75 1C 00         [24]  587 	mov	(_cifre + 0x0003),#0x00
                                    588 ;	test1.c:111: cifre[2]++;
      0001AB E5 1B            [12]  589 	mov	a,(_cifre + 0x0002)
      0001AD FF               [12]  590 	mov	r7,a
      0001AE 04               [12]  591 	inc	a
      0001AF F5 1B            [12]  592 	mov	(_cifre + 0x0002),a
      0001B1                        593 00162$:
                                    594 ;	test1.c:115: if(P2_4 == 0) { //S-
      0001B1 20 A4 19         [24]  595 	jb	_P2_4,00169$
                                    596 ;	test1.c:116: if(cifre[3] == 0) {
      0001B4 E5 1C            [12]  597 	mov	a,(_cifre + 0x0003)
      0001B6 70 0F            [24]  598 	jnz	00166$
                                    599 ;	test1.c:117: if(cifre[2] > 0) {
      0001B8 E5 1B            [12]  600 	mov	a,(_cifre + 0x0002)
      0001BA 60 11            [24]  601 	jz	00169$
                                    602 ;	test1.c:118: cifre[3] = 9;
      0001BC 75 1C 09         [24]  603 	mov	(_cifre + 0x0003),#0x09
                                    604 ;	test1.c:119: cifre[2]--;
      0001BF E5 1B            [12]  605 	mov	a,(_cifre + 0x0002)
      0001C1 FF               [12]  606 	mov	r7,a
      0001C2 14               [12]  607 	dec	a
      0001C3 F5 1B            [12]  608 	mov	(_cifre + 0x0002),a
      0001C5 80 06            [24]  609 	sjmp	00169$
      0001C7                        610 00166$:
                                    611 ;	test1.c:122: else cifre[3]--;
      0001C7 E5 1C            [12]  612 	mov	a,(_cifre + 0x0003)
      0001C9 FF               [12]  613 	mov	r7,a
      0001CA 14               [12]  614 	dec	a
      0001CB F5 1C            [12]  615 	mov	(_cifre + 0x0003),a
      0001CD                        616 00169$:
                                    617 ;	test1.c:125: P1 = 0xFF;
      0001CD 75 90 FF         [24]  618 	mov	_P1,#0xff
                                    619 ;	test1.c:126: P3 = i << 3;
      0001D0 E5 09            [12]  620 	mov	a,_i
      0001D2 C4               [12]  621 	swap	a
      0001D3 03               [12]  622 	rr	a
      0001D4 54 F8            [12]  623 	anl	a,#0xf8
      0001D6 F5 B0            [12]  624 	mov	_P3,a
                                    625 ;	test1.c:127: P1 = v[cifre[n_afis]];
      0001D8 E5 1F            [12]  626 	mov	a,_n_afis
      0001DA 24 19            [12]  627 	add	a,#_cifre
      0001DC F9               [12]  628 	mov	r1,a
      0001DD E7               [12]  629 	mov	a,@r1
      0001DE FF               [12]  630 	mov	r7,a
      0001DF 24 0A            [12]  631 	add	a,#_v
      0001E1 F9               [12]  632 	mov	r1,a
      0001E2 87 90            [24]  633 	mov	_P1,@r1
                                    634 ;	test1.c:128: n_afis++;
      0001E4 05 1F            [12]  635 	inc	_n_afis
                                    636 ;	test1.c:129: if(i == 0) i = 3;
      0001E6 E5 09            [12]  637 	mov	a,_i
      0001E8 70 05            [24]  638 	jnz	00171$
      0001EA 75 09 03         [24]  639 	mov	_i,#0x03
      0001ED 80 02            [24]  640 	sjmp	00172$
      0001EF                        641 00171$:
                                    642 ;	test1.c:130: else i--;
      0001EF 15 09            [12]  643 	dec	_i
      0001F1                        644 00172$:
                                    645 ;	test1.c:131: if(n_afis == 4) n_afis = 0;
      0001F1 74 04            [12]  646 	mov	a,#0x04
      0001F3 B5 1F 02         [24]  647 	cjne	a,_n_afis,00347$
      0001F6 80 03            [24]  648 	sjmp	00348$
      0001F8                        649 00347$:
      0001F8 02 00 AF         [24]  650 	ljmp	00176$
      0001FB                        651 00348$:
      0001FB 75 1F 00         [24]  652 	mov	_n_afis,#0x00
                                    653 ;	test1.c:133: return 0;
                                    654 ;	test1.c:134: }
      0001FE 02 00 AF         [24]  655 	ljmp	00176$
                                    656 	.area CSEG    (CODE)
                                    657 	.area CONST   (CODE)
                                    658 	.area XINIT   (CODE)
                                    659 	.area CABS    (ABS,CODE)
