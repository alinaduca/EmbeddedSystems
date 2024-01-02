                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab12
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
                                    108 	.globl _niciunButonApasat
                                    109 	.globl _tasta_veche
                                    110 	.globl _display4
                                    111 	.globl _display3
                                    112 	.globl _display2
                                    113 	.globl _display1
                                    114 	.globl _nr_taste_apasate
                                    115 	.globl _i
                                    116 	.globl _v
                                    117 	.globl _x
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
      000008                        233 _x::
      000008                        234 	.ds 1
      000009                        235 _v::
      000009                        236 	.ds 15
      000018                        237 _i::
      000018                        238 	.ds 1
      000019                        239 _nr_taste_apasate::
      000019                        240 	.ds 1
      00001A                        241 _display1::
      00001A                        242 	.ds 1
      00001B                        243 _display2::
      00001B                        244 	.ds 1
      00001C                        245 _display3::
      00001C                        246 	.ds 1
      00001D                        247 _display4::
      00001D                        248 	.ds 1
      00001E                        249 _tasta_veche::
      00001E                        250 	.ds 1
      00001F                        251 _niciunButonApasat::
      00001F                        252 	.ds 1
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 ;--------------------------------------------------------
                                    257 ; Stack segment in internal ram 
                                    258 ;--------------------------------------------------------
                                    259 	.area	SSEG
      000020                        260 __start__stack:
      000020                        261 	.ds	1
                                    262 
                                    263 ;--------------------------------------------------------
                                    264 ; indirectly addressable internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area ISEG    (DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area IABS    (ABS,DATA)
                                    271 	.area IABS    (ABS,DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; bit data
                                    274 ;--------------------------------------------------------
                                    275 	.area BSEG    (BIT)
                                    276 ;--------------------------------------------------------
                                    277 ; paged external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area PSEG    (PAG,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XSEG    (XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XABS    (ABS,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; external initialized ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XISEG   (XDATA)
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT0 (CODE)
                                    294 	.area GSINIT1 (CODE)
                                    295 	.area GSINIT2 (CODE)
                                    296 	.area GSINIT3 (CODE)
                                    297 	.area GSINIT4 (CODE)
                                    298 	.area GSINIT5 (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area CSEG    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; interrupt vector 
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
      000000                        306 __interrupt_vect:
      000000 02 00 06         [24]  307 	ljmp	__sdcc_gsinit_startup
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.globl __sdcc_gsinit_startup
                                    316 	.globl __sdcc_program_startup
                                    317 	.globl __start__stack
                                    318 	.globl __mcs51_genXINIT
                                    319 	.globl __mcs51_genXRAMCLEAR
                                    320 	.globl __mcs51_genRAMCLEAR
                                    321 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  322 	ljmp	__sdcc_program_startup
                                    323 ;--------------------------------------------------------
                                    324 ; Home
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area HOME    (CODE)
      000003                        328 __sdcc_program_startup:
      000003 02 00 62         [24]  329 	ljmp	_main
                                    330 ;	return from main will return to caller
                                    331 ;--------------------------------------------------------
                                    332 ; code
                                    333 ;--------------------------------------------------------
                                    334 	.area CSEG    (CODE)
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'main'
                                    337 ;------------------------------------------------------------
                                    338 ;	lab12.c:12: int main() {
                                    339 ;	-----------------------------------------
                                    340 ;	 function main
                                    341 ;	-----------------------------------------
      000062                        342 _main:
                           000007   343 	ar7 = 0x07
                           000006   344 	ar6 = 0x06
                           000005   345 	ar5 = 0x05
                           000004   346 	ar4 = 0x04
                           000003   347 	ar3 = 0x03
                           000002   348 	ar2 = 0x02
                           000001   349 	ar1 = 0x01
                           000000   350 	ar0 = 0x00
                                    351 ;	lab12.c:18: P3 = 0x00;
      000062 75 B0 00         [24]  352 	mov	_P3,#0x00
                                    353 ;	lab12.c:19: v[0] = 0xF0;
      000065 75 09 F0         [24]  354 	mov	_v,#0xf0
                                    355 ;	lab12.c:20: v[1] = 0xF9;
      000068 75 0A F9         [24]  356 	mov	(_v + 0x0001),#0xf9
                                    357 ;	lab12.c:21: v[2] = 0xA4;
      00006B 75 0B A4         [24]  358 	mov	(_v + 0x0002),#0xa4
                                    359 ;	lab12.c:22: v[3] = 0xB0;
      00006E 75 0C B0         [24]  360 	mov	(_v + 0x0003),#0xb0
                                    361 ;	lab12.c:23: v[4] = 0x99;
      000071 75 0D 99         [24]  362 	mov	(_v + 0x0004),#0x99
                                    363 ;	lab12.c:24: v[5] = 0x92;
      000074 75 0E 92         [24]  364 	mov	(_v + 0x0005),#0x92
                                    365 ;	lab12.c:25: v[6] = 0x82;
      000077 75 0F 82         [24]  366 	mov	(_v + 0x0006),#0x82
                                    367 ;	lab12.c:26: v[7] = 0xF8;
      00007A 75 10 F8         [24]  368 	mov	(_v + 0x0007),#0xf8
                                    369 ;	lab12.c:27: v[8] = 0x80;
      00007D 75 11 80         [24]  370 	mov	(_v + 0x0008),#0x80
                                    371 ;	lab12.c:28: v[9] = 0x90;
      000080 75 12 90         [24]  372 	mov	(_v + 0x0009),#0x90
                                    373 ;	lab12.c:29: v[10] = 0x00;//pentru steluta
      000083 75 13 00         [24]  374 	mov	(_v + 0x000a),#0x00
                                    375 ;	lab12.c:30: v[11] = 0x00;//pentru diez
      000086 75 14 00         [24]  376 	mov	(_v + 0x000b),#0x00
                                    377 ;	lab12.c:31: v[12] = 0xFF;//nimic
      000089 75 15 FF         [24]  378 	mov	(_v + 0x000c),#0xff
                                    379 ;	lab12.c:32: nr_taste_apasate = 0;
      00008C 75 19 00         [24]  380 	mov	_nr_taste_apasate,#0x00
                                    381 ;	lab12.c:33: display1 = 12;
      00008F 75 1A 0C         [24]  382 	mov	_display1,#0x0c
                                    383 ;	lab12.c:34: display2 = 12;
      000092 75 1B 0C         [24]  384 	mov	_display2,#0x0c
                                    385 ;	lab12.c:35: display3 = 12;
      000095 75 1C 0C         [24]  386 	mov	_display3,#0x0c
                                    387 ;	lab12.c:36: display4 = 12;
      000098 75 1D 0C         [24]  388 	mov	_display4,#0x0c
                                    389 ;	lab12.c:37: tasta_veche = 12;
      00009B 75 1E 0C         [24]  390 	mov	_tasta_veche,#0x0c
                                    391 ;	lab12.c:38: while(1) {
      00009E                        392 00156$:
                                    393 ;	lab12.c:39: x = 12;
      00009E 75 08 0C         [24]  394 	mov	_x,#0x0c
                                    395 ;	lab12.c:40: P0 = 0xFD;
      0000A1 75 80 FD         [24]  396 	mov	_P0,#0xfd
                                    397 ;	lab12.c:41: if(P0_4 == 0) {
      0000A4 20 84 05         [24]  398 	jb	_P0_4,00107$
                                    399 ;	lab12.c:42: x = 9;
      0000A7 75 08 09         [24]  400 	mov	_x,#0x09
      0000AA 80 0E            [24]  401 	sjmp	00108$
      0000AC                        402 00107$:
                                    403 ;	lab12.c:44: else if(P0_5 == 0) {
      0000AC 20 85 05         [24]  404 	jb	_P0_5,00104$
                                    405 ;	lab12.c:45: x = 8;
      0000AF 75 08 08         [24]  406 	mov	_x,#0x08
      0000B2 80 06            [24]  407 	sjmp	00108$
      0000B4                        408 00104$:
                                    409 ;	lab12.c:47: else if(P0_6 == 0) {
      0000B4 20 86 03         [24]  410 	jb	_P0_6,00108$
                                    411 ;	lab12.c:48: x = 7;
      0000B7 75 08 07         [24]  412 	mov	_x,#0x07
      0000BA                        413 00108$:
                                    414 ;	lab12.c:51: P0 = 0xFE;
      0000BA 75 80 FE         [24]  415 	mov	_P0,#0xfe
                                    416 ;	lab12.c:52: if(P0_4 == 0) {
      0000BD 20 84 05         [24]  417 	jb	_P0_4,00115$
                                    418 ;	lab12.c:53: x = 11;
      0000C0 75 08 0B         [24]  419 	mov	_x,#0x0b
      0000C3 80 0E            [24]  420 	sjmp	00116$
      0000C5                        421 00115$:
                                    422 ;	lab12.c:55: else if(P0_5 == 0) {
      0000C5 20 85 05         [24]  423 	jb	_P0_5,00112$
                                    424 ;	lab12.c:56: x = 0;
      0000C8 75 08 00         [24]  425 	mov	_x,#0x00
      0000CB 80 06            [24]  426 	sjmp	00116$
      0000CD                        427 00112$:
                                    428 ;	lab12.c:58: else if(P0_6 == 0) {
      0000CD 20 86 03         [24]  429 	jb	_P0_6,00116$
                                    430 ;	lab12.c:59: x = 10;
      0000D0 75 08 0A         [24]  431 	mov	_x,#0x0a
      0000D3                        432 00116$:
                                    433 ;	lab12.c:62: P0 = 0xFB;
      0000D3 75 80 FB         [24]  434 	mov	_P0,#0xfb
                                    435 ;	lab12.c:63: if(P0_4 == 0) {
      0000D6 20 84 05         [24]  436 	jb	_P0_4,00123$
                                    437 ;	lab12.c:64: x = 6;
      0000D9 75 08 06         [24]  438 	mov	_x,#0x06
      0000DC 80 0E            [24]  439 	sjmp	00124$
      0000DE                        440 00123$:
                                    441 ;	lab12.c:66: else if(P0_5 == 0) {
      0000DE 20 85 05         [24]  442 	jb	_P0_5,00120$
                                    443 ;	lab12.c:67: x = 5;
      0000E1 75 08 05         [24]  444 	mov	_x,#0x05
      0000E4 80 06            [24]  445 	sjmp	00124$
      0000E6                        446 00120$:
                                    447 ;	lab12.c:69: else if(P0_6 == 0) {
      0000E6 20 86 03         [24]  448 	jb	_P0_6,00124$
                                    449 ;	lab12.c:70: x = 4;
      0000E9 75 08 04         [24]  450 	mov	_x,#0x04
      0000EC                        451 00124$:
                                    452 ;	lab12.c:73: P0 = 0xF7;
      0000EC 75 80 F7         [24]  453 	mov	_P0,#0xf7
                                    454 ;	lab12.c:74: if(P0_4 == 0) {
      0000EF 20 84 05         [24]  455 	jb	_P0_4,00131$
                                    456 ;	lab12.c:75: x = 3;
      0000F2 75 08 03         [24]  457 	mov	_x,#0x03
      0000F5 80 0E            [24]  458 	sjmp	00132$
      0000F7                        459 00131$:
                                    460 ;	lab12.c:77: else if(P0_5 == 0) {
      0000F7 20 85 05         [24]  461 	jb	_P0_5,00128$
                                    462 ;	lab12.c:78: x = 2;
      0000FA 75 08 02         [24]  463 	mov	_x,#0x02
      0000FD 80 06            [24]  464 	sjmp	00132$
      0000FF                        465 00128$:
                                    466 ;	lab12.c:80: else if(P0_6 == 0) {
      0000FF 20 86 03         [24]  467 	jb	_P0_6,00132$
                                    468 ;	lab12.c:81: x = 1;
      000102 75 08 01         [24]  469 	mov	_x,#0x01
      000105                        470 00132$:
                                    471 ;	lab12.c:84: if(x == 12) {
      000105 74 0C            [12]  472 	mov	a,#0x0c
      000107 B5 08 05         [24]  473 	cjne	a,_x,00149$
                                    474 ;	lab12.c:85: niciunButonApasat = 1;
      00010A 75 1F 01         [24]  475 	mov	_niciunButonApasat,#0x01
      00010D 80 3F            [24]  476 	sjmp	00150$
      00010F                        477 00149$:
                                    478 ;	lab12.c:88: if(x != tasta_veche || (x == tasta_veche && niciunButonApasat)) {
      00010F E5 1E            [12]  479 	mov	a,_tasta_veche
      000111 B5 08 09         [24]  480 	cjne	a,_x,00144$
      000114 E5 1E            [12]  481 	mov	a,_tasta_veche
      000116 B5 08 32         [24]  482 	cjne	a,_x,00145$
      000119 E5 1F            [12]  483 	mov	a,_niciunButonApasat
      00011B 60 2E            [24]  484 	jz	00145$
      00011D                        485 00144$:
                                    486 ;	lab12.c:89: tasta_veche = x;
      00011D 85 08 1E         [24]  487 	mov	_tasta_veche,_x
                                    488 ;	lab12.c:90: nr_taste_apasate++;
      000120 05 19            [12]  489 	inc	_nr_taste_apasate
                                    490 ;	lab12.c:91: if(nr_taste_apasate == 1) {
      000122 74 01            [12]  491 	mov	a,#0x01
      000124 B5 19 05         [24]  492 	cjne	a,_nr_taste_apasate,00142$
                                    493 ;	lab12.c:92: display1 = x;
      000127 85 08 1A         [24]  494 	mov	_display1,_x
      00012A 80 1F            [24]  495 	sjmp	00145$
      00012C                        496 00142$:
                                    497 ;	lab12.c:94: else if(nr_taste_apasate == 2) {
      00012C 74 02            [12]  498 	mov	a,#0x02
      00012E B5 19 05         [24]  499 	cjne	a,_nr_taste_apasate,00139$
                                    500 ;	lab12.c:95: display2 = x;
      000131 85 08 1B         [24]  501 	mov	_display2,_x
      000134 80 15            [24]  502 	sjmp	00145$
      000136                        503 00139$:
                                    504 ;	lab12.c:97: else if(nr_taste_apasate == 3) {
      000136 74 03            [12]  505 	mov	a,#0x03
      000138 B5 19 05         [24]  506 	cjne	a,_nr_taste_apasate,00136$
                                    507 ;	lab12.c:98: display3 = x;
      00013B 85 08 1C         [24]  508 	mov	_display3,_x
      00013E 80 0B            [24]  509 	sjmp	00145$
      000140                        510 00136$:
                                    511 ;	lab12.c:100: else if(nr_taste_apasate == 4) {
      000140 74 04            [12]  512 	mov	a,#0x04
      000142 B5 19 06         [24]  513 	cjne	a,_nr_taste_apasate,00145$
                                    514 ;	lab12.c:101: display4 = x;
      000145 85 08 1D         [24]  515 	mov	_display4,_x
                                    516 ;	lab12.c:102: nr_taste_apasate = 0;
      000148 75 19 00         [24]  517 	mov	_nr_taste_apasate,#0x00
      00014B                        518 00145$:
                                    519 ;	lab12.c:105: niciunButonApasat = 0;
      00014B 75 1F 00         [24]  520 	mov	_niciunButonApasat,#0x00
      00014E                        521 00150$:
                                    522 ;	lab12.c:109: P3 = 0x00;
      00014E 75 B0 00         [24]  523 	mov	_P3,#0x00
                                    524 ;	lab12.c:110: P1 = v[display1];
      000151 E5 1A            [12]  525 	mov	a,_display1
      000153 24 09            [12]  526 	add	a,#_v
      000155 F9               [12]  527 	mov	r1,a
      000156 87 90            [24]  528 	mov	_P1,@r1
                                    529 ;	lab12.c:111: for(i = 0; i < 20; i++);
      000158 75 18 14         [24]  530 	mov	_i,#0x14
      00015B                        531 00160$:
      00015B D5 18 FD         [24]  532 	djnz	_i,00160$
                                    533 ;	lab12.c:115: P3 = 0x0F;
      00015E 75 B0 0F         [24]  534 	mov	_P3,#0x0f
                                    535 ;	lab12.c:116: P1 = v[display2];
      000161 E5 1B            [12]  536 	mov	a,_display2
      000163 24 09            [12]  537 	add	a,#_v
      000165 F9               [12]  538 	mov	r1,a
      000166 87 90            [24]  539 	mov	_P1,@r1
                                    540 ;	lab12.c:117: for(i = 0; i < 20; i++);
      000168 75 18 14         [24]  541 	mov	_i,#0x14
      00016B                        542 00163$:
      00016B D5 18 FD         [24]  543 	djnz	_i,00163$
                                    544 ;	lab12.c:120: P3 = 0xF0;
      00016E 75 B0 F0         [24]  545 	mov	_P3,#0xf0
                                    546 ;	lab12.c:121: P1 = v[display3];
      000171 E5 1C            [12]  547 	mov	a,_display3
      000173 24 09            [12]  548 	add	a,#_v
      000175 F9               [12]  549 	mov	r1,a
      000176 87 90            [24]  550 	mov	_P1,@r1
                                    551 ;	lab12.c:122: for(i = 0; i < 20; i++);
      000178 75 18 14         [24]  552 	mov	_i,#0x14
      00017B                        553 00166$:
      00017B D5 18 FD         [24]  554 	djnz	_i,00166$
                                    555 ;	lab12.c:125: P3 = 0xFF;
      00017E 75 B0 FF         [24]  556 	mov	_P3,#0xff
                                    557 ;	lab12.c:126: P1 = v[display4];
      000181 E5 1D            [12]  558 	mov	a,_display4
      000183 24 09            [12]  559 	add	a,#_v
      000185 F9               [12]  560 	mov	r1,a
      000186 87 90            [24]  561 	mov	_P1,@r1
                                    562 ;	lab12.c:127: for(i = 0; i < 20; i++);
      000188 75 18 14         [24]  563 	mov	_i,#0x14
      00018B                        564 00169$:
      00018B D5 18 FD         [24]  565 	djnz	_i,00169$
      00018E 75 18 14         [24]  566 	mov	_i,#0x14
                                    567 ;	lab12.c:130: return 0;
                                    568 ;	lab12.c:131: }
      000191 02 00 9E         [24]  569 	ljmp	00156$
                                    570 	.area CSEG    (CODE)
                                    571 	.area CONST   (CODE)
                                    572 	.area XINIT   (CODE)
                                    573 	.area CABS    (ABS,CODE)
