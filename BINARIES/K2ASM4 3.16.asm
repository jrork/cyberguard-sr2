; Disassembly of the file "C:\Cyber\K2ASM4 3.16.BIN"
;
; Created with dZ80 v1.31
;
; on Monday, 19 of July 2021 at 06:00 PM
;
0000  c36c00    jp      #006c
0003  3c        inc     a
0004  010100    ld      bc,#0001
0007  00        nop     
0008  00        nop     
0009  00        nop     
000a  00        nop     
000b  00        nop     
000c  00        nop     
000d  00        nop     
000e  00        nop     
000f  00        nop     
0010  00        nop     
0011  00        nop     
0012  00        nop     
0013  00        nop     
0014  00        nop     
0015  00        nop     
0016  00        nop     
0017  00        nop     
0018  00        nop     
0019  00        nop     
001a  00        nop     
001b  00        nop     
001c  00        nop     
001d  00        nop     
001e  00        nop     
001f  00        nop     
0020  00        nop     
0021  00        nop     
0022  00        nop     
0023  00        nop     
0024  00        nop     
0025  00        nop     
0026  00        nop     
0027  00        nop     
0028  00        nop     
0029  00        nop     
002a  00        nop     
002b  00        nop     
002c  00        nop     
002d  00        nop     
002e  00        nop     
002f  00        nop     
0030  00        nop     
0031  00        nop     
0032  00        nop     
0033  00        nop     
0034  00        nop     
0035  00        nop     
0036  00        nop     
0037  00        nop     
0038  00        nop     
0039  00        nop     
003a  00        nop     
003b  00        nop     
003c  00        nop     
003d  00        nop     
003e  00        nop     
003f  00        nop     
0040  00        nop     
0041  00        nop     
0042  00        nop     
0043  00        nop     
0044  00        nop     
0045  00        nop     
0046  00        nop     
0047  00        nop     
0048  00        nop     
0049  00        nop     
004a  00        nop     
004b  00        nop     
004c  00        nop     
004d  00        nop     
004e  00        nop     
004f  00        nop     
0050  00        nop     
0051  00        nop     
0052  00        nop     
0053  00        nop     
0054  00        nop     
0055  00        nop     
0056  00        nop     
0057  00        nop     
0058  00        nop     
0059  00        nop     
005a  00        nop     
005b  00        nop     
005c  00        nop     
005d  00        nop     
005e  00        nop     
005f  00        nop     
0060  00        nop     
0061  00        nop     
0062  00        nop     
0063  00        nop     
0064  00        nop     
0065  00        nop     
0066  e5        push    hl
0067  2a5a20    ld      hl,(#205a)
006a  e3        ex      (sp),hl
006b  c9        ret     



006c  f3        di      
006d  211801    ld      hl,#0118        store value (which is a memory address?) 0118 into register hl
0070  225a20    ld      (#205a),hl      copy value in register hl into memory address #205a (which his 0118)
0073  1e00      ld      e,#00		store value 00 into register e
0075  018a12    ld      bc,#128a	store value 128a into register bc
0078  212020    ld      hl,#2020	store value 2020 into register hl
007b  79        ld      a,c		load value in c register (which is second half of bc register) in the a register (8a)

parens means to interact with values in that address
2000 - 3FFF is RAM
0000 - 1FFF is ROM
8000 or a000 may be the second ROM?

007c  ab        xor     e		xor value in a and value in e and set result to value in a 
007d  77        ld      (hl),a
007e  23        inc     hl
007f  0d        dec     c
0080  20f9      jr      nz,#007b        ; (-7)  jr (relative jump) to 007b if value in c is nz (not zero)
0082  05        dec     b
0083  f27b00    jp      p,#007b		//this is the end of that top initialization block




0086  018a12    ld      bc,#128a        
0089  212020    ld      hl,#2020
008c  79        ld      a,c
008d  ab        xor     e
008e  be        cp      (hl)
008f  2818      jr      z,#00a9         ; (24)
0091  3e0a      ld      a,#0a
0093  320fa0    ld      (#a00f),a
0096  0d        dec     c
0097  20fd      jr      nz,#0096        ; (-3)
0099  05        dec     b
009a  c29600    jp      nz,#0096
009d  3d        dec     a
009e  28f1      jr      z,#0091         ; (-15)
00a0  fe05      cp      #05
00a2  20f2      jr      nz,#0096        ; (-14)
00a4  3207a0    ld      (#a007),a
00a7  18ed      jr      #0096           ; (-19)
00a9  3600      ld      (hl),#00
00ab  23        inc     hl
00ac  0d        dec     c
00ad  20dd      jr      nz,#008c        ; (-35)
00af  05        dec     b
00b0  f28c00    jp      p,#008c


00b3  1d        dec     e
00b4  7b        ld      a,e

//so far above this line is just reseting out a space and ram
00b5  fefe      cp      #fe
00b7  20bc      jr      nz,#0075        ; (-68)
00b9  319c20    ld      sp,#209c
00bc  214601    ld      hl,#0146
00bf  e5        push    hl
00c0  ed735620  ld      (#2056),sp
00c4  319c21    ld      sp,#219c
00c7  ed5e      im      2
00c9  3e20      ld      a,#20
00cb  ed47      ld      i,a
00cd  21f800    ld      hl,#00f8
00d0  0610      ld      b,#10
00d2  4e        ld      c,(hl)
00d3  23        inc     hl
00d4  7e        ld      a,(hl)
00d5  23        inc     hl
00d6  ed79      out     (c),a
00d8  10f8      djnz    #00d2           ; (-8)
00da  dbf8      in      a,(#f8)
00dc  211a01    ld      hl,#011a
00df  110020    ld      de,#2000
00e2  012000    ld      bc,#0020
00e5  edb0      ldir    
00e7  fb        ei      
00e8  dbe2      in      a,(#e2)
00ea  cb57      bit     2,a
00ec  c2e002    jp      nz,#02e0
00ef  2a2020    ld      hl,(#2020)
00f2  3e00      ld      a,#00
00f4  b4        or      h
00f5  28f1      jr      z,#00e8         ; (-15)
00f7  e9        jp      (hl)
00f8  f0        ret     p

00f9  00        nop     
00fa  f9        ld      sp,hl
00fb  18fb      jr      #00f8           ; (-5)
00fd  18f9      jr      #00f8           ; (-7)
00ff  10f9      djnz    #00fa           ; (-7)
0101  28f9      jr      z,#00fc         ; (-7)
0103  30fb      jr      nc,#0100        ; (-5)
0105  02        ld      (bc),a
0106  fb        ei      
0107  10f9      djnz    #0102           ; (-7)
0109  04        inc     b
010a  f9        ld      sp,hl
010b  4c        ld      c,h
010c  f9        ld      sp,hl
010d  03        inc     bc
010e  f9        ld      sp,hl
010f  c1        pop     bc
0110  f9        ld      sp,hl
0111  05        dec     b
0112  f9        ld      sp,hl
0113  68        ld      l,b
0114  f9        ld      sp,hl
0115  01f91e    ld      bc,#1ef9
0118  ed45      retn    

011a  3a013a    ld      a,(#3a01)
011d  013a01    ld      bc,#013a
0120  3a013a    ld      a,(#3a01)
0123  013a01    ld      bc,#013a
0126  3a013a    ld      a,(#3a01)
0129  013a01    ld      bc,#013a
012c  3a013a    ld      a,(#3a01)
012f  013a01    ld      bc,#013a
0132  af        xor     a
0133  02        ld      (bc),a
0134  3d        dec     a
0135  017a02    ld      bc,#027a
0138  3d        dec     a
0139  01fbed    ld      bc,#edfb
013c  4d        ld      c,l
013d  f5        push    af
013e  3e30      ld      a,#30
0140  d3f9      out     (#f9),a
0142  f1        pop     af
0143  fb        ei      
0144  ed4d      reti    

0146  3e00      ld      a,#00
0148  325420    ld      (#2054),a
014b  cd9002    call    #0290
014e  fe3a      cp      #3a
0150  2804      jr      z,#0156         ; (4)
0152  fe3b      cp      #3b
0154  20f5      jr      nz,#014b        ; (-11)
0156  322820    ld      (#2028),a
0159  cd4502    call    #0245
015c  da0702    jp      c,#0207
015f  322620    ld      (#2026),a
0162  cd3102    call    #0231
0165  cd4502    call    #0245
0168  da0702    jp      c,#0207
016b  325320    ld      (#2053),a
016e  cd3102    call    #0231
0171  cd4502    call    #0245
0174  da0702    jp      c,#0207
0177  325220    ld      (#2052),a
017a  cd3102    call    #0231
017d  cd4502    call    #0245
0180  da0702    jp      c,#0207
0183  fe01      cp      #01
0185  c24601    jp      nz,#0146
0188  cd3102    call    #0231
018b  3a2820    ld      a,(#2028)
018e  fe3a      cp      #3a
0190  282d      jr      z,#01bf         ; (45)
0192  3a5420    ld      a,(#2054)
0195  329e21    ld      (#219e),a
0198  2a5220    ld      hl,(#2052)
019b  ed4b2620  ld      bc,(#2026)
019f  0600      ld      b,#00
01a1  11a021    ld      de,#21a0
01a4  edb0      ldir    
01a6  21a021    ld      hl,#21a0
01a9  7e        ld      a,(hl)
01aa  f5        push    af
01ab  cd3a02    call    #023a
01ae  f1        pop     af
01af  d3f8      out     (#f8),a
01b1  23        inc     hl
01b2  222220    ld      (#2022),hl
01b5  3a2620    ld      a,(#2026)
01b8  3d        dec     a
01b9  322420    ld      (#2024),a
01bc  c34601    jp      #0146
01bf  dd212a20  ld      ix,#202a
01c3  3a2620    ld      a,(#2026)
01c6  fe00      cp      #00
01c8  ca4b01    jp      z,#014b
01cb  47        ld      b,a
01cc  cd4502    call    #0245
01cf  da0702    jp      c,#0207
01d2  dd7700    ld      (ix+#00),a
01d5  cd3102    call    #0231
01d8  dd23      inc     ix
01da  10f0      djnz    #01cc           ; (-16)
01dc  cd4502    call    #0245
01df  da0702    jp      c,#0207
01e2  215420    ld      hl,#2054
01e5  be        cp      (hl)
01e6  201f      jr      nz,#0207        ; (31)
01e8  cd9002    call    #0290
01eb  fe0d      cp      #0d
01ed  2018      jr      nz,#0207        ; (24)
01ef  3a5420    ld      a,(#2054)
01f2  cd1602    call    #0216
01f5  ed5b5220  ld      de,(#2052)
01f9  212a20    ld      hl,#202a
01fc  ed4b2620  ld      bc,(#2026)
0200  0600      ld      b,#00
0202  edb0      ldir    
0204  c34601    jp      #0146
0207  cd9002    call    #0290
020a  fe0d      cp      #0d
020c  20f9      jr      nz,#0207        ; (-7)
020e  3eff      ld      a,#ff
0210  cd1602    call    #0216
0213  c34601    jp      #0146
0216  d3f8      out     (#f8),a
0218  c9        ret     

0219  cd1c02    call    #021c
021c  f5        push    af
021d  e60f      and     #0f
021f  6c        ld      l,h
0220  fe0a      cp      #0a
0222  3004      jr      nc,#0228        ; (4)
0224  f630      or      #30
0226  1802      jr      #022a           ; (2)
0228  c637      add     a,#37
022a  67        ld      h,a
022b  f1        pop     af
022c  0f        rrca    
022d  0f        rrca    
022e  0f        rrca    
022f  0f        rrca    
0230  c9        ret     

0231  57        ld      d,a
0232  3a5420    ld      a,(#2054)
0235  92        sub     d
0236  325420    ld      (#2054),a
0239  c9        ret     

023a  d5        push    de
023b  57        ld      d,a
023c  3a9e21    ld      a,(#219e)
023f  92        sub     d
0240  329e21    ld      (#219e),a
0243  d1        pop     de
0244  c9        ret     

0245  c5        push    bc
0246  cd9002    call    #0290
0249  67        ld      h,a
024a  cd9002    call    #0290
024d  6f        ld      l,a
024e  cd5302    call    #0253
0251  c1        pop     bc
0252  c9        ret     

0253  0600      ld      b,#00
0255  7d        ld      a,l
0256  cd5c02    call    #025c
0259  381e      jr      c,#0279         ; (30)
025b  7c        ld      a,h
025c  fe30      cp      #30
025e  3819      jr      c,#0279         ; (25)
0260  fe3a      cp      #3a
0262  380b      jr      c,#026f         ; (11)
0264  fe41      cp      #41
0266  3811      jr      c,#0279         ; (17)
0268  fe47      cp      #47
026a  3f        ccf     
026b  380c      jr      c,#0279         ; (12)
026d  c609      add     a,#09
026f  e60f      and     #0f
0271  b0        or      b
0272  07        rlca    
0273  07        rlca    
0274  07        rlca    
0275  07        rlca    
0276  47        ld      b,a
0277  37        scf     
0278  3f        ccf     
0279  c9        ret     

027a  f3        di      
027b  f5        push    af
027c  e5        push    hl
027d  d5        push    de
027e  c5        push    bc
027f  dde5      push    ix
0281  fde5      push    iy
0283  ed735820  ld      (#2058),sp
0287  ed7b5620  ld      sp,(#2056)
028b  dbf8      in      a,(#f8)
028d  e67f      and     #7f
028f  c9        ret     

0290  dde5      push    ix
0292  e5        push    hl
0293  d5        push    de
0294  cd9c02    call    #029c
0297  d1        pop     de
0298  e1        pop     hl
0299  dde1      pop     ix
029b  c9        ret     

029c  ed735620  ld      (#2056),sp
02a0  ed7b5820  ld      sp,(#2058)
02a4  fde1      pop     iy
02a6  dde1      pop     ix
02a8  c1        pop     bc
02a9  d1        pop     de
02aa  e1        pop     hl
02ab  f1        pop     af
02ac  fb        ei      
02ad  ed4d      reti    

02af  f3        di      
02b0  f5        push    af
02b1  e5        push    hl
02b2  3a2420    ld      a,(#2024)
02b5  feff      cp      #ff
02b7  281d      jr      z,#02d6         ; (29)
02b9  3d        dec     a
02ba  322420    ld      (#2024),a
02bd  feff      cp      #ff
02bf  3a9e21    ld      a,(#219e)
02c2  2808      jr      z,#02cc         ; (8)
02c4  2a2220    ld      hl,(#2022)
02c7  7e        ld      a,(hl)
02c8  23        inc     hl
02c9  222220    ld      (#2022),hl
02cc  d3f8      out     (#f8),a
02ce  cd3a02    call    #023a
02d1  e1        pop     hl
02d2  f1        pop     af
02d3  fb        ei      
02d4  ed4d      reti    

02d6  3e28      ld      a,#28
02d8  d3f9      out     (#f9),a
02da  18f5      jr      #02d1           ; (-11)
02dc  00        nop     
02dd  00        nop     
02de  00        nop     
02df  00        nop     
02e0  dd214904  ld      ix,#0449
02e4  014800    ld      bc,#0048
02e7  dd6e00    ld      l,(ix+#00)
02ea  dd6601    ld      h,(ix+#01)
02ed  dd5e02    ld      e,(ix+#02)
02f0  dd5603    ld      d,(ix+#03)
02f3  73        ld      (hl),e
02f4  23        inc     hl
02f5  72        ld      (hl),d
02f6  dd23      inc     ix
02f8  dd23      inc     ix
02fa  dd23      inc     ix
02fc  dd23      inc     ix
02fe  0b        dec     bc
02ff  78        ld      a,b
0300  b1        or      c
0301  20e4      jr      nz,#02e7        ; (-28)
0303  f3        di      
0304  216905    ld      hl,#0569
0307  0614      ld      b,#14
0309  4e        ld      c,(hl)
030a  23        inc     hl
030b  7e        ld      a,(hl)
030c  23        inc     hl
030d  ed79      out     (c),a
030f  10f8      djnz    #0309           ; (-8)
0311  fb        ei      
0312  2a0380    ld      hl,(#8003)
0315  113c01    ld      de,#013c
0318  37        scf     
0319  3f        ccf     
031a  ed52      sbc     hl,de
031c  2807      jr      z,#0325         ; (7)
031e  3e1e      ld      a,#1e
0320  cd0e04    call    #040e
0323  18f9      jr      #031e           ; (-7)
0325  dbe0      in      a,(#e0)
0327  325f2a    ld      (#2a5f),a
032a  cb3f      srl     a
032c  cb3f      srl     a
032e  4f        ld      c,a
032f  0600      ld      b,#00
0331  219105    ld      hl,#0591
0334  09        add     hl,bc
0335  7e        ld      a,(hl)
0336  32652a    ld      (#2a65),a
0339  21d105    ld      hl,#05d1
033c  09        add     hl,bc
033d  7e        ld      a,(hl)
033e  32632a    ld      (#2a63),a
0341  3a7c2a    ld      a,(#2a7c)
0344  a7        and     a
0345  0605      ld      b,#05
0347  2017      jr      nz,#0360        ; (23)
0349  3a7d2a    ld      a,(#2a7d)
034c  a7        and     a
034d  0606      ld      b,#06
034f  200f      jr      nz,#0360        ; (15)
0351  0600      ld      b,#00
0353  3a0124    ld      a,(#2401)
0356  fe05      cp      #05
0358  2811      jr      z,#036b         ; (17)
035a  fe06      cp      #06
035c  280d      jr      z,#036b         ; (13)
035e  180f      jr      #036f           ; (15)
0360  3a0124    ld      a,(#2401)
0363  fe00      cp      #00
0365  2804      jr      z,#036b         ; (4)
0367  fe05      cp      #05
0369  3804      jr      c,#036f         ; (4)
036b  78        ld      a,b
036c  cd0e04    call    #040e
036f  dbe2      in      a,(#e2)
0371  cb5f      bit     3,a
0373  280e      jr      z,#0383         ; (14)
0375  3a0124    ld      a,(#2401)
0378  fe12      cp      #12
037a  2018      jr      nz,#0394        ; (24)
037c  3e00      ld      a,#00
037e  cd0e04    call    #040e
0381  1811      jr      #0394           ; (17)
0383  3e12      ld      a,#12
0385  cd0e04    call    #040e
0388  3a0024    ld      a,(#2400)
038b  fe01      cp      #01
038d  2805      jr      z,#0394         ; (5)
038f  3e00      ld      a,#00
0391  320024    ld      (#2400),a
0394  3a0024    ld      a,(#2400)
0397  47        ld      b,a
0398  fe06      cp      #06
039a  300c      jr      nc,#03a8        ; (12)
039c  3a6c2a    ld      a,(#2a6c)
039f  b8        cp      b
03a0  cae103    jp      z,#03e1
03a3  fe00      cp      #00
03a5  78        ld      a,b
03a6  2818      jr      z,#03c0         ; (24)
03a8  3e00      ld      a,#00
03aa  320024    ld      (#2400),a
03ad  3a6c2a    ld      a,(#2a6c)
03b0  fe02      cp      #02
03b2  2804      jr      z,#03b8         ; (4)
03b4  fe04      cp      #04
03b6  2007      jr      nz,#03bf        ; (7)
03b8  3a0b2a    ld      a,(#2a0b)
03bb  a7        and     a
03bc  c2e103    jp      nz,#03e1
03bf  af        xor     a
03c0  326c2a    ld      (#2a6c),a
03c3  af        xor     a
03c4  323432    ld      (#3234),a
03c7  3a6c2a    ld      a,(#2a6c)
03ca  214208    ld      hl,#0842
03cd  5f        ld      e,a
03ce  cb23      sla     e
03d0  1600      ld      d,#00
03d2  19        add     hl,de
03d3  5e        ld      e,(hl)
03d4  23        inc     hl
03d5  56        ld      d,(hl)
03d6  ed536e2a  ld      (#2a6e),de
03da  3a4532    ld      a,(#3245)
03dd  a7        and     a
03de  c40413    call    nz,#1304
03e1  3a6c2a    ld      a,(#2a6c)
03e4  a7        and     a
03e5  201e      jr      nz,#0405        ; (30)
03e7  f3        di      
03e8  21cf09    ld      hl,#09cf
03eb  22f52e    ld      (#2ef5),hl
03ee  21f52e    ld      hl,#2ef5
03f1  22f32d    ld      (#2df3),hl
03f4  fb        ei      
03f5  3205a0    ld      (#a005),a
03f8  af        xor     a
03f9  32062d    ld      (#2d06),a
03fc  32ca2d    ld      (#2dca),a
03ff  cd7f08    call    #087f
0402  cda806    call    #06a8
0405  cd0780    call    #8007
0408  cdf106    call    #06f1
040b  c32503    jp      #0325
040e  320124    ld      (#2401),a
0411  fe00      cp      #00
0413  c8        ret     z

0414  fe09      cp      #09
0416  c8        ret     z

0417  fe0b      cp      #0b
0419  c8        ret     z

041a  c5        push    bc
041b  47        ld      b,a
041c  3a5c31    ld      a,(#315c)
041f  b8        cp      b
0420  200a      jr      nz,#042c        ; (10)
0422  3a0824    ld      a,(#2408)
0425  4f        ld      c,a
0426  3a7531    ld      a,(#3175)
0429  b9        cp      c
042a  281b      jr      z,#0447         ; (27)
042c  e5        push    hl
042d  d5        push    de
042e  218c31    ld      hl,#318c
0431  118d31    ld      de,#318d
0434  016300    ld      bc,#0063
0437  edb8      lddr    
0439  3a0124    ld      a,(#2401)
043c  325c31    ld      (#315c),a
043f  3a0824    ld      a,(#2408)
0442  327531    ld      (#3175),a
0445  d1        pop     de
0446  e1        pop     hl
0447  c1        pop     bc
0448  c9        ret     

0449  76        halt    
044a  2a7800    ld      hl,(#0078)
044d  c5        push    bc
044e  310c00    ld      sp,#000c
0451  80        add     a,b
0452  2a0200    ld      hl,(#0002)
0455  102d      djnz    #0484           ; (45)
0457  02        ld      (bc),a
0458  00        nop     
0459  6d        ld      l,l
045a  2d        dec     l
045b  ff        rst     #38
045c  00        nop     
045d  41        ld      b,c
045e  2a8403    ld      hl,(#0384)
0461  45        ld      b,l
0462  2a3c00    ld      hl,(#003c)
0465  49        ld      c,c
0466  2a1400    ld      hl,(#0014)
0469  4d        ld      c,l
046a  2a3200    ld      hl,(#0032)
046d  43        ld      b,e
046e  2adc05    ld      hl,(#05dc)
0471  47        ld      b,a
0472  2a6400    ld      hl,(#0064)
0475  4b        ld      c,e
0476  2a0f00    ld      hl,(#000f)
0479  4f        ld      c,a
047a  2a3200    ld      hl,(#0032)
047d  b2        or      d
047e  2aa00f    ld      hl,(#0fa0)
0481  b6        or      (hl)
0482  2a3c00    ld      hl,(#003c)
0485  ba        cp      d
0486  2a1400    ld      hl,(#0014)
0489  be        cp      (hl)
048a  2a3200    ld      hl,(#0032)
048d  b4        or      h
048e  2ab80b    ld      hl,(#0bb8)
0491  bc        cp      h
0492  2a0f00    ld      hl,(#000f)
0495  c0        ret     nz

0496  2a3200    ld      hl,(#0032)
0499  3d        dec     a
049a  2d        dec     l
049b  14        inc     d
049c  00        nop     
049d  c7        rst     #0
049e  2d        dec     l
049f  78        ld      a,b
04a0  00        nop     
04a1  0c        inc     c
04a2  2d        dec     l
04a3  c8        ret     z

04a4  00        nop     
04a5  0e2d      ld      c,#2d
04a7  06ff      ld      b,#ff
04a9  382d      jr      c,#04d8         ; (45)
04ab  32001e    ld      (#1e00),a
04ae  2d        dec     l
04af  41        ld      b,c
04b0  00        nop     
04b1  202d      jr      nz,#04e0        ; (45)
04b3  03        inc     bc
04b4  00        nop     
04b5  222d23    ld      (#232d),hl
04b8  00        nop     
04b9  24        inc     h
04ba  2d        dec     l
04bb  1e00      ld      e,#00
04bd  262d      ld      h,#2d
04bf  00        nop     
04c0  00        nop     
04c1  2a2d0a    ld      hl,(#0a2d)
04c4  00        nop     
04c5  282d      jr      z,#04f4         ; (45)
04c7  b8        cp      b
04c8  01342d    ld      bc,#2d34
04cb  dc0536    call    c,#3605
04ce  2d        dec     l
04cf  8c        adc     a,h
04d0  00        nop     
04d1  3a2d23    ld      a,(#232d)
04d4  00        nop     
04d5  2c        inc     l
04d6  2d        dec     l
04d7  03        inc     bc
04d8  00        nop     
04d9  08        ex      af,af'
04da  2d        dec     l
04db  55        ld      d,l
04dc  00        nop     
04dd  3f        ccf     
04de  2d        dec     l
04df  2c        inc     l
04e0  01492d    ld      bc,#2d49
04e3  02        ld      (bc),a
04e4  00        nop     
04e5  73        ld      (hl),e
04e6  2d        dec     l
04e7  0f        rrca    
04e8  00        nop     
04e9  71        ld      (hl),c
04ea  2d        dec     l
04eb  23        inc     hl
04ec  00        nop     
04ed  6f        ld      l,a
04ee  2d        dec     l
04ef  03        inc     bc
04f0  00        nop     
04f1  80        add     a,b
04f2  2d        dec     l
04f3  07        rlca    
04f4  00        nop     
04f5  4f        ld      c,a
04f6  2d        dec     l
04f7  a0        and     b
04f8  00        nop     
04f9  51        ld      d,c
04fa  2d        dec     l
04fb  a0        and     b
04fc  00        nop     
04fd  a8        xor     b
04fe  312800    ld      sp,#0028
0501  53        ld      d,e
0502  2d        dec     l
0503  2800      jr      z,#0505         ; (0)
0505  af        xor     a
0506  31b004    ld      sp,#04b0
0509  b3        or      e
050a  317017    ld      sp,#1770
050d  5b        ld      e,e
050e  2d        dec     l
050f  96        sub     (hl)
0510  00        nop     
0511  9a        sbc     a,d
0512  319600    ld      sp,#0096
0515  5d        ld      e,l
0516  2d        dec     l
0517  b4        or      h
0518  00        nop     
0519  e22d32    jp      po,#322d
051c  00        nop     
051d  e0        ret     po

051e  2d        dec     l
051f  2800      jr      z,#0521         ; (0)
0521  e62d      and     #2d
0523  3c        inc     a
0524  00        nop     
0525  9e        sbc     a,(hl)
0526  311800    ld      sp,#0018
0529  92        sub     d
052a  311500    ld      sp,#0015
052d  96        sub     (hl)
052e  310300    ld      sp,#0003
0531  94        sub     h
0532  311500    ld      sp,#0015
0535  98        sbc     a,b
0536  310300    ld      sp,#0003
0539  a6        and     (hl)
053a  310a00    ld      sp,#000a
053d  9c        sbc     a,h
053e  316400    ld      sp,#0064
0541  1020      djnz    #0563           ; (32)
0543  ee93      xor     #93
0545  12        ld      (de),a
0546  20e5      jr      nz,#052d        ; (-27)
0548  93        sub     e
0549  14        inc     d
054a  2019      jr      nz,#0565        ; (25)
054c  94        sub     h
054d  1620      ld      d,#20
054f  e5        push    hl
0550  93        sub     e
0551  04        inc     b
0552  201f      jr      nz,#0573        ; (31)
0554  08        ex      af,af'
0555  f5        push    af
0556  2ecf      ld      l,#cf
0558  09        add     hl,bc
0559  f3        di      
055a  2d        dec     l
055b  f5        push    af
055c  2e5a      ld      l,#5a
055e  201a      jr      nz,#057a        ; (26)
0560  1a        ld      a,(de)
0561  6e        ld      l,(hl)
0562  2abe08    ld      hl,(#08be)
0565  68        ld      l,b
0566  2a0a8c    ld      hl,(#8c0a)
0569  f0        ret     p

056a  00        nop     
056b  f0        ret     p

056c  45        ld      b,l
056d  f0        ret     p

056e  01f145    ld      bc,#45f1
0571  f1        pop     af
0572  01f2c5    ld      bc,#c5f2
0575  f21efb    jp      p,#fb1e
0578  18fb      jr      #0575           ; (-5)
057a  10fb      djnz    #0577           ; (-5)
057c  28fb      jr      z,#0579         ; (-5)
057e  02        ld      (bc),a
057f  fb        ei      
0580  10fb      djnz    #057d           ; (-5)
0582  04        inc     b
0583  fb        ei      
0584  4c        ld      c,h
0585  fb        ei      
0586  03        inc     bc
0587  fb        ei      
0588  c1        pop     bc
0589  fb        ei      
058a  05        dec     b
058b  fb        ei      
058c  68        ld      l,b
058d  fb        ei      
058e  01fb1e    ld      bc,#1efb
0591  90        sub     b
0592  8a        adc     a,d
0593  81        add     a,c
0594  78        ld      a,b
0595  6f        ld      l,a
0596  6c        ld      l,h
0597  68        ld      l,b
0598  68        ld      l,b
0599  68        ld      l,b
059a  74        ld      (hl),h
059b  80        add     a,b
059c  87        add     a,a
059d  8e        adc     a,(hl)
059e  96        sub     (hl)
059f  9e        sbc     a,(hl)
05a0  a0        and     b
05a1  a1        and     c
05a2  9f        sbc     a,a
05a3  9c        sbc     a,h
05a4  98        sbc     a,b
05a5  94        sub     h
05a6  90        sub     b
05a7  8a        adc     a,d
05a8  81        add     a,c
05a9  78        ld      a,b
05aa  6f        ld      l,a
05ab  6c        ld      l,h
05ac  68        ld      l,b
05ad  68        ld      l,b
05ae  68        ld      l,b
05af  74        ld      (hl),h
05b0  80        add     a,b
05b1  87        add     a,a
05b2  8e        adc     a,(hl)
05b3  96        sub     (hl)
05b4  9e        sbc     a,(hl)
05b5  a0        and     b
05b6  a1        and     c
05b7  9f        sbc     a,a
05b8  9c        sbc     a,h
05b9  98        sbc     a,b
05ba  94        sub     h
05bb  90        sub     b
05bc  8a        adc     a,d
05bd  81        add     a,c
05be  78        ld      a,b
05bf  6f        ld      l,a
05c0  6c        ld      l,h
05c1  68        ld      l,b
05c2  68        ld      l,b
05c3  68        ld      l,b
05c4  74        ld      (hl),h
05c5  80        add     a,b
05c6  87        add     a,a
05c7  8e        adc     a,(hl)
05c8  96        sub     (hl)
05c9  9e        sbc     a,(hl)
05ca  a0        and     b
05cb  a1        and     c
05cc  9f        sbc     a,a
05cd  9c        sbc     a,h
05ce  98        sbc     a,b
05cf  94        sub     h
05d0  92        sub     d
05d1  73        ld      (hl),e
05d2  7b        ld      a,e
05d3  83        add     a,e
05d4  89        adc     a,c
05d5  8e        adc     a,(hl)
05d6  90        sub     b
05d7  92        sub     d
05d8  91        sub     c
05d9  90        sub     b
05da  8c        adc     a,h
05db  88        adc     a,b
05dc  83        add     a,e
05dd  7d        ld      a,l
05de  77        ld      (hl),a
05df  71        ld      (hl),c
05e0  6d        ld      l,l
05e1  68        ld      l,b
05e2  6a        ld      l,d
05e3  6c        ld      l,h
05e4  6e        ld      l,(hl)
05e5  6f        ld      l,a
05e6  73        ld      (hl),e
05e7  7b        ld      a,e
05e8  83        add     a,e
05e9  89        adc     a,c
05ea  8e        adc     a,(hl)
05eb  90        sub     b
05ec  92        sub     d
05ed  91        sub     c
05ee  90        sub     b
05ef  8c        adc     a,h
05f0  88        adc     a,b
05f1  83        add     a,e
05f2  7d        ld      a,l
05f3  77        ld      (hl),a
05f4  71        ld      (hl),c
05f5  6d        ld      l,l
05f6  68        ld      l,b
05f7  6a        ld      l,d
05f8  6c        ld      l,h
05f9  6e        ld      l,(hl)
05fa  6f        ld      l,a
05fb  73        ld      (hl),e
05fc  7b        ld      a,e
05fd  83        add     a,e
05fe  89        adc     a,c
05ff  8e        adc     a,(hl)
0600  90        sub     b
0601  92        sub     d
0602  91        sub     c
0603  90        sub     b
0604  8c        adc     a,h
0605  88        adc     a,b
0606  83        add     a,e
0607  7d        ld      a,l
0608  77        ld      (hl),a
0609  71        ld      (hl),c
060a  6d        ld      l,l
060b  68        ld      l,b
060c  6a        ld      l,d
060d  6c        ld      l,h
060e  6e        ld      l,(hl)
060f  6f        ld      l,a
0610  71        ld      (hl),c
0611  dbe1      in      a,(#e1)
0613  5f        ld      e,a
0614  dbe2      in      a,(#e2)
0616  e603      and     #03
0618  57        ld      d,a
0619  dbe1      in      a,(#e1)
061b  bb        cp      e
061c  20f3      jr      nz,#0611        ; (-13)
061e  62        ld      h,d
061f  6b        ld      l,e
0620  ed4be131  ld      bc,(#31e1)
0624  22e131    ld      (#31e1),hl
0627  37        scf     
0628  3f        ccf     
0629  ed42      sbc     hl,bc
062b  cdc417    call    #17c4
062e  44        ld      b,h
062f  4d        ld      c,l
0630  c5        push    bc
0631  3ace2c    ld      a,(#2cce)
0634  21ca2c    ld      hl,#2cca
0637  b6        or      (hl)
0638  2837      jr      z,#0671         ; (55)
063a  2ad02c    ld      hl,(#2cd0)
063d  09        add     hl,bc
063e  22d02c    ld      (#2cd0),hl
0641  cb7c      bit     7,h
0643  2811      jr      z,#0656         ; (17)
0645  ed4bcc2c  ld      bc,(#2ccc)
0649  09        add     hl,bc
064a  cb7c      bit     7,h
064c  2823      jr      z,#0671         ; (35)
064e  22d02c    ld      (#2cd0),hl
0651  2ace2c    ld      hl,(#2cce)
0654  180f      jr      #0665           ; (15)
0656  ed4bc82c  ld      bc,(#2cc8)
065a  09        add     hl,bc
065b  cb7c      bit     7,h
065d  2012      jr      nz,#0671        ; (18)
065f  22d02c    ld      (#2cd0),hl
0662  2aca2c    ld      hl,(#2cca)
0665  ed4b742a  ld      bc,(#2a74)
0669  09        add     hl,bc
066a  7c        ld      a,h
066b  e603      and     #03
066d  67        ld      h,a
066e  22742a    ld      (#2a74),hl
0671  c1        pop     bc
0672  2a722a    ld      hl,(#2a72)
0675  09        add     hl,bc
0676  22722a    ld      (#2a72),hl
0679  2a5d2a    ld      hl,(#2a5d)
067c  ed4be331  ld      bc,(#31e3)
0680  37        scf     
0681  3f        ccf     
0682  ed42      sbc     hl,bc
0684  280e      jr      z,#0694         ; (14)
0686  2a5d2a    ld      hl,(#2a5d)
0689  37        scf     
068a  3f        ccf     
068b  ed52      sbc     hl,de
068d  7c        ld      a,h
068e  e603      and     #03
0690  67        ld      h,a
0691  22742a    ld      (#2a74),hl
0694  2a742a    ld      hl,(#2a74)
0697  19        add     hl,de
0698  ed5b122d  ld      de,(#2d12)
069c  19        add     hl,de
069d  7c        ld      a,h
069e  e603      and     #03
06a0  67        ld      h,a
06a1  225d2a    ld      (#2a5d),hl
06a4  22e331    ld      (#31e3),hl
06a7  c9        ret     

06a8  ed5b682a  ld      de,(#2a68)
06ac  2a6a2a    ld      hl,(#2a6a)
06af  37        scf     
06b0  3f        ccf     
06b1  ed52      sbc     hl,de
06b3  283b      jr      z,#06f0         ; (59)
06b5  ed536a2a  ld      (#2a6a),de
06b9  010101    ld      bc,#0101
06bc  dd21fb1d  ld      ix,#1dfb
06c0  fd21c22a  ld      iy,#2ac2
06c4  c5        push    bc
06c5  dd4e00    ld      c,(ix+#00)
06c8  dd4601    ld      b,(ix+#01)
06cb  ed5b682a  ld      de,(#2a68)
06cf  dde5      push    ix
06d1  fde5      push    iy
06d3  cd781c    call    #1c78
06d6  fde1      pop     iy
06d8  dde1      pop     ix
06da  fd7500    ld      (iy+#00),l
06dd  fd7401    ld      (iy+#01),h
06e0  dd23      inc     ix
06e2  dd23      inc     ix
06e4  fd23      inc     iy
06e6  fd23      inc     iy
06e8  c1        pop     bc
06e9  0d        dec     c
06ea  20d8      jr      nz,#06c4        ; (-40)
06ec  05        dec     b
06ed  f2c406    jp      p,#06c4
06f0  c9        ret     

06f1  21e531    ld      hl,#31e5
06f4  3ea3      ld      a,#a3
06f6  be        cp      (hl)
06f7  cafe06    jp      z,#06fe
06fa  77        ld      (hl),a
06fb  c38907    jp      #0789
06fe  ed4be931  ld      bc,(#31e9)
0702  2aeb31    ld      hl,(#31eb)
0705  dbe2      in      a,(#e2)
0707  cb6f      bit     5,a
0709  caea07    jp      z,#07ea
070c  ed78      in      a,(c)
070e  1e00      ld      e,#00
0710  57        ld      d,a
0711  cb3a      srl     d
0713  cb1b      rr      e
0715  c31807    jp      #0718
0718  ed4be731  ld      bc,(#31e7)
071c  dd21f931  ld      ix,#31f9
0720  dd09      add     ix,bc
0722  dd09      add     ix,bc
0724  dd7300    ld      (ix+#00),e
0727  dd7201    ld      (ix+#01),d
072a  dd21f707  ld      ix,#07f7
072e  dd09      add     ix,bc
0730  dd09      add     ix,bc
0732  c5        push    bc
0733  dd4e00    ld      c,(ix+#00)
0736  dd4601    ld      b,(ix+#01)
0739  cd4e1c    call    #1c4e
073c  c1        pop     bc
073d  dd210108  ld      ix,#0801
0741  dd09      add     ix,bc
0743  dd09      add     ix,bc
0745  dd5e00    ld      e,(ix+#00)
0748  dd5601    ld      d,(ix+#01)
074b  19        add     hl,de
074c  dd21ef31  ld      ix,#31ef
0750  dd09      add     ix,bc
0752  dd09      add     ix,bc
0754  dd7500    ld      (ix+#00),l
0757  dd7401    ld      (ix+#01),h
075a  dd211508  ld      ix,#0815
075e  dd09      add     ix,bc
0760  dd09      add     ix,bc
0762  dd5e00    ld      e,(ix+#00)
0765  dd5601    ld      d,(ix+#01)
0768  eb        ex      de,hl
0769  73        ld      (hl),e
076a  23        inc     hl
076b  72        ld      (hl),d
076c  dd210332  ld      ix,#3203
0770  dd09      add     ix,bc
0772  dd3600ff  ld      (ix+#00),#ff
0776  03        inc     bc
0777  2aeb07    ld      hl,(#07eb)
077a  37        scf     
077b  ed42      sbc     hl,bc
077d  3003      jr      nc,#0782        ; (3)
077f  010000    ld      bc,#0000
0782  ed43e731  ld      (#31e7),bc
0786  c3be07    jp      #07be
0789  010000    ld      bc,#0000
078c  ed43e731  ld      (#31e7),bc
0790  ed4beb07  ld      bc,(#07eb)
0794  dd211508  ld      ix,#0815
0798  fd21ef31  ld      iy,#31ef
079c  dd6e00    ld      l,(ix+#00)
079f  dd6601    ld      h,(ix+#01)
07a2  3600      ld      (hl),#00
07a4  23        inc     hl
07a5  3600      ld      (hl),#00
07a7  dd23      inc     ix
07a9  dd23      inc     ix
07ab  fd360000  ld      (iy+#00),#00
07af  fd360100  ld      (iy+#01),#00
07b3  fd23      inc     iy
07b5  fd23      inc     iy
07b7  0d        dec     c
07b8  20e2      jr      nz,#079c        ; (-30)
07ba  05        dec     b
07bb  f29c07    jp      p,#079c
07be  ed4be731  ld      bc,(#31e7)
07c2  dd210b08  ld      ix,#080b
07c6  dd09      add     ix,bc
07c8  dd09      add     ix,bc
07ca  dd5e00    ld      e,(ix+#00)
07cd  dd5601    ld      d,(ix+#01)
07d0  ed53e931  ld      (#31e9),de
07d4  dd21f207  ld      ix,#07f2
07d8  dd09      add     ix,bc
07da  dd6e00    ld      l,(ix+#00)
07dd  2600      ld      h,#00
07df  22eb31    ld      (#31eb),hl
07e2  7d        ld      a,l
07e3  83        add     a,e
07e4  4f        ld      c,a
07e5  ed79      out     (c),a
07e7  c3ea07    jp      #07ea
07ea  c9        ret     

07eb  05        dec     b
07ec  00        nop     
07ed  00        nop     
07ee  00        nop     
07ef  00        nop     
07f0  00        nop     
07f1  00        nop     
07f2  04        inc     b
07f3  03        inc     bc
07f4  0607      ld      b,#07
07f6  05        dec     b
07f7  2c        inc     l
07f8  019001    ld      bc,#0190
07fb  74        ld      (hl),h
07fc  01a402    ld      bc,#02a4
07ff  00        nop     
0800  0a        ld      a,(bc)
0801  00        nop     
0802  00        nop     
0803  00        nop     
0804  00        nop     
0805  00        nop     
0806  00        nop     
0807  00        nop     
0808  00        nop     
0809  00        nop     
080a  00        nop     
080b  e8        ret     pe

080c  00        nop     
080d  e8        ret     pe

080e  00        nop     
080f  e8        ret     pe

0810  00        nop     
0811  e8        ret     pe

0812  00        nop     
0813  e8        ret     pe

0814  00        nop     
0815  17        rla     
0816  2a152a    ld      hl,(#2a15)
0819  1d        dec     e
081a  2a1f2a    ld      hl,(#2a1f)
081d  1b        dec     de
081e  2afbf5    ld      hl,(#f5fb)
0821  c5        push    bc
0822  d5        push    de
0823  e5        push    hl
0824  dde5      push    ix
0826  fde5      push    iy
0828  cd1106    call    #0611
082b  cd7092    call    #9270
082e  21032d    ld      hl,#2d03
0831  35        dec     (hl)
0832  f23e08    jp      p,#083e
0835  363b      ld      (hl),#3b
0837  2a042d    ld      hl,(#2d04)
083a  23        inc     hl
083b  22042d    ld      (#2d04),hl
083e  2a6e2a    ld      hl,(#2a6e)
0841  e9        jp      (hl)
0842  be        cp      (hl)
0843  08        ex      af,af'
0844  ef        rst     #28
0845  08        ex      af,af'
0846  78        ld      a,b
0847  09        add     hl,bc
0848  be        cp      (hl)
0849  08        ex      af,af'
084a  78        ld      a,b
084b  09        add     hl,bc
084c  21093e    ld      hl,#3e09
084f  ff        rst     #38
0850  323432    ld      (#3234),a
0853  e5        push    hl
0854  2a102d    ld      hl,(#2d10)
0857  22122d    ld      (#2d12),hl
085a  e1        pop     hl
085b  3e14      ld      a,#14
085d  320832    ld      (#3208),a
0860  cd7d0f    call    #0f7d
0863  cd8109    call    #0981
0866  c9        ret     

0867  af        xor     a
0868  323432    ld      (#3234),a
086b  e5        push    hl
086c  210000    ld      hl,#0000
086f  22122d    ld      (#2d12),hl
0872  e1        pop     hl
0873  3e13      ld      a,#13
0875  320832    ld      (#3208),a
0878  cd750f    call    #0f75
087b  cd8109    call    #0981
087e  c9        ret     

087f  cda308    call    #08a3
0882  e5        push    hl
0883  210000    ld      hl,#0000
0886  22d92d    ld      (#2dd9),hl
0889  220b2a    ld      (#2a0b),hl
088c  220324    ld      (#2403),hl
088f  22702a    ld      (#2a70),hl
0892  22a62a    ld      (#2aa6),hl
0895  220f2a    ld      (#2a0f),hl
0898  220b32    ld      (#320b),hl
089b  224c32    ld      (#324c),hl
089e  225532    ld      (#3255),hl
08a1  e1        pop     hl
08a2  c9        ret     

08a3  e5        push    hl
08a4  210000    ld      hl,#0000
08a7  220d2a    ld      (#2a0d),hl
08aa  220524    ld      (#2405),hl
08ad  22722a    ld      (#2a72),hl
08b0  22112a    ld      (#2a11),hl
08b3  220932    ld      (#3209),hl
08b6  224e32    ld      (#324e),hl
08b9  225732    ld      (#3257),hl
08bc  e1        pop     hl
08bd  c9        ret     

08be  2ab131    ld      hl,(#31b1)
08c1  010000    ld      bc,#0000
08c4  37        scf     
08c5  ed42      sbc     hl,bc
08c7  3806      jr      c,#08cf         ; (6)
08c9  22b131    ld      (#31b1),hl
08cc  cc790f    call    z,#0f79
08cf  af        xor     a
08d0  3201a0    ld      (#a001),a
08d3  3205a0    ld      (#a005),a
08d6  cd7f08    call    #087f
08d9  210000    ld      hl,#0000
08dc  22252a    ld      (#2a25),hl
08df  22272a    ld      (#2a27),hl
08e2  21312a    ld      hl,#2a31
08e5  0608      ld      b,#08
08e7  3600      ld      (hl),#00
08e9  23        inc     hl
08ea  10fb      djnz    #08e7           ; (-5)
08ec  c3ab16    jp      #16ab
08ef  210224    ld      hl,#2402
08f2  35        dec     (hl)
08f3  ca1509    jp      z,#0915
08f6  320da0    ld      (#a00d),a
08f9  ed4b0524  ld      bc,(#2405)
08fd  11e45c    ld      de,#5ce4
0900  cd4e1c    call    #1c4e
0903  22272a    ld      (#2a27),hl
0906  ed4b0324  ld      bc,(#2403)
090a  cb28      sra     b
090c  cb19      rr      c
090e  ed43252a  ld      (#2a25),bc
0912  c3ab16    jp      #16ab
0915  3e03      ld      a,#03
0917  cd0e04    call    #040e
091a  af        xor     a
091b  320024    ld      (#2400),a
091e  c3ab16    jp      #16ab
0921  210224    ld      hl,#2402
0924  35        dec     (hl)
0925  ca6c09    jp      z,#096c
0928  3a7d2a    ld      a,(#2a7d)
092b  a7        and     a
092c  280e      jr      z,#093c         ; (14)
092e  3a0d32    ld      a,(#320d)
0931  3c        inc     a
0932  fe0a      cp      #0a
0934  d26809    jp      nc,#0968
0937  320d32    ld      (#320d),a
093a  180c      jr      #0948           ; (12)
093c  320d32    ld      (#320d),a
093f  320da0    ld      (#a00d),a
0942  2a0524    ld      hl,(#2405)
0945  cd4919    call    #1949
0948  3a7c2a    ld      a,(#2a7c)
094b  a7        and     a
094c  280e      jr      z,#095c         ; (14)
094e  3a0e32    ld      a,(#320e)
0951  3c        inc     a
0952  fe0a      cp      #0a
0954  d26809    jp      nc,#0968
0957  320e32    ld      (#320e),a
095a  1809      jr      #0965           ; (9)
095c  320e32    ld      (#320e),a
095f  2a0324    ld      hl,(#2403)
0962  cd5f19    call    #195f
0965  c37116    jp      #1671
0968  3e02      ld      a,#02
096a  1802      jr      #096e           ; (2)
096c  3e03      ld      a,#03
096e  cd0e04    call    #040e
0971  af        xor     a
0972  320024    ld      (#2400),a
0975  c37116    jp      #1671
0978  ed73f52d  ld      (#2df5),sp
097c  ed7bf32d  ld      sp,(#2df3)
0980  c9        ret     

0981  dde5      push    ix
0983  fde5      push    iy
0985  e5        push    hl
0986  d5        push    de
0987  c5        push    bc
0988  f5        push    af
0989  3af02c    ld      a,(#2cf0)
098c  a7        and     a
098d  2829      jr      z,#09b8         ; (41)
098f  cdd210    call    #10d2
0992  daa609    jp      c,#09a6
0995  ed4b052a  ld      bc,(#2a05)
0999  2af32c    ld      hl,(#2cf3)
099c  ed5b0d2a  ld      de,(#2a0d)
09a0  cdf319    call    #19f3
09a3  220d2a    ld      (#2a0d),hl
09a6  2a0d2a    ld      hl,(#2a0d)
09a9  cd4919    call    #1949
09ac  2af12c    ld      hl,(#2cf1)
09af  22f52c    ld      (#2cf5),hl
09b2  cdce13    call    #13ce
09b5  cddf0e    call    #0edf
09b8  cdc409    call    #09c4
09bb  f1        pop     af
09bc  c1        pop     bc
09bd  d1        pop     de
09be  e1        pop     hl
09bf  fde1      pop     iy
09c1  dde1      pop     ix
09c3  c9        ret     

09c4  ed73f32d  ld      (#2df3),sp
09c8  ed7bf52d  ld      sp,(#2df5)
09cc  c37116    jp      #1671
09cf  3a0724    ld      a,(#2407)
09d2  a7        and     a
09d3  cab40b    jp      z,#0bb4
09d6  3a0024    ld      a,(#2400)
09d9  fe04      cp      #04
09db  2831      jr      z,#0a0e         ; (49)
09dd  af        xor     a
09de  322d32    ld      (#322d),a
09e1  320824    ld      (#2408),a
09e4  32f02c    ld      (#2cf0),a
09e7  32db2d    ld      (#2ddb),a
09ea  322f32    ld      (#322f),a
09ed  32752d    ld      (#2d75),a
09f0  32772d    ld      (#2d77),a
09f3  32612d    ld      (#2d61),a
09f6  215c31    ld      hl,#315c
09f9  0632      ld      b,#32
09fb  3600      ld      (hl),#00
09fd  23        inc     hl
09fe  10fb      djnz    #09fb           ; (-5)
0a00  211932    ld      hl,#3219
0a03  221732    ld      (#3217),hl
0a06  cd5b84    call    #845b
0a09  3e01      ld      a,#01
0a0b  321532    ld      (#3215),a
0a0e  3a1532    ld      a,(#3215)
0a11  fe01      cp      #01
0a13  322d32    ld      (#322d),a
0a16  c2b40b    jp      nz,#0bb4
0a19  cd7f08    call    #087f
0a1c  cd6708    call    #0867
0a1f  320da0    ld      (#a00d),a
0a22  181d      jr      #0a41           ; (29)
0a24  cd1106    call    #0611
0a27  210824    ld      hl,#2408
0a2a  34        inc     (hl)
0a2b  3efe      ld      a,#fe
0a2d  be        cp      (hl)
0a2e  cabb0b    jp      z,#0bbb
0a31  213032    ld      hl,#3230
0a34  35        dec     (hl)
0a35  f23a0a    jp      p,#0a3a
0a38  3600      ld      (hl),#00
0a3a  cc6b0f    call    z,#0f6b
0a3d  af        xor     a
0a3e  322d32    ld      (#322d),a
0a41  110000    ld      de,#0000
0a44  ed530324  ld      (#2403),de
0a48  ed53552a  ld      (#2a55),de
0a4c  ed535b2a  ld      (#2a5b),de
0a50  3a4b32    ld      a,(#324b)
0a53  3c        inc     a
0a54  324b32    ld      (#324b),a
0a57  fe05      cp      #05
0a59  cc8109    call    z,#0981
0a5c  ed5b0824  ld      de,(#2408)
0a60  1600      ld      d,#00
0a62  cb23      sla     e
0a64  cb12      rl      d
0a66  dd210924  ld      ix,#2409
0a6a  dd19      add     ix,de
0a6c  dd19      add     ix,de
0a6e  dd19      add     ix,de
0a70  dd6e01    ld      l,(ix+#01)
0a73  2600      ld      h,#00
0a75  220324    ld      (#2403),hl
0a78  dd6e02    ld      l,(ix+#02)
0a7b  dd6603    ld      h,(ix+#03)
0a7e  22552a    ld      (#2a55),hl
0a81  dd6e04    ld      l,(ix+#04)
0a84  dd6605    ld      h,(ix+#05)
0a87  225b2a    ld      (#2a5b),hl
0a8a  dd7e00    ld      a,(ix+#00)
0a8d  32612a    ld      (#2a61),a
0a90  fe3d      cp      #3d
0a92  d2940b    jp      nc,#0b94
0a95  47        ld      b,a
0a96  fe00      cp      #00
0a98  280b      jr      z,#0aa5         ; (11)
0a9a  ed5b0824  ld      de,(#2408)
0a9e  3a6d2d    ld      a,(#2d6d)
0aa1  bb        cp      e
0aa2  da940b    jp      c,#0b94
0aa5  dde5      push    ix
0aa7  110600    ld      de,#0006
0aaa  dd19      add     ix,de
0aac  dd7e00    ld      a,(ix+#00)
0aaf  fe27      cp      #27
0ab1  28f7      jr      z,#0aaa         ; (-9)
0ab3  fe39      cp      #39
0ab5  28f3      jr      z,#0aaa         ; (-13)
0ab7  fe2c      cp      #2c
0ab9  28ef      jr      z,#0aaa         ; (-17)
0abb  fe20      cp      #20
0abd  28eb      jr      z,#0aaa         ; (-21)
0abf  fe21      cp      #21
0ac1  28e7      jr      z,#0aaa         ; (-25)
0ac3  fe28      cp      #28
0ac5  28e3      jr      z,#0aaa         ; (-29)
0ac7  fe05      cp      #05
0ac9  28df      jr      z,#0aaa         ; (-33)
0acb  fe06      cp      #06
0acd  28db      jr      z,#0aaa         ; (-37)
0acf  320f32    ld      (#320f),a
0ad2  0e00      ld      c,#00
0ad4  fe29      cp      #29
0ad6  2005      jr      nz,#0add        ; (5)
0ad8  b8        cp      b
0ad9  2002      jr      nz,#0add        ; (2)
0adb  0e01      ld      c,#01
0add  79        ld      a,c
0ade  32c92d    ld      (#2dc9),a
0ae1  dd7e01    ld      a,(ix+#01)
0ae4  321032    ld      (#3210),a
0ae7  dd6e02    ld      l,(ix+#02)
0aea  dd6603    ld      h,(ix+#03)
0aed  221132    ld      (#3211),hl
0af0  dd6e04    ld      l,(ix+#04)
0af3  dd6605    ld      h,(ix+#05)
0af6  221332    ld      (#3213),hl
0af9  dde1      pop     ix
0afb  3a612a    ld      a,(#2a61)
0afe  1600      ld      d,#00
0b00  5f        ld      e,a
0b01  fd21100b  ld      iy,#0b10
0b05  fd19      add     iy,de
0b07  fd19      add     iy,de
0b09  fd6e00    ld      l,(iy+#00)
0b0c  fd6601    ld      h,(iy+#01)
0b0f  e9        jp      (hl)
0b10  bb        cp      e
0b11  0b        dec     bc
0b12  e1        pop     hl
0b13  0b        dec     bc
0b14  ac        xor     h
0b15  0f        rrca    
0b16  12        ld      (de),a
0b17  11e10b    ld      de,#0be1
0b1a  3b        dec     sp
0b1b  113711    ld      de,#1137
0b1e  60        ld      h,b
0b1f  115b11    ld      de,#115b
0b22  8a        adc     a,d
0b23  119311    ld      de,#1193
0b26  a3        and     e
0b27  11b211    ld      de,#11b2
0b2a  bf        cp      a
0b2b  11df11    ld      de,#11df
0b2e  ef        rst     #28
0b2f  11fe11    ld      de,#11fe
0b32  0b        dec     bc
0b33  12        ld      (de),a
0b34  25        dec     h
0b35  12        ld      (de),a
0b36  3112bb    ld      sp,#bb12
0b39  0b        dec     bc
0b3a  77        ld      (hl),a
0b3b  84        add     a,h
0b3c  09        add     hl,bc
0b3d  8a        adc     a,d
0b3e  14        inc     d
0b3f  13        inc     de
0b40  2c        inc     l
0b41  13        inc     de
0b42  3b        dec     sp
0b43  13        inc     de
0b44  87        add     a,a
0b45  15        dec     d
0b46  3011      jr      nc,#0b59        ; (17)
0b48  2c        inc     l
0b49  114f8a    ld      de,#8a4f
0b4c  62        ld      h,d
0b4d  8a        adc     a,d
0b4e  c7        rst     #0
0b4f  88        adc     a,b
0b50  b1        or      c
0b51  8a        adc     a,d
0b52  fc8aa0    call    m,#a08a
0b55  8c        adc     a,h
0b56  a4        and     h
0b57  8c        adc     a,h
0b58  a8        xor     b
0b59  8c        adc     a,h
0b5a  308b      jr      nc,#0ae7        ; (-117)
0b5c  288d      jr      z,#0aeb         ; (-115)
0b5e  a8        xor     b
0b5f  8e        adc     a,(hl)
0b60  c1        pop     bc
0b61  15        dec     d
0b62  e1        pop     hl
0b63  0b        dec     bc
0b64  77        ld      (hl),a
0b65  8a        adc     a,d
0b66  92        sub     d
0b67  8a        adc     a,d
0b68  4e        ld      c,(hl)
0b69  8c        adc     a,h
0b6a  c20f74    jp      nz,#740f
0b6d  91        sub     c
0b6e  db91      in      a,(#91)
0b70  e5        push    hl
0b71  10d8      djnz    #0b4b           ; (-40)
0b73  15        dec     d
0b74  1816      jr      #0b8c           ; (22)
0b76  4b        ld      c,e
0b77  163e      ld      d,#3e
0b79  12        ld      (de),a
0b7a  4a        ld      c,d
0b7b  12        ld      (de),a
0b7c  59        ld      e,c
0b7d  12        ld      (de),a
0b7e  13        inc     de
0b7f  8f        adc     a,a
0b80  71        ld      (hl),c
0b81  12        ld      (de),a
0b82  d1        pop     de
0b83  8e        adc     a,(hl)
0b84  8a        adc     a,d
0b85  0b        dec     bc
0b86  5c        ld      e,h
0b87  8e        adc     a,(hl)
0b88  75        ld      (hl),l
0b89  8e        adc     a,(hl)
0b8a  210824    ld      hl,#2408
0b8d  34        inc     (hl)
0b8e  182f      jr      #0bbf           ; (47)
0b90  3e01      ld      a,#01
0b92  1822      jr      #0bb6           ; (34)
0b94  3e18      ld      a,#18
0b96  181e      jr      #0bb6           ; (30)
0b98  3e19      ld      a,#19
0b9a  181a      jr      #0bb6           ; (26)
0b9c  3e1a      ld      a,#1a
0b9e  1816      jr      #0bb6           ; (22)
0ba0  3e1b      ld      a,#1b
0ba2  1812      jr      #0bb6           ; (18)
0ba4  3e02      ld      a,#02
0ba6  180e      jr      #0bb6           ; (14)
0ba8  3e08      ld      a,#08
0baa  180a      jr      #0bb6           ; (10)
0bac  3e10      ld      a,#10
0bae  1806      jr      #0bb6           ; (6)
0bb0  3e1f      ld      a,#1f
0bb2  1802      jr      #0bb6           ; (2)
0bb4  3e04      ld      a,#04
0bb6  cd0e04    call    #040e
0bb9  1804      jr      #0bbf           ; (4)
0bbb  af        xor     a
0bbc  321532    ld      (#3215),a
0bbf  2aaf31    ld      hl,(#31af)
0bc2  22b131    ld      (#31b1),hl
0bc5  3e01      ld      a,#01
0bc7  323032    ld      (#3230),a
0bca  cd6e0f    call    #0f6e
0bcd  cd8208    call    #0882
0bd0  210000    ld      hl,#0000
0bd3  220b2a    ld      (#2a0b),hl
0bd6  220d2a    ld      (#2a0d),hl
0bd9  3e00      ld      a,#00
0bdb  320024    ld      (#2400),a
0bde  cd8109    call    #0981
0be1  cd4216    call    #1642
0be4  3a612a    ld      a,(#2a61)
0be7  fe04      cp      #04
0be9  cc4e08    call    z,#084e
0bec  210000    ld      hl,#0000
0bef  228e31    ld      (#318e),hl
0bf2  229031    ld      (#3190),hl
0bf5  2a0b2a    ld      hl,(#2a0b)
0bf8  ed5b802a  ld      de,(#2a80)
0bfc  cdbb17    call    #17bb
0bff  22842a    ld      (#2a84),hl
0c02  3ac92d    ld      a,(#2dc9)
0c05  fe01      cp      #01
0c07  110000    ld      de,#0000
0c0a  2a0324    ld      hl,(#2403)
0c0d  22f52c    ld      (#2cf5),hl
0c10  200b      jr      nz,#0c1d        ; (11)
0c12  ed5bc72d  ld      de,(#2dc7)
0c16  cb3a      srl     d
0c18  cb1b      rr      e
0c1a  cdbb17    call    #17bb
0c1d  ed53862a  ld      (#2a86),de
0c21  2a552a    ld      hl,(#2a55)
0c24  22fd2c    ld      (#2cfd),hl
0c27  ed5b5b2a  ld      de,(#2a5b)
0c2b  ed53ff2c  ld      (#2cff),de
0c2f  cdc318    call    #18c3
0c32  c2900b    jp      nz,#0b90
0c35  cd980f    call    #0f98
0c38  ed53d32d  ld      (#2dd3),de
0c3c  ed5b292a  ld      de,(#2a29)
0c40  37        scf     
0c41  3f        ccf     
0c42  ed52      sbc     hl,de
0c44  22782a    ld      (#2a78),hl
0c47  3a0f32    ld      a,(#320f)
0c4a  fe29      cp      #29
0c4c  2807      jr      z,#0c55         ; (7)
0c4e  fe01      cp      #01
0c50  3e00      ld      a,#00
0c52  c2810c    jp      nz,#0c81
0c55  2a1132    ld      hl,(#3211)
0c58  ed5b1332  ld      de,(#3213)
0c5c  dd2afd2c  ld      ix,(#2cfd)
0c60  fd2aff2c  ld      iy,(#2cff)
0c64  cdcb18    call    #18cb
0c67  22cf2d    ld      (#2dcf),hl
0c6a  ed53d12d  ld      (#2dd1),de
0c6e  eb        ex      de,hl
0c6f  ed5bd32d  ld      de,(#2dd3)
0c73  37        scf     
0c74  3f        ccf     
0c75  ed52      sbc     hl,de
0c77  eb        ex      de,hl
0c78  cdd117    call    #17d1
0c7b  ed53d52d  ld      (#2dd5),de
0c7f  3e01      ld      a,#01
0c81  323132    ld      (#3231),a
0c84  3ac92d    ld      a,(#2dc9)
0c87  fe01      cp      #01
0c89  c2f70c    jp      nz,#0cf7
0c8c  ed5bd52d  ld      de,(#2dd5)
0c90  cd9e17    call    #179e
0c93  ed53d72d  ld      (#2dd7),de
0c97  215501    ld      hl,#0155
0c9a  37        scf     
0c9b  ed52      sbc     hl,de
0c9d  daf20c    jp      c,#0cf2
0ca0  ed4bc72d  ld      bc,(#2dc7)
0ca4  cd781c    call    #1c78
0ca7  dde5      push    ix
0ca9  d1        pop     de
0caa  01a300    ld      bc,#00a3
0cad  cdcc1c    call    #1ccc
0cb0  ed53cd2d  ld      (#2dcd),de
0cb4  ed5bd72d  ld      de,(#2dd7)
0cb8  cb3a      srl     d
0cba  cb1b      rr      e
0cbc  cd551d    call    #1d55
0cbf  eb        ex      de,hl
0cc0  ed4bc72d  ld      bc,(#2dc7)
0cc4  cd781c    call    #1c78
0cc7  dde5      push    ix
0cc9  d1        pop     de
0cca  cb22      sla     d
0ccc  cb15      rl      l
0cce  cb14      rl      h
0cd0  22cb2d    ld      (#2dcb),hl
0cd3  eb        ex      de,hl
0cd4  2acf2d    ld      hl,(#2dcf)
0cd7  37        scf     
0cd8  3f        ccf     
0cd9  ed52      sbc     hl,de
0cdb  3815      jr      c,#0cf2         ; (21)
0cdd  22cf2d    ld      (#2dcf),hl
0ce0  2a782a    ld      hl,(#2a78)
0ce3  ed5bcb2d  ld      de,(#2dcb)
0ce7  37        scf     
0ce8  3f        ccf     
0ce9  ed52      sbc     hl,de
0ceb  3805      jr      c,#0cf2         ; (5)
0ced  22782a    ld      (#2a78),hl
0cf0  1812      jr      #0d04           ; (18)
0cf2  3e11      ld      a,#11
0cf4  cd0e04    call    #040e
0cf7  210000    ld      hl,#0000
0cfa  22862a    ld      (#2a86),hl
0cfd  22cd2d    ld      (#2dcd),hl
0d00  af        xor     a
0d01  32c92d    ld      (#2dc9),a
0d04  3aca2d    ld      a,(#2dca)
0d07  fe01      cp      #01
0d09  2829      jr      z,#0d34         ; (41)
0d0b  ed5bd32d  ld      de,(#2dd3)
0d0f  2a5d2a    ld      hl,(#2a5d)
0d12  37        scf     
0d13  3f        ccf     
0d14  ed52      sbc     hl,de
0d16  eb        ex      de,hl
0d17  cd9e17    call    #179e
0d1a  210a00    ld      hl,#000a
0d1d  37        scf     
0d1e  ed52      sbc     hl,de
0d20  cb7c      bit     7,h
0d22  2810      jr      z,#0d34         ; (16)
0d24  ed5bd32d  ld      de,(#2dd3)
0d28  cde30f    call    #0fe3
0d2b  daa40b    jp      c,#0ba4
0d2e  210000    ld      hl,#0000
0d31  22de2c    ld      (#2cde),hl
0d34  af        xor     a
0d35  32ca2d    ld      (#2dca),a
0d38  2a842a    ld      hl,(#2a84)
0d3b  220b2a    ld      (#2a0b),hl
0d3e  ed5bd32d  ld      de,(#2dd3)
0d42  cdc381    call    #81c3
0d45  cdce13    call    #13ce
0d48  2a0b2a    ld      hl,(#2a0b)
0d4b  cd8c19    call    #198c
0d4e  c36c0e    jp      #0e6c
0d51  cdce13    call    #13ce
0d54  2017      jr      nz,#0d6d        ; (23)
0d56  3adb2d    ld      a,(#2ddb)
0d59  fe01      cp      #01
0d5b  2010      jr      nz,#0d6d        ; (16)
0d5d  3a612a    ld      a,(#2a61)
0d60  fe04      cp      #04
0d62  2809      jr      z,#0d6d         ; (9)
0d64  cd418f    call    #8f41
0d67  dae10b    jp      c,#0be1
0d6a  c3240a    jp      #0a24
0d6d  2a0b2a    ld      hl,(#2a0b)
0d70  cd7919    call    #1979
0d73  2a0b2a    ld      hl,(#2a0b)
0d76  cd8c19    call    #198c
0d79  ed4b782a  ld      bc,(#2a78)
0d7d  cb7c      bit     7,h
0d7f  282f      jr      z,#0db0         ; (47)
0d81  3ac92d    ld      a,(#2dc9)
0d84  fe01      cp      #01
0d86  c2780e    jp      nz,#0e78
0d89  32ca2d    ld      (#2dca),a
0d8c  af        xor     a
0d8d  32c92d    ld      (#2dc9),a
0d90  ed5bcd2d  ld      de,(#2dcd)
0d94  2acf2d    ld      hl,(#2dcf)
0d97  19        add     hl,de
0d98  22782a    ld      (#2a78),hl
0d9b  2a862a    ld      hl,(#2a86)
0d9e  22f52c    ld      (#2cf5),hl
0da1  2ad52d    ld      hl,(#2dd5)
0da4  22c131    ld      (#31c1),hl
0da7  210000    ld      hl,#0000
0daa  22c331    ld      (#31c3),hl
0dad  22862a    ld      (#2a86),hl
0db0  3aca2d    ld      a,(#2dca)
0db3  fe01      cp      #01
0db5  2009      jr      nz,#0dc0        ; (9)
0db7  cdc919    call    #19c9
0dba  c2780e    jp      nz,#0e78
0dbd  c36c0e    jp      #0e6c
0dc0  2a9e31    ld      hl,(#319e)
0dc3  ed5b782a  ld      de,(#2a78)
0dc7  cb2a      sra     d
0dc9  cb1b      rr      e
0dcb  cb2a      sra     d
0dcd  cb1b      rr      e
0dcf  cdbb17    call    #17bb
0dd2  ed53a431  ld      (#31a4),de
0dd6  2afd2c    ld      hl,(#2cfd)
0dd9  ed5bff2c  ld      de,(#2cff)
0ddd  cdc318    call    #18c3
0de0  ed53c931  ld      (#31c9),de
0de4  c2900b    jp      nz,#0b90
0de7  e5        push    hl
0de8  2a8e31    ld      hl,(#318e)
0deb  19        add     hl,de
0dec  ed5b9031  ld      de,(#3190)
0df0  ed5a      adc     hl,de
0df2  eb        ex      de,hl
0df3  cd980f    call    #0f98
0df6  d5        push    de
0df7  eb        ex      de,hl
0df8  ed5bd32d  ld      de,(#2dd3)
0dfc  37        scf     
0dfd  3f        ccf     
0dfe  ed52      sbc     hl,de
0e00  d1        pop     de
0e01  cdc417    call    #17c4
0e04  7c        ld      a,h
0e05  cd9017    call    #1790
0e08  ed4ba431  ld      bc,(#31a4)
0e0c  37        scf     
0e0d  ed42      sbc     hl,bc
0e0f  380d      jr      c,#0e1e         ; (13)
0e11  cb7f      bit     7,a
0e13  c4af17    call    nz,#17af
0e16  2ad32d    ld      hl,(#2dd3)
0e19  09        add     hl,bc
0e1a  eb        ex      de,hl
0e1b  cdd117    call    #17d1
0e1e  cd3617    call    #1736
0e21  c1        pop     bc
0e22  daa40b    jp      c,#0ba4
0e25  3a612d    ld      a,(#2d61)
0e28  a7        and     a
0e29  2841      jr      z,#0e6c         ; (65)
0e2b  2ad92d    ld      hl,(#2dd9)
0e2e  29        add     hl,hl
0e2f  29        add     hl,hl
0e30  eb        ex      de,hl
0e31  2ae82c    ld      hl,(#2ce8)
0e34  7c        ld      a,h
0e35  b5        or      l
0e36  2834      jr      z,#0e6c         ; (52)
0e38  37        scf     
0e39  3f        ccf     
0e3a  ed52      sbc     hl,de
0e3c  eb        ex      de,hl
0e3d  2a592d    ld      hl,(#2d59)
0e40  09        add     hl,bc
0e41  eb        ex      de,hl
0e42  ed52      sbc     hl,de
0e44  e5        push    hl
0e45  eb        ex      de,hl
0e46  cd9e17    call    #179e
0e49  2a5b2d    ld      hl,(#2d5b)
0e4c  37        scf     
0e4d  ed52      sbc     hl,de
0e4f  d1        pop     de
0e50  381a      jr      c,#0e6c         ; (26)
0e52  2a782a    ld      hl,(#2a78)
0e55  19        add     hl,de
0e56  22782a    ld      (#2a78),hl
0e59  d5        push    de
0e5a  c1        pop     bc
0e5b  cdaf17    call    #17af
0e5e  ed5b5d2a  ld      de,(#2a5d)
0e62  cd980f    call    #0f98
0e65  cda181    call    #81a1
0e68  af        xor     a
0e69  32612d    ld      (#2d61),a
0e6c  cddf0e    call    #0edf
0e6f  cd8109    call    #0981
0e72  cd4b82    call    #824b
0e75  c3510d    jp      #0d51
0e78  3a612d    ld      a,(#2d61)
0e7b  a7        and     a
0e7c  2807      jr      z,#0e85         ; (7)
0e7e  cd7381    call    #8173
0e81  af        xor     a
0e82  32612d    ld      (#2d61),a
0e85  210000    ld      hl,#0000
0e88  22592d    ld      (#2d59),hl
0e8b  22ad31    ld      (#31ad),hl
0e8e  3a752d    ld      a,(#2d75)
0e91  a7        and     a
0e92  2804      jr      z,#0e98         ; (4)
0e94  3d        dec     a
0e95  32752d    ld      (#2d75),a
0e98  3a772d    ld      a,(#2d77)
0e9b  a7        and     a
0e9c  c48181    call    nz,#8181
0e9f  3aca2d    ld      a,(#2dca)
0ea2  fe01      cp      #01
0ea4  2813      jr      z,#0eb9         ; (19)
0ea6  2a0f2a    ld      hl,(#2a0f)
0ea9  09        add     hl,bc
0eaa  220f2a    ld      (#2a0f),hl
0ead  cd8109    call    #0981
0eb0  cd8109    call    #0981
0eb3  2a862a    ld      hl,(#2a86)
0eb6  220b2a    ld      (#2a0b),hl
0eb9  cdd30e    call    #0ed3
0ebc  3a612a    ld      a,(#2a61)
0ebf  fe04      cp      #04
0ec1  cc6708    call    z,#0867
0ec4  2afd2c    ld      hl,(#2cfd)
0ec7  22cf31    ld      (#31cf),hl
0eca  2aff2c    ld      hl,(#2cff)
0ecd  22d131    ld      (#31d1),hl
0ed0  c3240a    jp      #0a24
0ed3  e5        push    hl
0ed4  212f32    ld      hl,#322f
0ed7  35        dec     (hl)
0ed8  f2dd0e    jp      p,#0edd
0edb  3600      ld      (hl),#00
0edd  e1        pop     hl
0ede  c9        ret     

0edf  21e803    ld      hl,#03e8
0ee2  22dc2c    ld      (#2cdc),hl
0ee5  22de2c    ld      (#2cde),hl
0ee8  22e02c    ld      (#2ce0),hl
0eeb  22e22c    ld      (#2ce2),hl
0eee  22e62c    ld      (#2ce6),hl
0ef1  22e42c    ld      (#2ce4),hl
0ef4  210000    ld      hl,#0000
0ef7  22e82c    ld      (#2ce8),hl
0efa  3a2f32    ld      a,(#322f)
0efd  a7        and     a
0efe  2008      jr      nz,#0f08        ; (8)
0f00  3a632d    ld      a,(#2d63)
0f03  fe01      cp      #01
0f05  cc1984    call    z,#8419
0f08  c9        ret     

0f09  cb78      bit     7,b
0f0b  280a      jr      z,#0f17         ; (10)
0f0d  cdaf17    call    #17af
0f10  210002    ld      hl,#0200
0f13  19        add     hl,de
0f14  cb94      res     2,h
0f16  eb        ex      de,hl
0f17  cd6d1d    call    #1d6d
0f1a  7a        ld      a,d
0f1b  3c        inc     a
0f1c  cd290f    call    #0f29
0f1f  e5        push    hl
0f20  cd7f1d    call    #1d7f
0f23  7a        ld      a,d
0f24  cd290f    call    #0f29
0f27  d1        pop     de
0f28  c9        ret     

0f29  c5        push    bc
0f2a  d5        push    de
0f2b  f5        push    af
0f2c  eb        ex      de,hl
0f2d  cd781c    call    #1c78
0f30  f1        pop     af
0f31  cb4f      bit     1,a
0f33  c49317    call    nz,#1793
0f36  d1        pop     de
0f37  c1        pop     bc
0f38  c9        ret     

0f39  e5        push    hl
0f3a  2a512a    ld      hl,(#2a51)
0f3d  22452d    ld      (#2d45),hl
0f40  2a572a    ld      hl,(#2a57)
0f43  22472d    ld      (#2d47),hl
0f46  3a0124    ld      a,(#2401)
0f49  fe0a      cp      #0a
0f4b  2808      jr      z,#0f55         ; (8)
0f4d  fe17      cp      #17
0f4f  2804      jr      z,#0f55         ; (4)
0f51  fe22      cp      #22
0f53  2005      jr      nz,#0f5a        ; (5)
0f55  3e00      ld      a,#00
0f57  cd0e04    call    #040e
0f5a  e1        pop     hl
0f5b  c9        ret     

0f5c  e5        push    hl
0f5d  210000    ld      hl,#0000
0f60  224b2d    ld      (#2d4b),hl
0f63  22572d    ld      (#2d57),hl
0f66  225332    ld      (#3253),hl
0f69  e1        pop     hl
0f6a  c9        ret     

0f6b  af        xor     a
0f6c  1802      jr      #0f70           ; (2)
0f6e  3e01      ld      a,#01
0f70  116724    ld      de,#2467
0f73  180d      jr      #0f82           ; (13)
0f75  3e01      ld      a,#01
0f77  1806      jr      #0f7f           ; (6)
0f79  3e00      ld      a,#00
0f7b  1802      jr      #0f7f           ; (2)
0f7d  3e02      ld      a,#02
0f7f  110024    ld      de,#2400
0f82  323232    ld      (#3232),a
0f85  3a632d    ld      a,(#2d63)
0f88  fe01      cp      #01
0f8a  200b      jr      nz,#0f97        ; (11)
0f8c  010100    ld      bc,#0001
0f8f  3e03      ld      a,#03
0f91  213232    ld      hl,#3232
0f94  cdf191    call    #91f1
0f97  c9        ret     

0f98  f5        push    af
0f99  3a612a    ld      a,(#2a61)
0f9c  fe04      cp      #04
0f9e  2007      jr      nz,#0fa7        ; (7)
0fa0  e5        push    hl
0fa1  210002    ld      hl,#0200
0fa4  19        add     hl,de
0fa5  eb        ex      de,hl
0fa6  e1        pop     hl
0fa7  cdd117    call    #17d1
0faa  f1        pop     af
0fab  c9        ret     

0fac  cd4216    call    #1642
0faf  ed5b552a  ld      de,(#2a55)
0fb3  7a        ld      a,d
0fb4  e6fc      and     #fc
0fb6  c29c0b    jp      nz,#0b9c
0fb9  cde30f    call    #0fe3
0fbc  daa40b    jp      c,#0ba4
0fbf  c3240a    jp      #0a24
0fc2  cd4216    call    #1642
0fc5  ed5b552a  ld      de,(#2a55)
0fc9  ed53c42c  ld      (#2cc4),de
0fcd  3a0324    ld      a,(#2403)
0fd0  4f        ld      c,a
0fd1  0600      ld      b,#00
0fd3  a7        and     a
0fd4  2004      jr      nz,#0fda        ; (4)
0fd6  ed4b762a  ld      bc,(#2a76)
0fda  cd0910    call    #1009
0fdd  daa40b    jp      c,#0ba4
0fe0  c3240a    jp      #0a24
0fe3  210000    ld      hl,#0000
0fe6  220d2a    ld      (#2a0d),hl
0fe9  220b2a    ld      (#2a0b),hl
0fec  2a5d2a    ld      hl,(#2a5d)
0fef  eb        ex      de,hl
0ff0  37        scf     
0ff1  3f        ccf     
0ff2  ed52      sbc     hl,de
0ff4  eb        ex      de,hl
0ff5  cdd117    call    #17d1
0ff8  21f401    ld      hl,#01f4
0ffb  19        add     hl,de
0ffc  cb7c      bit     7,h
0ffe  2805      jr      z,#1005         ; (5)
1000  210004    ld      hl,#0400
1003  19        add     hl,de
1004  eb        ex      de,hl
1005  ed4b762a  ld      bc,(#2a76)
1009  cb7a      bit     7,d
100b  2803      jr      z,#1010         ; (3)
100d  cdaf17    call    #17af
1010  ed53c131  ld      (#31c1),de
1014  210000    ld      hl,#0000
1017  22c331    ld      (#31c3),hl
101a  ed43bf31  ld      (#31bf),bc
101e  cd6015    call    #1560
1021  cdd210    call    #10d2
1024  2ae02c    ld      hl,(#2ce0)
1027  ed5b4f2d  ld      de,(#2d4f)
102b  3e16      ld      a,#16
102d  ed52      sbc     hl,de
102f  380d      jr      c,#103e         ; (13)
1031  2ae22c    ld      hl,(#2ce2)
1034  ed5b512d  ld      de,(#2d51)
1038  3e15      ld      a,#15
103a  ed52      sbc     hl,de
103c  3017      jr      nc,#1055        ; (23)
103e  21552d    ld      hl,#2d55
1041  35        dec     (hl)
1042  2004      jr      nz,#1048        ; (4)
1044  34        inc     (hl)
1045  cd0e04    call    #040e
1048  ed4b052a  ld      bc,(#2a05)
104c  cb21      sla     c
104e  cb10      rl      b
1050  cd8710    call    #1087
1053  1806      jr      #105b           ; (6)
1055  cd6015    call    #1560
1058  cd8910    call    #1089
105b  c26710    jp      nz,#1067
105e  cddf0e    call    #0edf
1061  cd8109    call    #0981
1064  c32110    jp      #1021
1067  2a112a    ld      hl,(#2a11)
106a  09        add     hl,bc
106b  22112a    ld      (#2a11),hl
106e  210000    ld      hl,#0000
1071  220d2a    ld      (#2a0d),hl
1074  cdf312    call    #12f3
1077  cdce12    call    #12ce
107a  0607      ld      b,#07
107c  cd8109    call    #0981
107f  10fb      djnz    #107c           ; (-5)
1081  cd0413    call    #1304
1084  37        scf     
1085  3f        ccf     
1086  c9        ret     

1087  1811      jr      #109a           ; (17)
1089  cd7517    call    #1775
108c  2abf31    ld      hl,(#31bf)
108f  ed4b052a  ld      bc,(#2a05)
1093  3a672a    ld      a,(#2a67)
1096  fe04      cp      #04
1098  2003      jr      nz,#109d        ; (3)
109a  210000    ld      hl,#0000
109d  220524    ld      (#2405),hl
10a0  ed5b0d2a  ld      de,(#2a0d)
10a4  cdf319    call    #19f3
10a7  220d2a    ld      (#2a0d),hl
10aa  2a0d2a    ld      hl,(#2a0d)
10ad  cd9317    call    #1793
10b0  ed4bc131  ld      bc,(#31c1)
10b4  ed5bc331  ld      de,(#31c3)
10b8  c5        push    bc
10b9  cda719    call    #19a7
10bc  c1        pop     bc
10bd  22c131    ld      (#31c1),hl
10c0  ed53c331  ld      (#31c3),de
10c4  78        ld      a,b
10c5  ac        xor     h
10c6  e680      and     #80
10c8  2007      jr      nz,#10d1        ; (7)
10ca  2a0d2a    ld      hl,(#2a0d)
10cd  cd4919    call    #1949
10d0  af        xor     a
10d1  c9        ret     

10d2  3a7d2a    ld      a,(#2a7d)
10d5  a7        and     a
10d6  2809      jr      z,#10e1         ; (9)
10d8  3aac31    ld      a,(#31ac)
10db  3c        inc     a
10dc  fe0a      cp      #0a
10de  d2a40b    jp      nc,#0ba4
10e1  32ac31    ld      (#31ac),a
10e4  c9        ret     

10e5  0603      ld      b,#03
10e7  2a0324    ld      hl,(#2403)
10ea  2600      ld      h,#00
10ec  7d        ld      a,l
10ed  b7        or      a
10ee  281d      jr      z,#110d         ; (29)
10f0  11803e    ld      de,#3e80
10f3  19        add     hl,de
10f4  1813      jr      #1109           ; (19)
10f6  dd23      inc     ix
10f8  dd23      inc     ix
10fa  dd6e00    ld      l,(ix+#00)
10fd  dd6601    ld      h,(ix+#01)
1100  7c        ld      a,h
1101  b5        or      l
1102  2809      jr      z,#110d         ; (9)
1104  7e        ld      a,(hl)
1105  dd7706    ld      (ix+#06),a
1108  23        inc     hl
1109  7e        ld      a,(hl)
110a  dd7707    ld      (ix+#07),a
110d  10e7      djnz    #10f6           ; (-25)
110f  c3240a    jp      #0a24
1112  ed4b552a  ld      bc,(#2a55)
1116  cb78      bit     7,b
1118  c29c0b    jp      nz,#0b9c
111b  ed43552a  ld      (#2a55),bc
111f  cd8109    call    #0981
1122  0d        dec     c
1123  20f6      jr      nz,#111b        ; (-10)
1125  05        dec     b
1126  f21b11    jp      p,#111b
1129  c3240a    jp      #0a24
112c  0e02      ld      c,#02
112e  1802      jr      #1132           ; (2)
1130  0e01      ld      c,#01
1132  2a5b2a    ld      hl,(#2a5b)
1135  1809      jr      #1140           ; (9)
1137  0e02      ld      c,#02
1139  1802      jr      #113d           ; (2)
113b  0e01      ld      c,#01
113d  215b2a    ld      hl,#2a5b
1140  0600      ld      b,#00
1142  ed5b552a  ld      de,(#2a55)
1146  3a0324    ld      a,(#2403)
1149  fe02      cp      #02
114b  3005      jr      nc,#1152        ; (5)
114d  edb0      ldir    
114f  c3240a    jp      #0a24
1152  cdf191    call    #91f1
1155  cd8109    call    #0981
1158  c3240a    jp      #0a24
115b  010200    ld      bc,#0002
115e  1807      jr      #1167           ; (7)
1160  010100    ld      bc,#0001
1163  af        xor     a
1164  32b12a    ld      (#2ab1),a
1167  3a0324    ld      a,(#2403)
116a  ed5b552a  ld      de,(#2a55)
116e  fe02      cp      #02
1170  3009      jr      nc,#117b        ; (9)
1172  eb        ex      de,hl
1173  11b02a    ld      de,#2ab0
1176  edb0      ldir    
1178  c3240a    jp      #0a24
117b  cde791    call    #91e7
117e  cd8109    call    #0981
1181  2a5c30    ld      hl,(#305c)
1184  22b02a    ld      (#2ab0),hl
1187  c3240a    jp      #0a24
118a  3a0324    ld      a,(#2403)
118d  320824    ld      (#2408),a
1190  c33d0a    jp      #0a3d
1193  cd8312    call    #1283
1196  eb        ex      de,hl
1197  37        scf     
1198  3f        ccf     
1199  ed52      sbc     hl,de
119b  cb14      rl      h
119d  da8a11    jp      c,#118a
11a0  c3240a    jp      #0a24
11a3  cd8312    call    #1283
11a6  37        scf     
11a7  3f        ccf     
11a8  ed52      sbc     hl,de
11aa  cb14      rl      h
11ac  da8a11    jp      c,#118a
11af  c3240a    jp      #0a24
11b2  cd8312    call    #1283
11b5  37        scf     
11b6  3f        ccf     
11b7  ed52      sbc     hl,de
11b9  ca8a11    jp      z,#118a
11bc  c3240a    jp      #0a24
11bf  3a0824    ld      a,(#2408)
11c2  2a1732    ld      hl,(#3217)
11c5  77        ld      (hl),a
11c6  23        inc     hl
11c7  e5        push    hl
11c8  112d32    ld      de,#322d
11cb  37        scf     
11cc  3f        ccf     
11cd  ed52      sbc     hl,de
11cf  e1        pop     hl
11d0  d2940b    jp      nc,#0b94
11d3  221732    ld      (#3217),hl
11d6  3a0324    ld      a,(#2403)
11d9  320824    ld      (#2408),a
11dc  c33d0a    jp      #0a3d
11df  cd8312    call    #1283
11e2  eb        ex      de,hl
11e3  37        scf     
11e4  3f        ccf     
11e5  ed52      sbc     hl,de
11e7  cb14      rl      h
11e9  dabf11    jp      c,#11bf
11ec  c3240a    jp      #0a24
11ef  cd8312    call    #1283
11f2  37        scf     
11f3  3f        ccf     
11f4  ed52      sbc     hl,de
11f6  cb14      rl      h
11f8  dabf11    jp      c,#11bf
11fb  c3240a    jp      #0a24
11fe  cd8312    call    #1283
1201  37        scf     
1202  3f        ccf     
1203  ed52      sbc     hl,de
1205  cabf11    jp      z,#11bf
1208  c3240a    jp      #0a24
120b  2a1732    ld      hl,(#3217)
120e  2b        dec     hl
120f  e5        push    hl
1210  111932    ld      de,#3219
1213  37        scf     
1214  3f        ccf     
1215  ed52      sbc     hl,de
1217  e1        pop     hl
1218  da940b    jp      c,#0b94
121b  221732    ld      (#3217),hl
121e  7e        ld      a,(hl)
121f  320824    ld      (#2408),a
1222  c3240a    jp      #0a24
1225  cd7c12    call    #127c
1228  37        scf     
1229  3f        ccf     
122a  19        add     hl,de
122b  cdab12    call    #12ab
122e  c3240a    jp      #0a24
1231  cd7c12    call    #127c
1234  37        scf     
1235  3f        ccf     
1236  ed52      sbc     hl,de
1238  cdab12    call    #12ab
123b  c3240a    jp      #0a24
123e  cd7c12    call    #127c
1241  cd9017    call    #1790
1244  cdab12    call    #12ab
1247  c3240a    jp      #0a24
124a  cd7c12    call    #127c
124d  44        ld      b,h
124e  4d        ld      c,l
124f  cd4e1c    call    #1c4e
1252  eb        ex      de,hl
1253  cdab12    call    #12ab
1256  c3240a    jp      #0a24
1259  cd7c12    call    #127c
125c  42        ld      b,d
125d  4b        ld      c,e
125e  eb        ex      de,hl
125f  210000    ld      hl,#0000
1262  cb7a      bit     7,d
1264  2801      jr      z,#1267         ; (1)
1266  2b        dec     hl
1267  cda41c    call    #1ca4
126a  eb        ex      de,hl
126b  cdab12    call    #12ab
126e  c3240a    jp      #0a24
1271  3e01      ld      a,#01
1273  32062d    ld      (#2d06),a
1276  3205a0    ld      (#a005),a
1279  c3240a    jp      #0a24
127c  3a0324    ld      a,(#2403)
127f  fe02      cp      #02
1281  3013      jr      nc,#1296        ; (19)
1283  ed5b552a  ld      de,(#2a55)
1287  2ab02a    ld      hl,(#2ab0)
128a  7a        ld      a,d
128b  b3        or      e
128c  2818      jr      z,#12a6         ; (24)
128e  eb        ex      de,hl
128f  5e        ld      e,(hl)
1290  23        inc     hl
1291  56        ld      d,(hl)
1292  eb        ex      de,hl
1293  c3a612    jp      #12a6
1296  010200    ld      bc,#0002
1299  ed5b552a  ld      de,(#2a55)
129d  cde791    call    #91e7
12a0  cd8109    call    #0981
12a3  2a5c30    ld      hl,(#305c)
12a6  ed5b5b2a  ld      de,(#2a5b)
12aa  c9        ret     

12ab  22b02a    ld      (#2ab0),hl
12ae  3a0324    ld      a,(#2403)
12b1  010200    ld      bc,#0002
12b4  21b02a    ld      hl,#2ab0
12b7  ed5b552a  ld      de,(#2a55)
12bb  fe02      cp      #02
12bd  3008      jr      nc,#12c7        ; (8)
12bf  7a        ld      a,d
12c0  b3        or      e
12c1  280a      jr      z,#12cd         ; (10)
12c3  edb0      ldir    
12c5  1806      jr      #12cd           ; (6)
12c7  cdf191    call    #91f1
12ca  cd8109    call    #0981
12cd  c9        ret     

12ce  21b42a    ld      hl,#2ab4
12d1  11432a    ld      de,#2a43
12d4  cde212    call    #12e2
12d7  c9        ret     

12d8  21b22a    ld      hl,#2ab2
12db  11412a    ld      de,#2a41
12de  cde212    call    #12e2
12e1  c9        ret     

12e2  0604      ld      b,#04
12e4  7e        ld      a,(hl)
12e5  12        ld      (de),a
12e6  23        inc     hl
12e7  13        inc     de
12e8  7e        ld      a,(hl)
12e9  12        ld      (de),a
12ea  23        inc     hl
12eb  23        inc     hl
12ec  23        inc     hl
12ed  13        inc     de
12ee  13        inc     de
12ef  13        inc     de
12f0  10f2      djnz    #12e4           ; (-14)
12f2  c9        ret     

12f3  21412a    ld      hl,#2a41
12f6  113532    ld      de,#3235
12f9  011000    ld      bc,#0010
12fc  edb0      ldir    
12fe  3eff      ld      a,#ff
1300  324532    ld      (#3245),a
1303  c9        ret     

1304  213532    ld      hl,#3235
1307  11412a    ld      de,#2a41
130a  011000    ld      bc,#0010
130d  edb0      ldir    
130f  af        xor     a
1310  324532    ld      (#3245),a
1313  c9        ret     

1314  2a552a    ld      hl,(#2a55)
1317  22512a    ld      (#2a51),hl
131a  2a5b2a    ld      hl,(#2a5b)
131d  22572a    ld      (#2a57),hl
1320  cd390f    call    #0f39
1323  cd5c0f    call    #0f5c
1326  cd7013    call    #1370
1329  c3240a    jp      #0a24
132c  2a552a    ld      hl,(#2a55)
132f  7c        ld      a,h
1330  e6fc      and     #fc
1332  c29c0b    jp      nz,#0b9c
1335  225d2a    ld      (#2a5d),hl
1338  c3240a    jp      #0a24
133b  cd4216    call    #1642
133e  cdf312    call    #12f3
1341  cdce12    call    #12ce
1344  cdd812    call    #12d8
1347  af        xor     a
1348  32862a    ld      (#2a86),a
134b  2a552a    ld      hl,(#2a55)
134e  3a0324    ld      a,(#2403)
1351  a7        and     a
1352  2003      jr      nz,#1357        ; (3)
1354  3a802a    ld      a,(#2a80)
1357  4f        ld      c,a
1358  0600      ld      b,#00
135a  cd8113    call    #1381
135d  060a      ld      b,#0a
135f  cd8109    call    #0981
1362  10fb      djnz    #135f           ; (-5)
1364  cd0413    call    #1304
1367  cdd30e    call    #0ed3
136a  cd7013    call    #1370
136d  c3240a    jp      #0a24
1370  2a512a    ld      hl,(#2a51)
1373  22cf31    ld      (#31cf),hl
1376  2a572a    ld      hl,(#2a57)
1379  22d131    ld      (#31d1),hl
137c  c9        ret     

137d  af        xor     a
137e  322d32    ld      (#322d),a
1381  ed43f52c  ld      (#2cf5),bc
1385  cb7c      bit     7,h
1387  2808      jr      z,#1391         ; (8)
1389  cd9317    call    #1793
138c  e5        push    hl
138d  cd4e08    call    #084e
1390  e1        pop     hl
1391  3a2d32    ld      a,(#322d)
1394  fe01      cp      #01
1396  2803      jr      z,#139b         ; (3)
1398  22782a    ld      (#2a78),hl
139b  cdce13    call    #13ce
139e  2a0b2a    ld      hl,(#2a0b)
13a1  cd8c19    call    #198c
13a4  cb7c      bit     7,h
13a6  2009      jr      nz,#13b1        ; (9)
13a8  cddf0e    call    #0edf
13ab  cd8109    call    #0981
13ae  c39b13    jp      #139b
13b1  ed4b782a  ld      bc,(#2a78)
13b5  2a0f2a    ld      hl,(#2a0f)
13b8  09        add     hl,bc
13b9  220f2a    ld      (#2a0f),hl
13bc  cd8109    call    #0981
13bf  210000    ld      hl,#0000
13c2  220b2a    ld      (#2a0b),hl
13c5  213432    ld      hl,#3234
13c8  cb46      bit     0,(hl)
13ca  c46708    call    nz,#0867
13cd  c9        ret     

13ce  ed5b3f2d  ld      de,(#2d3f)
13d2  2a592d    ld      hl,(#2d59)
13d5  7c        ld      a,h
13d6  b5        or      l
13d7  200c      jr      nz,#13e5        ; (12)
13d9  2aad31    ld      hl,(#31ad)
13dc  7c        ld      a,h
13dd  b5        or      l
13de  282d      jr      z,#140d         ; (45)
13e0  ed4b5d2d  ld      bc,(#2d5d)
13e4  09        add     hl,bc
13e5  e5        push    hl
13e6  2afd2c    ld      hl,(#2cfd)
13e9  ed5bff2c  ld      de,(#2cff)
13ed  cdc318    call    #18c3
13f0  e5        push    hl
13f1  2ad32d    ld      hl,(#2dd3)
13f4  ed52      sbc     hl,de
13f6  eb        ex      de,hl
13f7  cdd117    call    #17d1
13fa  c1        pop     bc
13fb  cd090f    call    #0f09
13fe  e1        pop     hl
13ff  19        add     hl,de
1400  ed5b5d2d  ld      de,(#2d5d)
1404  ed52      sbc     hl,de
1406  ed5b3f2d  ld      de,(#2d3f)
140a  cdbb17    call    #17bb
140d  ed535f2d  ld      (#2d5f),de
1411  2a782a    ld      hl,(#2a78)
1414  ed4b032a  ld      bc,(#2a03)
1418  3a0024    ld      a,(#2400)
141b  fe00      cp      #00
141d  cae314    jp      z,#14e3
1420  224632    ld      (#3246),hl
1423  ed434832  ld      (#3248),bc
1427  0e00      ld      c,#00
1429  0600      ld      b,#00
142b  37        scf     
142c  3f        ccf     
142d  2ae02c    ld      hl,(#2ce0)
1430  7c        ld      a,h
1431  b5        or      l
1432  283d      jr      z,#1471         ; (61)
1434  ed5b4f2d  ld      de,(#2d4f)
1438  ed52      sbc     hl,de
143a  3e16      ld      a,#16
143c  dac114    jp      c,#14c1
143f  ed5ba831  ld      de,(#31a8)
1443  ed52      sbc     hl,de
1445  3003      jr      nc,#144a        ; (3)
1447  0d        dec     c
1448  0601      ld      b,#01
144a  2ae22c    ld      hl,(#2ce2)
144d  7c        ld      a,h
144e  b5        or      l
144f  2820      jr      z,#1471         ; (32)
1451  ed5b512d  ld      de,(#2d51)
1455  ed52      sbc     hl,de
1457  3e15      ld      a,#15
1459  3866      jr      c,#14c1         ; (102)
145b  ed5ba831  ld      de,(#31a8)
145f  ed52      sbc     hl,de
1461  3003      jr      nc,#1466        ; (3)
1463  0c        inc     c
1464  0601      ld      b,#01
1466  78        ld      a,b
1467  32aa31    ld      (#31aa),a
146a  2ade2c    ld      hl,(#2cde)
146d  7c        ld      a,h
146e  b5        or      l
146f  2004      jr      nz,#1475        ; (4)
1471  3e21      ld      a,#21
1473  184c      jr      #14c1           ; (76)
1475  ed5b5f2d  ld      de,(#2d5f)
1479  ed52      sbc     hl,de
147b  e5        push    hl
147c  ed5b9c31  ld      de,(#319c)
1480  ed52      sbc     hl,de
1482  f28a14    jp      p,#148a
1485  3aea2c    ld      a,(#2cea)
1488  81        add     a,c
1489  4f        ld      c,a
148a  79        ld      a,c
148b  32ab31    ld      (#31ab),a
148e  2a8e31    ld      hl,(#318e)
1491  ed4b9631  ld      bc,(#3196)
1495  a7        and     a
1496  2005      jr      nz,#149d        ; (5)
1498  cdf483    call    #83f4
149b  180c      jr      #14a9           ; (12)
149d  cb27      sla     a
149f  dcaf17    call    c,#17af
14a2  ed5b9231  ld      de,(#3192)
14a6  cde283    call    #83e2
14a9  228e31    ld      (#318e),hl
14ac  e1        pop     hl
14ad  3a0832    ld      a,(#3208)
14b0  cb7c      bit     7,h
14b2  200d      jr      nz,#14c1        ; (13)
14b4  ed5b4632  ld      de,(#3246)
14b8  e5        push    hl
14b9  ed52      sbc     hl,de
14bb  e1        pop     hl
14bc  382f      jr      c,#14ed         ; (47)
14be  eb        ex      de,hl
14bf  182c      jr      #14ed           ; (44)
14c1  21552d    ld      hl,#2d55
14c4  35        dec     (hl)
14c5  2010      jr      nz,#14d7        ; (16)
14c7  34        inc     (hl)
14c8  cd0e04    call    #040e
14cb  0e01      ld      c,#01
14cd  fe21      cp      #21
14cf  2002      jr      nz,#14d3        ; (2)
14d1  0e00      ld      c,#00
14d3  79        ld      a,c
14d4  324a32    ld      (#324a),a
14d7  2ab531    ld      hl,(#31b5)
14da  2b        dec     hl
14db  22b531    ld      (#31b5),hl
14de  7c        ld      a,h
14df  b5        or      l
14e0  cabf0b    jp      z,#0bbf
14e3  ed4b3d2d  ld      bc,(#2d3d)
14e7  210000    ld      hl,#0000
14ea  c34a15    jp      #154a
14ed  22902a    ld      (#2a90),hl
14f0  af        xor     a
14f1  324a32    ld      (#324a),a
14f4  cd6015    call    #1560
14f7  2adc2c    ld      hl,(#2cdc)
14fa  cb3c      srl     h
14fc  cb1d      rr      l
14fe  ed5bf52c  ld      de,(#2cf5)
1502  cdbb17    call    #17bb
1505  eb        ex      de,hl
1506  3aaa31    ld      a,(#31aa)
1509  a7        and     a
150a  2804      jr      z,#1510         ; (4)
150c  cb2c      sra     h
150e  cb1d      rr      l
1510  22942a    ld      (#2a94),hl
1513  ed5b0b2a  ld      de,(#2a0b)
1517  ed4b4832  ld      bc,(#3248)
151b  cdde17    call    #17de
151e  3a672a    ld      a,(#2a67)
1521  fe04      cp      #04
1523  ed4b9c2a  ld      bc,(#2a9c)
1527  2a862a    ld      hl,(#2a86)
152a  281e      jr      z,#154a         ; (30)
152c  2a942a    ld      hl,(#2a94)
152f  3a7c2a    ld      a,(#2a7c)
1532  a7        and     a
1533  280e      jr      z,#1543         ; (14)
1535  3a2e32    ld      a,(#322e)
1538  3c        inc     a
1539  fe0a      cp      #0a
153b  d2a40b    jp      nc,#0ba4
153e  322e32    ld      (#322e),a
1541  1811      jr      #1554           ; (17)
1543  322e32    ld      (#322e),a
1546  ed4b8e2a  ld      bc,(#2a8e)
154a  ed5b0b2a  ld      de,(#2a0b)
154e  cdf319    call    #19f3
1551  220b2a    ld      (#2a0b),hl
1554  2a0b2a    ld      hl,(#2a0b)
1557  cd5f19    call    #195f
155a  3a4a32    ld      a,(#324a)
155d  fe01      cp      #01
155f  c9        ret     

1560  3a0124    ld      a,(#2401)
1563  fe21      cp      #21
1565  2808      jr      z,#156f         ; (8)
1567  fe13      cp      #13
1569  3809      jr      c,#1574         ; (9)
156b  fe17      cp      #17
156d  3005      jr      nc,#1574        ; (5)
156f  3e00      ld      a,#00
1571  cd0e04    call    #040e
1574  3a532d    ld      a,(#2d53)
1577  32552d    ld      (#2d55),a
157a  3ab331    ld      a,(#31b3)
157d  32b531    ld      (#31b5),a
1580  3ab431    ld      a,(#31b4)
1583  32b631    ld      (#31b6),a
1586  c9        ret     

1587  ed5b552a  ld      de,(#2a55)
158b  210a00    ld      hl,#000a
158e  010100    ld      bc,#0001
1591  cdb215    call    #15b2
1594  da9c0b    jp      c,#0b9c
1597  ed53032a  ld      (#2a03),de
159b  ed5b5b2a  ld      de,(#2a5b)
159f  212300    ld      hl,#0023
15a2  010100    ld      bc,#0001
15a5  cdb215    call    #15b2
15a8  daa00b    jp      c,#0ba0
15ab  ed53052a  ld      (#2a05),de
15af  c3240a    jp      #0a24
15b2  37        scf     
15b3  3f        ccf     
15b4  ed52      sbc     hl,de
15b6  cb14      rl      h
15b8  3806      jr      c,#15c0         ; (6)
15ba  62        ld      h,d
15bb  6b        ld      l,e
15bc  ed42      sbc     hl,bc
15be  cb14      rl      h
15c0  c9        ret     

15c1  ed5b552a  ld      de,(#2a55)
15c5  21e803    ld      hl,#03e8
15c8  013200    ld      bc,#0032
15cb  cdb215    call    #15b2
15ce  da9c0b    jp      c,#0b9c
15d1  ed53c72d  ld      (#2dc7),de
15d5  c3240a    jp      #0a24
15d8  ed5b552a  ld      de,(#2a55)
15dc  21ff00    ld      hl,#00ff
15df  010000    ld      bc,#0000
15e2  cdb215    call    #15b2
15e5  da9c0b    jp      c,#0b9c
15e8  ed53f12c  ld      (#2cf1),de
15ec  ed5b5b2a  ld      de,(#2a5b)
15f0  219600    ld      hl,#0096
15f3  016aff    ld      bc,#ff6a
15f6  cdb215    call    #15b2
15f9  daa00b    jp      c,#0ba0
15fc  ed53f32c  ld      (#2cf3),de
1600  3af02c    ld      a,(#2cf0)
1603  fe01      cp      #01
1605  280e      jr      z,#1615         ; (14)
1607  cd6708    call    #0867
160a  3e01      ld      a,#01
160c  32f02c    ld      (#2cf0),a
160f  212003    ld      hl,#0320
1612  22782a    ld      (#2a78),hl
1615  c3240a    jp      #0a24
1618  3af02c    ld      a,(#2cf0)
161b  a7        and     a
161c  c42216    call    nz,#1622
161f  c3240a    jp      #0a24
1622  210000    ld      hl,#0000
1625  22f12c    ld      (#2cf1),hl
1628  22f32c    ld      (#2cf3),hl
162b  cd8109    call    #0981
162e  2a0b2a    ld      hl,(#2a0b)
1631  ed5b0d2a  ld      de,(#2a0d)
1635  19        add     hl,de
1636  7c        ld      a,h
1637  b5        or      l
1638  20f1      jr      nz,#162b        ; (-15)
163a  af        xor     a
163b  32f02c    ld      (#2cf0),a
163e  cd7013    call    #1370
1641  c9        ret     

1642  3af02c    ld      a,(#2cf0)
1645  a7        and     a
1646  c8        ret     z

1647  cd2216    call    #1622
164a  c9        ret     

164b  2a552a    ld      hl,(#2a55)
164e  ed5b5b2a  ld      de,(#2a5b)
1652  cdc318    call    #18c3
1655  22f72c    ld      (#2cf7),hl
1658  ed53fb2c  ld      (#2cfb),de
165c  eb        ex      de,hl
165d  ed5b5d2a  ld      de,(#2a5d)
1661  37        scf     
1662  3f        ccf     
1663  ed52      sbc     hl,de
1665  cdc417    call    #17c4
1668  22f92c    ld      (#2cf9),hl
166b  c3240a    jp      #0a24
166e  c3be08    jp      #08be
1671  af        xor     a
1672  324b32    ld      (#324b),a
1675  210000    ld      hl,#0000
1678  ed5b702a  ld      de,(#2a70)
167c  22702a    ld      (#2a70),hl
167f  2a0f2a    ld      hl,(#2a0f)
1682  37        scf     
1683  3f        ccf     
1684  ed52      sbc     hl,de
1686  220f2a    ld      (#2a0f),hl
1689  eb        ex      de,hl
168a  010000    ld      bc,#0000
168d  cdd31a    call    #1ad3
1690  2a112a    ld      hl,(#2a11)
1693  ed5b722a  ld      de,(#2a72)
1697  37        scf     
1698  3f        ccf     
1699  ed52      sbc     hl,de
169b  22112a    ld      (#2a11),hl
169e  eb        ex      de,hl
169f  210000    ld      hl,#0000
16a2  22722a    ld      (#2a72),hl
16a5  010100    ld      bc,#0001
16a8  cdd31a    call    #1ad3
16ab  3a062d    ld      a,(#2d06)
16ae  a7        and     a
16af  c22b17    jp      nz,#172b
16b2  3e45      ld      a,#45
16b4  d3f1      out     (#f1),a
16b6  2a252a    ld      hl,(#2a25)
16b9  7d        ld      a,l
16ba  cb7f      bit     7,a
16bc  2802      jr      z,#16c0         ; (2)
16be  ed44      neg     
16c0  fe78      cp      #78
16c2  3eff      ld      a,#ff
16c4  3001      jr      nc,#16c7        ; (1)
16c6  af        xor     a
16c7  327c2a    ld      (#2a7c),a
16ca  cd0c1a    call    #1a0c
16cd  d3f1      out     (#f1),a
16cf  cb3f      srl     a
16d1  32212a    ld      (#2a21),a
16d4  3a3432    ld      a,(#3234)
16d7  ad        xor     l
16d8  cb7f      bit     7,a
16da  2805      jr      z,#16e1         ; (5)
16dc  3200a0    ld      (#a000),a
16df  1803      jr      #16e4           ; (3)
16e1  3208a0    ld      (#a008),a
16e4  3e45      ld      a,#45
16e6  d3f0      out     (#f0),a
16e8  2a272a    ld      hl,(#2a27)
16eb  7d        ld      a,l
16ec  cb7f      bit     7,a
16ee  2802      jr      z,#16f2         ; (2)
16f0  ed44      neg     
16f2  fe78      cp      #78
16f4  3eff      ld      a,#ff
16f6  3001      jr      nc,#16f9        ; (1)
16f8  af        xor     a
16f9  327d2a    ld      (#2a7d),a
16fc  cd0c1a    call    #1a0c
16ff  d3f0      out     (#f0),a
1701  cb3f      srl     a
1703  32232a    ld      (#2a23),a
1706  cb7d      bit     7,l
1708  2805      jr      z,#170f         ; (5)
170a  320fa0    ld      (#a00f),a
170d  1803      jr      #1712           ; (3)
170f  3207a0    ld      (#a007),a
1712  3a6c2a    ld      a,(#2a6c)
1715  a7        and     a
1716  2008      jr      nz,#1720        ; (8)
1718  325232    ld      (#3252),a
171b  3201a0    ld      (#a001),a
171e  180b      jr      #172b           ; (11)
1720  215232    ld      hl,#3252
1723  34        inc     (hl)
1724  cb46      bit     0,(hl)
1726  28f3      jr      z,#171b         ; (-13)
1728  3209a0    ld      (#a009),a
172b  fde1      pop     iy
172d  dde1      pop     ix
172f  e1        pop     hl
1730  d1        pop     de
1731  c1        pop     bc
1732  f1        pop     af
1733  fb        ei      
1734  ed4d      reti    

1736  eb        ex      de,hl
1737  ed5b5d2a  ld      de,(#2a5d)
173b  cdd117    call    #17d1
173e  37        scf     
173f  3f        ccf     
1740  ed52      sbc     hl,de
1742  cdc417    call    #17c4
1745  22c731    ld      (#31c7),hl
1748  ed5b7e2a  ld      de,(#2a7e)
174c  cb7c      bit     7,h
174e  c4a117    call    nz,#17a1
1751  19        add     hl,de
1752  e5        push    hl
1753  cd9017    call    #1790
1756  ed5bc531  ld      de,(#31c5)
175a  cd9e17    call    #179e
175d  37        scf     
175e  3f        ccf     
175f  ed52      sbc     hl,de
1761  e1        pop     hl
1762  3806      jr      c,#176a         ; (6)
1764  cb7c      bit     7,h
1766  c4a117    call    nz,#17a1
1769  eb        ex      de,hl
176a  cdd210    call    #10d2
176d  3805      jr      c,#1774         ; (5)
176f  cd4919    call    #1949
1772  37        scf     
1773  3f        ccf     
1774  c9        ret     

1775  ed5bc131  ld      de,(#31c1)
1779  cd9e17    call    #179e
177c  ed53902a  ld      (#2a90),de
1780  2a762a    ld      hl,(#2a76)
1783  ed5b0d2a  ld      de,(#2a0d)
1787  cd9e17    call    #179e
178a  ed4b052a  ld      bc,(#2a05)
178e  184e      jr      #17de           ; (78)
1790  cb7c      bit     7,h
1792  c8        ret     z

1793  d5        push    de
1794  eb        ex      de,hl
1795  210000    ld      hl,#0000
1798  37        scf     
1799  3f        ccf     
179a  ed52      sbc     hl,de
179c  d1        pop     de
179d  c9        ret     

179e  cb7a      bit     7,d
17a0  c8        ret     z

17a1  e5        push    hl
17a2  210000    ld      hl,#0000
17a5  37        scf     
17a6  3f        ccf     
17a7  ed52      sbc     hl,de
17a9  eb        ex      de,hl
17aa  e1        pop     hl
17ab  c9        ret     

17ac  cb78      bit     7,b
17ae  c8        ret     z

17af  e5        push    hl
17b0  210000    ld      hl,#0000
17b3  37        scf     
17b4  3f        ccf     
17b5  ed42      sbc     hl,bc
17b7  44        ld      b,h
17b8  4d        ld      c,l
17b9  e1        pop     hl
17ba  c9        ret     

17bb  e5        push    hl
17bc  37        scf     
17bd  3f        ccf     
17be  ed52      sbc     hl,de
17c0  e1        pop     hl
17c1  d0        ret     nc

17c2  eb        ex      de,hl
17c3  c9        ret     

17c4  f5        push    af
17c5  7c        ld      a,h
17c6  e603      and     #03
17c8  cb4f      bit     1,a
17ca  2802      jr      z,#17ce         ; (2)
17cc  f6fc      or      #fc
17ce  67        ld      h,a
17cf  f1        pop     af
17d0  c9        ret     

17d1  f5        push    af
17d2  7a        ld      a,d
17d3  e603      and     #03
17d5  cb4f      bit     1,a
17d7  2802      jr      z,#17db         ; (2)
17d9  f6fc      or      #fc
17db  57        ld      d,a
17dc  f1        pop     af
17dd  c9        ret     

17de  ed438e2a  ld      (#2a8e),bc
17e2  d5        push    de
17e3  eb        ex      de,hl
17e4  210000    ld      hl,#0000
17e7  010a00    ld      bc,#000a
17ea  cdcc1c    call    #1ccc
17ed  ed538a2a  ld      (#2a8a),de
17f1  d1        pop     de
17f2  210000    ld      hl,#0000
17f5  010a00    ld      bc,#000a
17f8  cdcc1c    call    #1ccc
17fb  ed53882a  ld      (#2a88),de
17ff  ed4b8e2a  ld      bc,(#2a8e)
1803  cb28      sra     b
1805  cb19      rr      c
1807  2a8c2a    ld      hl,(#2a8c)
180a  ed5b882a  ld      de,(#2a88)
180e  cda718    call    #18a7
1811  dde5      push    ix
1813  2a882a    ld      hl,(#2a88)
1816  cd8618    call    #1886
1819  dde5      push    ix
181b  d1        pop     de
181c  2a902a    ld      hl,(#2a90)
181f  37        scf     
1820  3f        ccf     
1821  ed52      sbc     hl,de
1823  cb7c      bit     7,h
1825  c1        pop     bc
1826  2858      jr      z,#1880         ; (88)
1828  cb78      bit     7,b
182a  200d      jr      nz,#1839        ; (13)
182c  2a8e2a    ld      hl,(#2a8e)
182f  229c2a    ld      (#2a9c),hl
1832  210000    ld      hl,#0000
1835  3e03      ld      a,#03
1837  1849      jr      #1882           ; (73)
1839  ed4b8c2a  ld      bc,(#2a8c)
183d  ed5b8c2a  ld      de,(#2a8c)
1841  cd781c    call    #1c78
1844  dde5      push    ix
1846  ed4b882a  ld      bc,(#2a88)
184a  ed5b882a  ld      de,(#2a88)
184e  cd781c    call    #1c78
1851  dde5      push    ix
1853  e1        pop     hl
1854  d1        pop     de
1855  37        scf     
1856  3f        ccf     
1857  ed52      sbc     hl,de
1859  eb        ex      de,hl
185a  cb7a      bit     7,d
185c  010500    ld      bc,#0005
185f  cd781c    call    #1c78
1862  dde5      push    ix
1864  d1        pop     de
1865  210000    ld      hl,#0000
1868  ed4b902a  ld      bc,(#2a90)
186c  cdcc1c    call    #1ccc
186f  2a3d2d    ld      hl,(#2d3d)
1872  cdbb17    call    #17bb
1875  ed539c2a  ld      (#2a9c),de
1879  210000    ld      hl,#0000
187c  3e04      ld      a,#04
187e  1802      jr      #1882           ; (2)
1880  3e02      ld      a,#02
1882  32672a    ld      (#2a67),a
1885  c9        ret     

1886  c5        push    bc
1887  dde5      push    ix
1889  c1        pop     bc
188a  cb28      sra     b
188c  cb19      rr      c
188e  09        add     hl,bc
188f  c1        pop     bc
1890  e5        push    hl
1891  c5        push    bc
1892  010a00    ld      bc,#000a
1895  cd781c    call    #1c78
1898  dde5      push    ix
189a  d1        pop     de
189b  c1        pop     bc
189c  210000    ld      hl,#0000
189f  cdcc1c    call    #1ccc
18a2  c1        pop     bc
18a3  cd781c    call    #1c78
18a6  c9        ret     

18a7  37        scf     
18a8  3f        ccf     
18a9  ed52      sbc     hl,de
18ab  e5        push    hl
18ac  dde1      pop     ix
18ae  eb        ex      de,hl
18af  c5        push    bc
18b0  e1        pop     hl
18b1  cb7a      bit     7,d
18b3  2806      jr      z,#18bb         ; (6)
18b5  cda117    call    #17a1
18b8  cd9317    call    #1793
18bb  c9        ret     

18bc  2a452d    ld      hl,(#2d45)
18bf  ed5b472d  ld      de,(#2d47)
18c3  dd2a512a  ld      ix,(#2a51)
18c7  fd2a572a  ld      iy,(#2a57)
18cb  e5        push    hl
18cc  010000    ld      bc,#0000
18cf  eb        ex      de,hl
18d0  fde5      push    iy
18d2  d1        pop     de
18d3  37        scf     
18d4  3f        ccf     
18d5  ed52      sbc     hl,de
18d7  ec4619    call    pe,#1946
18da  eb        ex      de,hl
18db  cb7a      bit     7,d
18dd  2805      jr      z,#18e4         ; (5)
18df  cda117    call    #17a1
18e2  cbc0      set     0,b
18e4  e1        pop     hl
18e5  d5        push    de
18e6  dde5      push    ix
18e8  d1        pop     de
18e9  37        scf     
18ea  3f        ccf     
18eb  ed52      sbc     hl,de
18ed  ec4619    call    pe,#1946
18f0  cb7c      bit     7,h
18f2  2807      jr      z,#18fb         ; (7)
18f4  cd9317    call    #1793
18f7  3e03      ld      a,#03
18f9  a8        xor     b
18fa  47        ld      b,a
18fb  d1        pop     de
18fc  c5        push    bc
18fd  e5        push    hl
18fe  d5        push    de
18ff  c1        pop     bc
1900  cd781c    call    #1c78
1903  d1        pop     de
1904  e5        push    hl
1905  dde5      push    ix
1907  d5        push    de
1908  c1        pop     bc
1909  c5        push    bc
190a  cd781c    call    #1c78
190d  c1        pop     bc
190e  dde5      push    ix
1910  fde1      pop     iy
1912  d1        pop     de
1913  fd19      add     iy,de
1915  d1        pop     de
1916  ed5a      adc     hl,de
1918  c5        push    bc
1919  cdf31c    call    #1cf3
191c  e1        pop     hl
191d  110000    ld      de,#0000
1920  e5        push    hl
1921  37        scf     
1922  3f        ccf     
1923  ed42      sbc     hl,bc
1925  e1        pop     hl
1926  c5        push    bc
1927  2005      jr      nz,#192e        ; (5)
1929  21ffff    ld      hl,#ffff
192c  1804      jr      #1932           ; (4)
192e  cdcc1c    call    #1ccc
1931  eb        ex      de,hl
1932  d1        pop     de
1933  c1        pop     bc
1934  c5        push    bc
1935  d5        push    de
1936  cd9f1d    call    #1d9f
1939  cdd117    call    #17d1
193c  e1        pop     hl
193d  c1        pop     bc
193e  cb7c      bit     7,h
1940  c44619    call    nz,#1946
1943  cb41      bit     0,c
1945  c9        ret     

1946  cbc1      set     0,c
1948  c9        ret     

1949  220d2a    ld      (#2a0d),hl
194c  ed4b112a  ld      bc,(#2a11)
1950  ed5b0932  ld      de,(#3209)
1954  cda719    call    #19a7
1957  22112a    ld      (#2a11),hl
195a  ed530932  ld      (#3209),de
195e  c9        ret     

195f  220b2a    ld      (#2a0b),hl
1962  ed4b0f2a  ld      bc,(#2a0f)
1966  ed5b0b32  ld      de,(#320b)
196a  cda719    call    #19a7
196d  220f2a    ld      (#2a0f),hl
1970  ed530b32  ld      (#320b),de
1974  ed43d92d  ld      (#2dd9),bc
1978  c9        ret     

1979  ed4b572d  ld      bc,(#2d57)
197d  ed5b5332  ld      de,(#3253)
1981  cda719    call    #19a7
1984  22572d    ld      (#2d57),hl
1987  ed535332  ld      (#3253),de
198b  c9        ret     

198c  cd9317    call    #1793
198f  ed4b782a  ld      bc,(#2a78)
1993  ed5b7a2a  ld      de,(#2a7a)
1997  cda719    call    #19a7
199a  22782a    ld      (#2a78),hl
199d  ed537a2a  ld      (#2a7a),de
19a1  ed5b292a  ld      de,(#2a29)
19a5  19        add     hl,de
19a6  c9        ret     

19a7  3a062d    ld      a,(#2d06)
19aa  a7        and     a
19ab  280a      jr      z,#19b7         ; (10)
19ad  af        xor     a
19ae  32062d    ld      (#2d06),a
19b1  320da0    ld      (#a00d),a
19b4  cd7f08    call    #087f
19b7  c5        push    bc
19b8  d5        push    de
19b9  eb        ex      de,hl
19ba  019919    ld      bc,#1999
19bd  cd4e1c    call    #1c4e
19c0  44        ld      b,h
19c1  4d        ld      c,l
19c2  e1        pop     hl
19c3  19        add     hl,de
19c4  eb        ex      de,hl
19c5  e1        pop     hl
19c6  ed4a      adc     hl,bc
19c8  c9        ret     

19c9  cdd210    call    #10d2
19cc  ed4b0b2a  ld      bc,(#2a0b)
19d0  cdac17    call    #17ac
19d3  11a300    ld      de,#00a3
19d6  cd781c    call    #1c78
19d9  dde5      push    ix
19db  d1        pop     de
19dc  ed4bc72d  ld      bc,(#2dc7)
19e0  cdcc1c    call    #1ccc
19e3  3ac231    ld      a,(#31c2)
19e6  cb7f      bit     7,a
19e8  c4a117    call    nz,#17a1
19eb  ed53bf31  ld      (#31bf),de
19ef  cd8910    call    #1089
19f2  c9        ret     

19f3  37        scf     
19f4  3f        ccf     
19f5  ed52      sbc     hl,de
19f7  cb7c      bit     7,h
19f9  c4af17    call    nz,#17af
19fc  e5        push    hl
19fd  37        scf     
19fe  3f        ccf     
19ff  ed42      sbc     hl,bc
1a01  7c        ld      a,h
1a02  a8        xor     b
1a03  cb7f      bit     7,a
1a05  e1        pop     hl
1a06  2002      jr      nz,#1a0a        ; (2)
1a08  60        ld      h,b
1a09  69        ld      l,c
1a0a  19        add     hl,de
1a0b  c9        ret     

1a0c  7d        ld      a,l
1a0d  cb7f      bit     7,a
1a0f  2802      jr      z,#1a13         ; (2)
1a11  ed44      neg     
1a13  cb27      sla     a
1a15  a7        and     a
1a16  2001      jr      nz,#1a19        ; (1)
1a18  3c        inc     a
1a19  c9        ret     

1a1a  08        ex      af,af'
1a1b  d9        exx     
1a1c  dbe1      in      a,(#e1)
1a1e  5f        ld      e,a
1a1f  dbe2      in      a,(#e2)
1a21  47        ld      b,a
1a22  e603      and     #03
1a24  57        ld      d,a
1a25  dbe1      in      a,(#e1)
1a27  bb        cp      e
1a28  20f2      jr      nz,#1a1c        ; (-14)
1a2a  c5        push    bc
1a2b  cb10      rl      b
1a2d  3005      jr      nc,#1a34        ; (5)
1a2f  210002    ld      hl,#0200
1a32  19        add     hl,de
1a33  eb        ex      de,hl
1a34  2a742a    ld      hl,(#2a74)
1a37  19        add     hl,de
1a38  ed5b122d  ld      de,(#2d12)
1a3c  19        add     hl,de
1a3d  7c        ld      a,h
1a3e  e603      and     #03
1a40  67        ld      h,a
1a41  eb        ex      de,hl
1a42  d5        push    de
1a43  21c22a    ld      hl,#2ac2
1a46  cd821d    call    #1d82
1a49  010000    ld      bc,#0000
1a4c  cb4a      bit     1,d
1a4e  eb        ex      de,hl
1a4f  2806      jr      z,#1a57         ; (6)
1a51  cda117    call    #17a1
1a54  3001      jr      nc,#1a57        ; (1)
1a56  0b        dec     bc
1a57  2aa82a    ld      hl,(#2aa8)
1a5a  19        add     hl,de
1a5b  22a82a    ld      (#2aa8),hl
1a5e  2a512a    ld      hl,(#2a51)
1a61  ed4a      adc     hl,bc
1a63  22512a    ld      (#2a51),hl
1a66  2aaa2a    ld      hl,(#2aaa)
1a69  19        add     hl,de
1a6a  22aa2a    ld      (#2aaa),hl
1a6d  2a532a    ld      hl,(#2a53)
1a70  ed4a      adc     hl,bc
1a72  22532a    ld      (#2a53),hl
1a75  d1        pop     de
1a76  21c22a    ld      hl,#2ac2
1a79  cd701d    call    #1d70
1a7c  010000    ld      bc,#0000
1a7f  7a        ld      a,d
1a80  eb        ex      de,hl
1a81  a7        and     a
1a82  280a      jr      z,#1a8e         ; (10)
1a84  fe03      cp      #03
1a86  2806      jr      z,#1a8e         ; (6)
1a88  cda117    call    #17a1
1a8b  3001      jr      nc,#1a8e        ; (1)
1a8d  0b        dec     bc
1a8e  2aac2a    ld      hl,(#2aac)
1a91  19        add     hl,de
1a92  22ac2a    ld      (#2aac),hl
1a95  2a572a    ld      hl,(#2a57)
1a98  ed4a      adc     hl,bc
1a9a  22572a    ld      (#2a57),hl
1a9d  2aae2a    ld      hl,(#2aae)
1aa0  19        add     hl,de
1aa1  22ae2a    ld      (#2aae),hl
1aa4  2a592a    ld      hl,(#2a59)
1aa7  ed4a      adc     hl,bc
1aa9  22592a    ld      (#2a59),hl
1aac  c1        pop     bc
1aad  ed5b682a  ld      de,(#2a68)
1ab1  3a3432    ld      a,(#3234)
1ab4  a8        xor     b
1ab5  cb7f      bit     7,a
1ab7  010000    ld      bc,#0000
1aba  2804      jr      z,#1ac0         ; (4)
1abc  0b        dec     bc
1abd  cda117    call    #17a1
1ac0  2aa62a    ld      hl,(#2aa6)
1ac3  19        add     hl,de
1ac4  22a62a    ld      (#2aa6),hl
1ac7  2a702a    ld      hl,(#2a70)
1aca  ed4a      adc     hl,bc
1acc  22702a    ld      (#2a70),hl
1acf  d9        exx     
1ad0  08        ex      af,af'
1ad1  ed45      retn    

1ad3  cb21      sla     c
1ad5  cb10      rl      b
1ad7  dd21292a  ld      ix,#2a29
1adb  dd09      add     ix,bc
1add  dd7300    ld      (ix+#00),e
1ae0  dd7201    ld      (ix+#01),d
1ae3  dd214d2a  ld      ix,#2a4d
1ae7  dd09      add     ix,bc
1ae9  c5        push    bc
1aea  dd4e00    ld      c,(ix+#00)
1aed  dd4601    ld      b,(ix+#01)
1af0  cd2f1c    call    #1c2f
1af3  ed535932  ld      (#3259),de
1af7  c1        pop     bc
1af8  dd213d2a  ld      ix,#2a3d
1afc  dd09      add     ix,bc
1afe  dd7300    ld      (ix+#00),e
1b01  dd7201    ld      (ix+#01),d
1b04  dd210000  ld      ix,#0000
1b08  dd225b32  ld      (#325b),ix
1b0c  dd225d32  ld      (#325d),ix
1b10  dd21412a  ld      ix,#2a41
1b14  dd09      add     ix,bc
1b16  c5        push    bc
1b17  dd4e00    ld      c,(ix+#00)
1b1a  dd4601    ld      b,(ix+#01)
1b1d  cd4e1c    call    #1c4e
1b20  c1        pop     bc
1b21  dd212d2a  ld      ix,#2a2d
1b25  dd09      add     ix,bc
1b27  dd7500    ld      (ix+#00),l
1b2a  dd7401    ld      (ix+#01),h
1b2d  dd215b32  ld      ix,#325b
1b31  cd021c    call    #1c02
1b34  2a5932    ld      hl,(#3259)
1b37  dd215532  ld      ix,#3255
1b3b  dd09      add     ix,bc
1b3d  dd5e00    ld      e,(ix+#00)
1b40  dd5601    ld      d,(ix+#01)
1b43  dd7500    ld      (ix+#00),l
1b46  dd7401    ld      (ix+#01),h
1b49  37        scf     
1b4a  3f        ccf     
1b4b  ed52      sbc     hl,de
1b4d  eb        ex      de,hl
1b4e  dd21492a  ld      ix,#2a49
1b52  dd09      add     ix,bc
1b54  c5        push    bc
1b55  dd4e00    ld      c,(ix+#00)
1b58  dd4601    ld      b,(ix+#01)
1b5b  cd2f1c    call    #1c2f
1b5e  6a        ld      l,d
1b5f  c1        pop     bc
1b60  dd214c32  ld      ix,#324c
1b64  dd09      add     ix,bc
1b66  dd5e00    ld      e,(ix+#00)
1b69  dd5601    ld      d,(ix+#01)
1b6c  19        add     hl,de
1b6d  cb2c      sra     h
1b6f  cb1d      rr      l
1b71  dd7500    ld      (ix+#00),l
1b74  dd7401    ld      (ix+#01),h
1b77  dd21392a  ld      ix,#2a39
1b7b  dd09      add     ix,bc
1b7d  dd7500    ld      (ix+#00),l
1b80  dd7401    ld      (ix+#01),h
1b83  dd215b32  ld      ix,#325b
1b87  cd021c    call    #1c02
1b8a  dd210b2a  ld      ix,#2a0b
1b8e  dd09      add     ix,bc
1b90  dd5e00    ld      e,(ix+#00)
1b93  dd5601    ld      d,(ix+#01)
1b96  dd21452a  ld      ix,#2a45
1b9a  dd09      add     ix,bc
1b9c  c5        push    bc
1b9d  dd4e00    ld      c,(ix+#00)
1ba0  dd4601    ld      b,(ix+#01)
1ba3  cd4e1c    call    #1c4e
1ba6  65        ld      h,l
1ba7  6a        ld      l,d
1ba8  c1        pop     bc
1ba9  dd21312a  ld      ix,#2a31
1bad  dd09      add     ix,bc
1baf  dd09      add     ix,bc
1bb1  dd7500    ld      (ix+#00),l
1bb4  dd7401    ld      (ix+#01),h
1bb7  dd215b32  ld      ix,#325b
1bbb  cd021c    call    #1c02
1bbe  ed5b5b32  ld      de,(#325b)
1bc2  cd321c    call    #1c32
1bc5  eb        ex      de,hl
1bc6  dd212d1c  ld      ix,#1c2d
1bca  dd5e00    ld      e,(ix+#00)
1bcd  dd5601    ld      d,(ix+#01)
1bd0  e5        push    hl
1bd1  37        scf     
1bd2  3f        ccf     
1bd3  ed52      sbc     hl,de
1bd5  cb7c      bit     7,h
1bd7  e1        pop     hl
1bd8  3eff      ld      a,#ff
1bda  2018      jr      nz,#1bf4        ; (24)
1bdc  dd212b1c  ld      ix,#1c2b
1be0  dd5e00    ld      e,(ix+#00)
1be3  dd5601    ld      d,(ix+#01)
1be6  e5        push    hl
1be7  37        scf     
1be8  3f        ccf     
1be9  ed52      sbc     hl,de
1beb  cb7c      bit     7,h
1bed  e1        pop     hl
1bee  3e00      ld      a,#00
1bf0  2003      jr      nz,#1bf5        ; (3)
1bf2  3e01      ld      a,#01
1bf4  eb        ex      de,hl
1bf5  dd21252a  ld      ix,#2a25
1bf9  dd09      add     ix,bc
1bfb  dd7500    ld      (ix+#00),l
1bfe  dd7401    ld      (ix+#01),h
1c01  c9        ret     

1c02  c5        push    bc
1c03  dd4e00    ld      c,(ix+#00)
1c06  dd4601    ld      b,(ix+#01)
1c09  110000    ld      de,#0000
1c0c  cb7c      bit     7,h
1c0e  2803      jr      z,#1c13         ; (3)
1c10  11ffff    ld      de,#ffff
1c13  09        add     hl,bc
1c14  dd7500    ld      (ix+#00),l
1c17  dd7401    ld      (ix+#01),h
1c1a  dd4e02    ld      c,(ix+#02)
1c1d  dd4603    ld      b,(ix+#03)
1c20  eb        ex      de,hl
1c21  ed4a      adc     hl,bc
1c23  dd7502    ld      (ix+#02),l
1c26  dd7403    ld      (ix+#03),h
1c29  c1        pop     bc
1c2a  c9        ret     

1c2b  7f        ld      a,a
1c2c  00        nop     
1c2d  81        add     a,c
1c2e  ff        rst     #38
1c2f  cd4e1c    call    #1c4e
1c32  cb7a      bit     7,d
1c34  2007      jr      nz,#1c3d        ; (7)
1c36  7d        ld      a,l
1c37  b4        or      h
1c38  2813      jr      z,#1c4d         ; (19)
1c3a  c3431c    jp      #1c43
1c3d  7d        ld      a,l
1c3e  a4        and     h
1c3f  feff      cp      #ff
1c41  280a      jr      z,#1c4d         ; (10)
1c43  11ff7f    ld      de,#7fff
1c46  cb7c      bit     7,h
1c48  2803      jr      z,#1c4d         ; (3)
1c4a  110180    ld      de,#8001
1c4d  c9        ret     

1c4e  af        xor     a
1c4f  cb78      bit     7,b
1c51  2805      jr      z,#1c58         ; (5)
1c53  cdaf17    call    #17af
1c56  ee80      xor     #80
1c58  cb7a      bit     7,d
1c5a  2805      jr      z,#1c61         ; (5)
1c5c  cda117    call    #17a1
1c5f  ee80      xor     #80
1c61  f5        push    af
1c62  cd781c    call    #1c78
1c65  f1        pop     af
1c66  dde5      push    ix
1c68  d1        pop     de
1c69  cb7f      bit     7,a
1c6b  280a      jr      z,#1c77         ; (10)
1c6d  cda117    call    #17a1
1c70  e5        push    hl
1c71  c1        pop     bc
1c72  210000    ld      hl,#0000
1c75  ed42      sbc     hl,bc
1c77  c9        ret     

1c78  fde5      push    iy
1c7a  d5        push    de
1c7b  fde1      pop     iy
1c7d  110000    ld      de,#0000
1c80  79        ld      a,c
1c81  48        ld      c,b
1c82  0610      ld      b,#10
1c84  210000    ld      hl,#0000
1c87  dd210000  ld      ix,#0000
1c8b  cb39      srl     c
1c8d  1f        rra     
1c8e  3009      jr      nc,#1c99        ; (9)
1c90  c5        push    bc
1c91  fde5      push    iy
1c93  c1        pop     bc
1c94  dd09      add     ix,bc
1c96  c1        pop     bc
1c97  ed5a      adc     hl,de
1c99  fd29      add     iy,iy
1c9b  eb        ex      de,hl
1c9c  ed6a      adc     hl,hl
1c9e  eb        ex      de,hl
1c9f  10ea      djnz    #1c8b           ; (-22)
1ca1  fde1      pop     iy
1ca3  c9        ret     

1ca4  af        xor     a
1ca5  c5        push    bc
1ca6  ac        xor     h
1ca7  cb7c      bit     7,h
1ca9  280f      jr      z,#1cba         ; (15)
1cab  e5        push    hl
1cac  210000    ld      hl,#0000
1caf  37        scf     
1cb0  3f        ccf     
1cb1  ed52      sbc     hl,de
1cb3  eb        ex      de,hl
1cb4  210000    ld      hl,#0000
1cb7  c1        pop     bc
1cb8  ed42      sbc     hl,bc
1cba  c1        pop     bc
1cbb  a8        xor     b
1cbc  cb78      bit     7,b
1cbe  c4af17    call    nz,#17af
1cc1  f5        push    af
1cc2  cdcc1c    call    #1ccc
1cc5  f1        pop     af
1cc6  cb7f      bit     7,a
1cc8  c4a117    call    nz,#17a1
1ccb  c9        ret     

1ccc  3e11      ld      a,#11
1cce  cb78      bit     7,b
1cd0  280c      jr      z,#1cde         ; (12)
1cd2  cb38      srl     b
1cd4  cb19      rr      c
1cd6  cb3c      srl     h
1cd8  cb1d      rr      l
1cda  cb1a      rr      d
1cdc  cb1b      rr      e
1cde  37        scf     
1cdf  3f        ccf     
1ce0  ed42      sbc     hl,bc
1ce2  13        inc     de
1ce3  3002      jr      nc,#1ce7        ; (2)
1ce5  09        add     hl,bc
1ce6  1b        dec     de
1ce7  3d        dec     a
1ce8  2808      jr      z,#1cf2         ; (8)
1cea  eb        ex      de,hl
1ceb  29        add     hl,hl
1cec  eb        ex      de,hl
1ced  ed6a      adc     hl,hl
1cef  c3de1c    jp      #1cde
1cf2  c9        ret     

1cf3  dde5      push    ix
1cf5  d5        push    de
1cf6  010080    ld      bc,#8000
1cf9  e5        push    hl
1cfa  fde5      push    iy
1cfc  fd29      add     iy,iy
1cfe  ed6a      adc     hl,hl
1d00  380d      jr      c,#1d0f         ; (13)
1d02  fd29      add     iy,iy
1d04  ed6a      adc     hl,hl
1d06  3807      jr      c,#1d0f         ; (7)
1d08  cb38      srl     b
1d0a  cb19      rr      c
1d0c  30ee      jr      nc,#1cfc        ; (-18)
1d0e  3f        ccf     
1d0f  fde1      pop     iy
1d11  e1        pop     hl
1d12  d2511d    jp      nc,#1d51
1d15  dd210000  ld      ix,#0000
1d19  e5        push    hl
1d1a  fde5      push    iy
1d1c  dd09      add     ix,bc
1d1e  dde5      push    ix
1d20  c5        push    bc
1d21  dde5      push    ix
1d23  dde5      push    ix
1d25  c1        pop     bc
1d26  d1        pop     de
1d27  e5        push    hl
1d28  fde5      push    iy
1d2a  cd781c    call    #1c78
1d2d  dde5      push    ix
1d2f  d1        pop     de
1d30  e5        push    hl
1d31  c1        pop     bc
1d32  e1        pop     hl
1d33  37        scf     
1d34  3f        ccf     
1d35  ed52      sbc     hl,de
1d37  e1        pop     hl
1d38  ed42      sbc     hl,bc
1d3a  c1        pop     bc
1d3b  e1        pop     hl
1d3c  3003      jr      nc,#1d41        ; (3)
1d3e  3f        ccf     
1d3f  ed42      sbc     hl,bc
1d41  e5        push    hl
1d42  dde1      pop     ix
1d44  fde1      pop     iy
1d46  e1        pop     hl
1d47  cb38      srl     b
1d49  cb19      rr      c
1d4b  d2191d    jp      nc,#1d19
1d4e  dde5      push    ix
1d50  c1        pop     bc
1d51  d1        pop     de
1d52  dde1      pop     ix
1d54  c9        ret     

1d55  d5        push    de
1d56  cd6d1d    call    #1d6d
1d59  e5        push    hl
1d5a  cd7f1d    call    #1d7f
1d5d  110000    ld      de,#0000
1d60  cb3c      srl     h
1d62  cb1d      rr      l
1d64  cb1a      rr      d
1d66  c1        pop     bc
1d67  cdcc1c    call    #1ccc
1d6a  eb        ex      de,hl
1d6b  d1        pop     de
1d6c  c9        ret     

1d6d  21fb1d    ld      hl,#1dfb
1d70  d5        push    de
1d71  e5        push    hl
1d72  210001    ld      hl,#0100
1d75  19        add     hl,de
1d76  cb94      res     2,h
1d78  eb        ex      de,hl
1d79  e1        pop     hl
1d7a  cd821d    call    #1d82
1d7d  d1        pop     de
1d7e  c9        ret     

1d7f  21fb1d    ld      hl,#1dfb
1d82  d5        push    de
1d83  cb42      bit     0,d
1d85  1600      ld      d,#00
1d87  280e      jr      z,#1d97         ; (14)
1d89  d5        push    de
1d8a  110002    ld      de,#0200
1d8d  19        add     hl,de
1d8e  d1        pop     de
1d8f  37        scf     
1d90  3f        ccf     
1d91  ed52      sbc     hl,de
1d93  ed52      sbc     hl,de
1d95  1802      jr      #1d99           ; (2)
1d97  19        add     hl,de
1d98  19        add     hl,de
1d99  5e        ld      e,(hl)
1d9a  23        inc     hl
1d9b  56        ld      d,(hl)
1d9c  eb        ex      de,hl
1d9d  d1        pop     de
1d9e  c9        ret     

1d9f  c5        push    bc
1da0  0680      ld      b,#80
1da2  110000    ld      de,#0000
1da5  78        ld      a,b
1da6  b3        or      e
1da7  5f        ld      e,a
1da8  e5        push    hl
1da9  cde61d    call    #1de6
1dac  e1        pop     hl
1dad  3003      jr      nc,#1db2        ; (3)
1daf  78        ld      a,b
1db0  ab        xor     e
1db1  5f        ld      e,a
1db2  cb38      srl     b
1db4  30ef      jr      nc,#1da5        ; (-17)
1db6  e5        push    hl
1db7  cde61d    call    #1de6
1dba  44        ld      b,h
1dbb  4d        ld      c,l
1dbc  e1        pop     hl
1dbd  13        inc     de
1dbe  cb42      bit     0,d
1dc0  2008      jr      nz,#1dca        ; (8)
1dc2  cde61d    call    #1de6
1dc5  09        add     hl,bc
1dc6  cb7c      bit     7,h
1dc8  2801      jr      z,#1dcb         ; (1)
1dca  1b        dec     de
1dcb  c1        pop     bc
1dcc  cb40      bit     0,b
1dce  2808      jr      z,#1dd8         ; (8)
1dd0  210002    ld      hl,#0200
1dd3  37        scf     
1dd4  3f        ccf     
1dd5  ed52      sbc     hl,de
1dd7  eb        ex      de,hl
1dd8  cb48      bit     1,b
1dda  2807      jr      z,#1de3         ; (7)
1ddc  210002    ld      hl,#0200
1ddf  37        scf     
1de0  3f        ccf     
1de1  19        add     hl,de
1de2  eb        ex      de,hl
1de3  cb92      res     2,d
1de5  c9        ret     

1de6  dd21fb1d  ld      ix,#1dfb
1dea  dd19      add     ix,de
1dec  dd19      add     ix,de
1dee  d5        push    de
1def  dd5e00    ld      e,(ix+#00)
1df2  dd5601    ld      d,(ix+#01)
1df5  37        scf     
1df6  3f        ccf     
1df7  ed52      sbc     hl,de
1df9  d1        pop     de
1dfa  c9        ret     

1dfb  00        nop     
1dfc  00        nop     
1dfd  92        sub     d
1dfe  012403    ld      bc,#0324
1e01  b6        or      (hl)
1e02  04        inc     b
1e03  48        ld      c,b
1e04  06da      ld      b,#da
1e06  07        rlca    
1e07  6c        ld      l,h
1e08  09        add     hl,bc
1e09  fe0a      cp      #0a
1e0b  8f        adc     a,a
1e0c  0c        inc     c
1e0d  210eb2    ld      hl,#b20e
1e10  0f        rrca    
1e11  44        ld      b,h
1e12  11d512    ld      de,#12d5
1e15  66        ld      h,(hl)
1e16  14        inc     d
1e17  f615      or      #15
1e19  87        add     a,a
1e1a  17        rla     
1e1b  17        rla     
1e1c  19        add     hl,de
1e1d  a7        and     a
1e1e  1a        ld      a,(de)
1e1f  37        scf     
1e20  1c        inc     e
1e21  c7        rst     #0
1e22  1d        dec     e
1e23  56        ld      d,(hl)
1e24  1f        rra     
1e25  e5        push    hl
1e26  2073      jr      nz,#1e9b        ; (115)
1e28  220224    ld      (#2402),hl
1e2b  90        sub     b
1e2c  25        dec     h
1e2d  1d        dec     e
1e2e  27        daa     
1e2f  aa        xor     d
1e30  2837      jr      z,#1e69         ; (55)
1e32  2ac42b    ld      hl,(#2bc4)
1e35  50        ld      d,b
1e36  2d        dec     l
1e37  db2e      in      a,(#2e)
1e39  66        ld      h,(hl)
1e3a  30f1      jr      nc,#1e2d        ; (-15)
1e3c  317b33    ld      sp,#337b
1e3f  05        dec     b
1e40  35        dec     (hl)
1e41  8e        adc     a,(hl)
1e42  3617      ld      (hl),#17
1e44  389f      jr      c,#1de5         ; (-97)
1e46  39        add     hl,sp
1e47  263b      ld      h,#3b
1e49  ad        xor     l
1e4a  3c        inc     a
1e4b  33        inc     sp
1e4c  3eb9      ld      a,#b9
1e4e  3f        ccf     
1e4f  3e41      ld      a,#41
1e51  c34247    jp      #4742
1e54  44        ld      b,h
1e55  ca454d    jp      z,#4d45
1e58  47        ld      b,a
1e59  ce48      adc     a,#48
1e5b  50        ld      d,b
1e5c  4a        ld      c,d
1e5d  d0        ret     nc

1e5e  4b        ld      c,e
1e5f  50        ld      d,b
1e60  4d        ld      c,l
1e61  cf        rst     #8
1e62  4e        ld      c,(hl)
1e63  4d        ld      c,l
1e64  50        ld      d,b
1e65  ca5147    jp      z,#4751
1e68  53        ld      d,e
1e69  c3543e    jp      #3e54
1e6c  56        ld      d,(hl)
1e6d  b8        cp      b
1e6e  57        ld      d,a
1e6f  3159aa    ld      sp,#aa59
1e72  5a        ld      e,d
1e73  225c98    ld      (#985c),hl
1e76  5d        ld      e,l
1e77  0e5f      ld      c,#5f
1e79  83        add     a,e
1e7a  60        ld      h,b
1e7b  f7        rst     #30
1e7c  61        ld      h,c
1e7d  6a        ld      l,d
1e7e  63        ld      h,e
1e7f  dc644d    call    c,#4d64
1e82  66        ld      h,(hl)
1e83  bd        cp      l
1e84  67        ld      h,a
1e85  2d        dec     l
1e86  69        ld      l,c
1e87  9b        sbc     a,e
1e88  6a        ld      l,d
1e89  08        ex      af,af'
1e8a  6c        ld      l,h
1e8b  74        ld      (hl),h
1e8c  6d        ld      l,l
1e8d  df        rst     #18
1e8e  6e        ld      l,(hl)
1e8f  49        ld      c,c
1e90  70        ld      (hl),b
1e91  b1        or      c
1e92  71        ld      (hl),c
1e93  19        add     hl,de
1e94  73        ld      (hl),e
1e95  80        add     a,b
1e96  74        ld      (hl),h
1e97  e5        push    hl
1e98  75        ld      (hl),l
1e99  4a        ld      c,d
1e9a  77        ld      (hl),a
1e9b  ad        xor     l
1e9c  78        ld      a,b
1e9d  0f        rrca    
1e9e  7a        ld      a,d
1e9f  70        ld      (hl),b
1ea0  7b        ld      a,e
1ea1  d0        ret     nc

1ea2  7c        ld      a,h
1ea3  2e7e      ld      l,#7e
1ea5  8b        adc     a,e
1ea6  7f        ld      a,a
1ea7  e7        rst     #20
1ea8  80        add     a,b
1ea9  42        ld      b,d
1eaa  82        add     a,d
1eab  9c        sbc     a,h
1eac  83        add     a,e
1ead  f4844b    call    p,#4b84
1eb0  86        add     a,(hl)
1eb1  a1        and     c
1eb2  87        add     a,a
1eb3  f5        push    af
1eb4  88        adc     a,b
1eb5  48        ld      c,b
1eb6  8a        adc     a,d
1eb7  9a        sbc     a,d
1eb8  8b        adc     a,e
1eb9  ea8c39    jp      pe,#398c
1ebc  8e        adc     a,(hl)
1ebd  87        add     a,a
1ebe  8f        adc     a,a
1ebf  d390      out     (#90),a
1ec1  1e92      ld      e,#92
1ec3  68        ld      l,b
1ec4  93        sub     e
1ec5  b0        or      b
1ec6  94        sub     h
1ec7  f695      or      #95
1ec9  3c        inc     a
1eca  97        sub     a
1ecb  7f        ld      a,a
1ecc  98        sbc     a,b
1ecd  c29902    jp      nz,#0299
1ed0  9b        sbc     a,e
1ed1  42        ld      b,d
1ed2  9c        sbc     a,h
1ed3  7f        ld      a,a
1ed4  9d        sbc     a,l
1ed5  bc        cp      h
1ed6  9e        sbc     a,(hl)
1ed7  f69f      or      #9f
1ed9  2f        cpl     
1eda  a1        and     c
1edb  67        ld      h,a
1edc  a2        and     d
1edd  9d        sbc     a,l
1ede  a3        and     e
1edf  d2a405    jp      nc,#05a4
1ee2  a6        and     (hl)
1ee3  36a7      ld      (hl),#a7
1ee5  66        ld      h,(hl)
1ee6  a8        xor     b
1ee7  94        sub     h
1ee8  a9        xor     c
1ee9  c0        ret     nz

1eea  aa        xor     d
1eeb  eb        ex      de,hl
1eec  ab        xor     e
1eed  14        inc     d
1eee  ad        xor     l
1eef  3b        dec     sp
1ef0  ae        xor     (hl)
1ef1  61        ld      h,c
1ef2  af        xor     a
1ef3  85        add     a,l
1ef4  b0        or      b
1ef5  a8        xor     b
1ef6  b1        or      c
1ef7  c8        ret     z

1ef8  b2        or      d
1ef9  e7        rst     #20
1efa  b3        or      e
1efb  04        inc     b
1efc  b5        or      l
1efd  20b6      jr      nz,#1eb5        ; (-74)
1eff  3ab752    ld      a,(#52b7)
1f02  b8        cp      b
1f03  68        ld      l,b
1f04  b9        cp      c
1f05  7c        ld      a,h
1f06  ba        cp      d
1f07  8f        adc     a,a
1f08  bb        cp      e
1f09  a0        and     b
1f0a  bc        cp      h
1f0b  ae        xor     (hl)
1f0c  bd        cp      l
1f0d  bc        cp      h
1f0e  be        cp      (hl)
1f0f  c7        rst     #0
1f10  bf        cp      a
1f11  d0        ret     nc

1f12  c0        ret     nz

1f13  d8        ret     c

1f14  c1        pop     bc
1f15  dec2      sbc     a,#c2
1f17  e2c3e3    jp      po,#e3c3
1f1a  c4e4c5    call    nz,#c5e4
1f1d  e2c6de    jp      po,#dec6
1f20  c7        rst     #0
1f21  d8        ret     c

1f22  c8        ret     z

1f23  d1        pop     de
1f24  c9        ret     

1f25  c7        rst     #0
1f26  cabbcb    jp      z,#cbbb
1f29  ae        xor     (hl)
1f2a  cc9fcd    call    z,#cd9f
1f2d  8d        adc     a,l
1f2e  ce7a      adc     a,#7a
1f30  cf        rst     #8
1f31  64        ld      h,h
1f32  d0        ret     nc

1f33  4d        ld      c,l
1f34  d1        pop     de
1f35  33        inc     sp
1f36  d218d3    jp      nc,#d318
1f39  fad3db    jp      m,#dbd3
1f3c  d4b9d5    call    nc,#d5b9
1f3f  95        sub     l
1f40  d670      sub     #70
1f42  d7        rst     #10
1f43  48        ld      c,b
1f44  d8        ret     c

1f45  1ed9      ld      e,#d9
1f47  f2d9c4    jp      p,#c4d9
1f4a  da94db    jp      c,#db94
1f4d  61        ld      h,c
1f4e  dc2ddd    call    c,#dd2d
1f51  f6dd      or      #dd
1f53  be        cp      (hl)
1f54  de83      sbc     a,#83
1f56  df        rst     #18
1f57  46        ld      b,(hl)
1f58  e0        ret     po

1f59  06e1      ld      b,#e1
1f5b  c5        push    bc
1f5c  e1        pop     hl
1f5d  82        add     a,d
1f5e  e23ce3    jp      po,#e33c
1f61  f4e3aa    call    p,#aae3
1f64  e45ee5    call    po,#e55e
1f67  0f        rrca    
1f68  e6be      and     #be
1f6a  e66b      and     #6b
1f6c  e7        rst     #20
1f6d  16e8      ld      d,#e8
1f6f  bf        cp      a
1f70  e8        ret     pe

1f71  65        ld      h,l
1f72  e9        jp      (hl)
1f73  09        add     hl,bc
1f74  eaabea    jp      pe,#eaab
1f77  4b        ld      c,e
1f78  eb        ex      de,hl
1f79  e8        ret     pe

1f7a  eb        ex      de,hl
1f7b  83        add     a,e
1f7c  ec1ced    call    pe,#ed1c
1f7f  b2        or      d
1f80  ed46      im      0
1f82  eed8      xor     #d8
1f84  ee68      xor     #68
1f86  ef        rst     #28
1f87  f5        push    af
1f88  ef        rst     #28
1f89  80        add     a,b
1f8a  f0        ret     p

1f8b  09        add     hl,bc
1f8c  f1        pop     af
1f8d  8f        adc     a,a
1f8e  f1        pop     af
1f8f  13        inc     de
1f90  f294f2    jp      p,#f294
1f93  14        inc     d
1f94  f3        di      
1f95  91        sub     c
1f96  f3        di      
1f97  0b        dec     bc
1f98  f484f4    call    p,#f484
1f9b  faf46d    jp      m,#6df4
1f9e  f5        push    af
1f9f  def5      sbc     a,#f5
1fa1  4d        ld      c,l
1fa2  f6ba      or      #ba
1fa4  f624      or      #24
1fa6  f7        rst     #30
1fa7  8b        adc     a,e
1fa8  f7        rst     #30
1fa9  f1        pop     af
1faa  f7        rst     #30
1fab  53        ld      d,e
1fac  f8        ret     m

1fad  b4        or      h
1fae  f8        ret     m

1faf  12        ld      (de),a
1fb0  f9        ld      sp,hl
1fb1  6e        ld      l,(hl)
1fb2  f9        ld      sp,hl
1fb3  c7        rst     #0
1fb4  f9        ld      sp,hl
1fb5  1efa      ld      e,#fa
1fb7  73        ld      (hl),e
1fb8  fac5fa    jp      m,#fac5
1fbb  14        inc     d
1fbc  fb        ei      
1fbd  61        ld      h,c
1fbe  fb        ei      
1fbf  ac        xor     h
1fc0  fb        ei      
1fc1  f5        push    af
1fc2  fb        ei      
1fc3  3b        dec     sp
1fc4  fc7efc    call    m,#fc7e
1fc7  bf        cp      a
1fc8  fcfefc    call    m,#fcfe
1fcb  3afd74    ld      a,(#74fd)
1fce  fdab      xor     e
1fd0  fde0      ret     po

1fd2  fd13      inc     de
1fd4  fe43      cp      #43
1fd6  fe70      cp      #70
1fd8  fe9b      cp      #9b
1fda  fec4      cp      #c4
1fdc  feea      cp      #ea
1fde  fe0e      cp      #0e
1fe0  ff        rst     #38
1fe1  2f        cpl     
1fe2  ff        rst     #38
1fe3  4e        ld      c,(hl)
1fe4  ff        rst     #38
1fe5  6a        ld      l,d
1fe6  ff        rst     #38
1fe7  84        add     a,h
1fe8  ff        rst     #38
1fe9  9c        sbc     a,h
1fea  ff        rst     #38
1feb  b1        or      c
1fec  ff        rst     #38
1fed  c3ffd3    jp      #d3ff
1ff0  ff        rst     #38
1ff1  e1        pop     hl
1ff2  ff        rst     #38
1ff3  ecfff4    call    pe,#f4ff
1ff6  ff        rst     #38
1ff7  fb        ei      
1ff8  ff        rst     #38
1ff9  feff      cp      #ff
1ffb  ff        rst     #38
1ffc  ff        rst     #38
1ffd  00        nop     
1ffe  00        nop     
1fff  00        nop     
