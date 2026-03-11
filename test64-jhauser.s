.global _start

_start:
    #PADD.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xfe46000aff120006 # expected result
    padd.h s9, s6, s7
    bne s9, s8, print_error

    #PADD.HS
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x0001325820007F34 # rs2
    li s8, 0xFE467F377EAC7F35 # expected result
    padd.hs s9, s6, s7
    bne s9, s8, print_error

    #PADD.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFE120006 # expected result
    padd.b s9, s6, s7
    bne s9, s8, print_error

    #PADD.BS
    li s6, 0x5A3C02B4FF88011E #rs1
    li s7, 0x0000131201020112 #rs2
    li s8, 0x6C4E14C6119A1330 #expected result
    padd.bs s9, s6, s7
    bne s9, s8, print_error

    #PSUB.B
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeee00ff00000102 # expected result
    psub.b s9, s6, s7
    bne s9, s8, print_error

    #PSUB.H
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeeeffff00000002 # expected result
    psub.h s9, s6, s7
    bne s9, s8, print_error

    #PSADD.B
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7F46000aFE128006 # expected result
    psadd.b s9, s6, s7
    bne s9, s8, print_error

    #PSADD.H
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7FFF000aFF128000 # expected result
       psadd.h s9, s6, s7
    bne s9, s8, print_error

    #PSADDU.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    psaddu.b s9, s6, s7
    bne s9, s8, print_error

    #PSADDU.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    psaddu.h s9, s6, s7
    bne s9, s8, print_error

    #PSSUB.B
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80017fff00000102 # expected result
    pssub.b s9, s6, s7
    bne s9, s8, print_error

    #PSSUB.H
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80007fff00000002 # expected result
    pssub.h s9, s6, s7
    bne s9, s8, print_error

    #PSSUBU.B
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x01ffffff0000ffff # expected result
    pssubu.b s9, s6, s7
    bne s9, s8, print_error

    #PSSUBU.H
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x0001ffff0000ffff # expected result
    pssubu.h s9, s6, s7
    bne s9, s8, print_error

    #PAADD.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7F230005ff090003 # expected result
    paadd.b s9, s6, s7
    bne s9, s8, print_error

    #PAADD.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7F230005ff890003# expected result
    paadd.h s9, s6, s7
    bne s9, s8, print_error

    #PAADDU.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f230005FF890003 # expected result
    paaddu.b s9, s6, s7
    bne s9, s8, print_error

    #PAADDU.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f230005Ff890003# expected result
    paaddu.h s9, s6, s7
    bne s9, s8, print_error

    #PASUB.B
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF7f700FF00000001 # expected result
    pasub.b s9, s6, s7
    bne s9, s8, print_error

    #PASUB.H
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF777FFFF00000001 # expected result
    pasub.h s9, s6, s7
    bne s9, s8, print_error

    #PASUBU.B
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x777700FF00008081 # expected result
    pasubu.b s9, s6, s7
    bne s9, s8, print_error

    #PASUBU.H
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x7777FFFF00008001 # expected result
    pasubu.h s9, s6, s7
    bne s9, s8, print_error

    #PSABS.B
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x00007F0101017F00 # expected result
    psabs.b s9, s6
    bne s9, s8, print_error

    #PABDSUMU.B
    li s6, 0x0000000100000001 # rs1
    li s7, 0x0001000000010000 # rs2
    li s8, 0x0000000000000004 # expected result
    pabdsumu.b s9, s6, s7
    bne s9, s8, print_error

    #PABDSUMAU.B
    li s6, 0x0000000100000001 # rs1
    li s7, 0x0001000000010000 # rs2
    li s9, 1 # rd
    li s8, 0x0000000000000005 # expected result
    pabdsumau.b s9, s6, s7
    bne s9, s8, print_error

    #PAS.HX
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xfe460003ff12FFFF # expected result
    pas.hx s9, s6, s7
    bne s9, s8, print_error

    #PSA.HX
    li s6, 0x7F120003FF780001 #rs1
    li s7, 0x7F340007FF9A0005 #rs2
    li s8, 0x7F0B7F37FF73FF9B #expected result
    psa.hx s9, s6, s7
    bne s9, s8, print_error

    #PSAS.HX
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7fff0003ff127fff # expected result
    psas.hx s9, s6, s7
    bne s9, s8, print_error

    #PSSA.HX
    li s6, 0x7F12000aFF787fff #rs1
    li s7, 0x00077F348000FF9a #rs2
    li s8, 0xFFDE0011FFDEFFFF #expected result
    pssa.hx s9, s6, s7
    bne s9, s8, print_error

    #PAAS.HX
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7f230001ff897FFF # expected result
    paas.hx s9, s6, s7
    bne s9, s8, print_error

    #PASA.HX
    li s6, 0x7F12000aFF787fff  # rs1
    li s7, 0x00077F348000FF9a  # rs2
    li s8, 0xFFEF0008FFEFFFFF  # expected result
    pasa.hx s9, s6, s7
    bne s9, s8, print_error

    #PSABS.H
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x00007FFF00017FFF # rs1
    psabs.h s9, s6
    bne s9, s8, print_error

    #PSH1ADD.H
    li s6, 0x7FFF8000000AFFFB  #rs1
    li s7, 0x0001FFFE00050005  #rs2
    li s8, 0xFFFFFFFE0019FFFB #expected result
    psh1add.h s9, s6, s7
    bne s9, s8, print_error

    # PSSH1SADD.H
    li s6, 0xC000200040008000 #rs1
    li s7, 0x80007FFF00010001 #rs2
    li s8, 0x80007FFF7FFF8001 #expected result
    pssh1sadd.h s9, s6, s7
    bne s9, s8, print_error

    #PABD.H
    li s6, 0x00010002FFFE7FFF #rs1
    li s7, 0x0002000100010001 #rs2
    li s8, 0x0001000100037FFE #expected result
    pabd.h s9, s6, s7
    bne s9, s8, print_error

    #PABDU.H
    li s6, 0x00010002FFFE7FFF #rs1
    li s7, 0x0002000100010001 #rs2
    li s8, 0x00010001FFFD7FFE #expected result
    pabdu.h s9, s6, s7
    bne s9, s8, print_error

    #PABD.B
    li s6, 0x807F0201807F0201 #rs1
    li s7, 0x018001FF7F80027F #rs2
    li s8, 0x81FF0102FFFF007E #expected result
    pabd.b s9, s6, s7
    bne s9, s8, print_error

    #PABDU.B
    li s6, 0x807F0201807F0201 #rs1
    li s7, 0x018001FF7F80027F #rs2
    li s8, 0x7F0101FE0101007E #expected result
    pabdu.b s9, s6, s7
    bne s9, s8, print_error

    #PREDSUM.HS
    li s6, 0x0003000400010002 #rs1
    li s7, 0x000000000000000A #rs2
    li s8, 0x0000000000000014 #expected result
    predsum.hs s9, s6, s7
    bne s9, s8, print_error

    #PREDSUMU.HS
    li s6, 0x1000200030004000 #rs1
    li s7, 0x0000000000001000 #rs2
    li s8, 0x000000000000B000 #expected result
    predsumu.hs s9, s6, s7
    bne s9, s8, print_error

    #PREDSUM.BS
    li s6, 0x807F02FE01807F02 #rs1
    li s7, 0x0000000000000064 #rs2
    li s8, 0x0000000000000065 #expected result
    predsum.bs s9, s6, s7
    bne s9, s8, print_error

    #PREDSUMU.BS
    li s6, 0x807F02FF01807F02 #rs1
    li s7, 0x0000000000000064 #rs2
    li s8, 0x0000000000000366 #expected result
    predsumu.bs s9, s6, s7
    bne s9, s8, print_error

    #PADD.WS
    li s6, 0x000000010007FFFF #rs1
    li s7, 0x0000000000A00000 #rs2
    li s8, 0x00A0000100A7FFFF #expected result
    padd.ws s9, s6, s7
    bne s9, s8, print_error

    #PADD.W
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFFe46FFFFff12 # expected result
    padd.w s9, s6, s7
    bne s9, s8, print_error

    #PSUB.W
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xffffffff00000002 # expected result
    psub.w s9, s6, s7
    bne s9, s8, print_error

    #PSADD.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x800000007FFFFFFF # rs2
    li s8, 0x800000007FFFFFFF # expected result
    psadd.w s9, s6, s7
    bne s9, s8, print_error

    #PSADDU.W
    li s6, 0xFFFFFFFF7FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFFFFFFFFFE # expected result
    psaddu.w s9, s6, s7
    bne s9, s8, print_error

    #PSSUB.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x7fffffff00000002 # expected result
    pssub.w s9, s6, s7
    bne s9, s8, print_error

    #PSSUBU.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0xFFFFFFFFFFFFFFFF # expected result
    pssubu.w s9, s6, s7
    bne s9, s8, print_error

    #PAADD.W
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFff23FFFFff89 # expected result
    paadd.w s9, s6, s7
    bne s9, s8, print_error

    #PAADDU.W
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFFf23FFFFFF89 # expected result
    paaddu.w s9, s6, s7
    bne s9, s8, print_error

    #PASUB.W
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xFFFFFFFF00000001 # expected result
    pasub.w s9, s6, s7
    bne s9, s8, print_error

    #PASUBU.W
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xFFFFFFFF80000001 # expected result
    pasubu.w s9, s6, s7
    bne s9, s8, print_error

    #PSH1ADD.W
    li s6, 0x0000000A2000000F #rs1
    li s7, 0x0000000500000003 #rs2
    li s8, 0x0000001940000021 #expected result
    psh1add.w s9, s6, s7
    bne s9, s8, print_error

    #PSSH1SADD.W
    li s6, 0x0000000200000001 #rs1
    li s7, 0x0000000300000004 #rs2
    li s8, 0x0000000700000006 #expected result
    pssh1sadd.w s9, s6, s7
    bne s9, s8, print_error


    #PAS.WX
    li s6, 0xffffffff00000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000FFFFFFFF # expected result
    pas.wx s9, s6, s7
    bne s9, s8, print_error

    #PSA.WX
    li s6, 0x00000000ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xFFFFFFFF00000000 # expected result
    psa.wx s9, s6, s7
    bne s9, s8, print_error

    #PSAS.WX
    li s6, 0x7fffffff80000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x7fffffff80000000 # expected result
    psas.wx s9, s6, s7
    bne s9, s8, print_error

    #PSSA.WX
    li s6, 0x800000007fffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x800000007fffffff # expected result
    pssa.wx s9, s6, s7
    bne s9, s8, print_error

    #PAAS.WX
    li s6, 0xffffffff80000001 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000c0000000 # expected result
    paas.wx s9, s6, s7
    bne s9, s8, print_error

    #PASA.WX
    li s6, 0x80000001ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xc000000000000000 # expected result
    pasa.wx s9, s6, s7
    bne s9, s8, print_error

    #PREDSUM.WS
    li s6, 0x7FFFFFFF00000005 #rs1
    li s7, 0x0000000000001000 #rs2
    li s8, 0x0000000080001004 #expected result
    predsum.ws s9, s6, s7
    bne s9, s8, print_error

    #PREDSUMU.WS
    li s6, 0xFFFFFFFF0000000A #rs1
    li s7, 0x0000000000001000 #rs2
    li s8, 0x0000000100001009 #expected result
    predsumu.ws s9, s6, s7
    bne s9, s8, print_error

    #PSLLI.B
    li s6, 0xff88774433221100 # rs1
    li s8, 0xf840B82098108800 # expected result
    pslli.b s9, s6, 3
    bne s9, s8, print_error

    #PSLL.BS
    li s6, 0x207F0201207F0201 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x80FC080480FC0804 #expected result
    psll.bs s9, s6, s7
    bne s9, s8, print_error

    #PSRLI.B
    li s6, 0xff88774433221100 # rs1
    li s8, 0x1f110e0806040200 # expected result
    psrli.b s9, s6, 3
    bne s9, s8, print_error

    #PSRL.BS
    li s6, 0x80FF4080FF400A05 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x203F10203F100201
    psrl.bs s9, s6, s7
    bne s9, s8, print_error

    #PSRAI.B
    li s6, 0xff88774433221100 # rs1
    li s8, 0xfff10e0806040200 # expected result
    psrai.b s9, s6, 3
    bne s9, s8, print_error

    #PSRA.BS
    li s6, 0x80FF4080FF400A85 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0xE0FF10E0FF1002E1 #expected result
    psra.bs s9, s6, s7
    bne s9, s8, print_error

    #PMIN.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000001 # expected result
    pmin.b s8, s6, s7
    bne s10, s8, print_error

    #PMINU.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000001 # expected result
    pminu.b s8, s6, s7
    bne s10, s8, print_error

    #PMAX.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000002 # expected result
    pmax.b s8, s6, s7
    bne s10, s8, print_error

    #PMAXU.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000002 # expected result
    pmaxu.b s8, s6, s7
    bne s10, s8, print_error

    #PMSEQ.B
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFFFF00FFFF00FF # expected result
    pmseq.b s9, s6, s7
    bne s9, s8, print_error

    #PMSLT.B
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    pmslt.b s9, s6, s7
    bne s9, s8, print_error

    #PMSLTU.B
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    pmsltu.b s9, s6, s7
    bne s9, s8, print_error

    #PSEXT.H.B
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0066FFF4FFF20000 # expected result
    psext.h.b s9, s6
    bne s9, s8, print_error

    #PSATI.H
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000FFFF0000FFFF0 # rs1
    psati.h s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    #PUSATI.H
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000F0000000F0000 # rs1
    pusati.h s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    #PSLLI.H
    li s6, 0xe0007fff00001111 # rs1
    li s8, 0x0000fff800008888 # expected result
    pslli.h s9, s6, 3
    bne s9, s8, print_error

    #PSLL.HS
    li s6, 0x80007FFF00010002 #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0x0000FFF800080010 #expectede result
    psll.hs s9, s6, s7
    bne s9, s8, print_error


    #PSRLI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x10000fff00000222 # expected result
    psrli.h s9, s6, 3
    bne s9, s8, print_error

    #PSRL.HS
    li s6, 0x80007FFF0010000F #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0x10000FFF00020001 #expected result
    psrl.hs s9, s6, s7
    bne s9, s8, print_error

    #PSRAI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf0000fff00000222 # expected result
    psrai.h s9, s6, 3
    bne s9, s8, print_error

    #PSRA.HS
    li s6, 0x8000FFF800100008 #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0xF000FFFF00020001 #expected result
    psra.hs s9, s6, s7
    bne s9, s8, print_error

    #PSSLAI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x80007fff00007fff # expected result
    psslai.h s9, s6, 3
    bne s9, s8, print_error

    #PSRARI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf000100000000222 # expected result
    psrari.h s9, s6, 3
    bne s9, s8, print_error

    #PSSHA.HS
    li s6, 0x80007FFF00010002 #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0x80007FFF00080010 #expected result
    pssha.hs s9, s6, s7
    bne s9, s8, print_error

    #PSSHAR.HS
    li s6, 0x0002000100007FFF #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x0008000400007FFF #expected result
    psshar.hs s9, s6, s7
    bne s9, s8, print_error

    #PMIN.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    pmin.h s8, s6, s7
    bne s10, s8, print_error

    #PMINU.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    pminu.h s8, s6, s7
    bne s10, s8, print_error

    #PMAX.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    pmax.h s8, s6, s7
    bne s10, s8, print_error

    #PMAXU.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    pmaxu.h s8, s6, s7
    bne s10, s8, print_error

    #PMSEQ.H
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFF0000FFFF0000 # expected result
    pmseq.h s9, s6, s7
    bne s9, s8, print_error

    #PMSLT.H
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    pmslt.h s9, s6, s7
    bne s9, s8, print_error

    #PMSLTU.H
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    pmsltu.h s9, s6, s7
    bne s9, s8, print_error

    #PSEXT.W.B
    li s6, 0x12347F805678ABCD #rs1
    li s8, 0xFFFFFF80FFFFFFCD #expected result
    psext.w.b s9, s6
    bne s9, s8, print_error

    #PSEXT.W.H
    li s6, 0x12347F805678ABCD #rs1
    li s8, 0x00007F80FFFFABCD #expected result
    psext.w.h s9, s6
    bne s9, s8, print_error

    #PSATI.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x0000000FFFFFFFF0 # rs1
    psati.w s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    #PUSATI.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x0000000F00000000 # rs1
    pusati.w s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    #PSLLI.W
    li s6, 0xE000000000000001 # rs1
    li s8, 0x0000000000000008 # expected result
    pslli.w s9, s6, 3
    bne s9, s8, print_error

    #PSLL.WS
    li s6, 0xE000000000000001 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x0000000000000008 # expected result
    psll.ws s9, s6, s7
    bne s9, s8, print_error

    #PSRLI.W
    li s6, 0x8000000000001111 # rs1
    li s8, 0x1000000000000222 # expected result
    psrli.w s9, s6, 3
    bne s9, s8, print_error

    #PSRL.WS
    li s6, 0x8000000000001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x1000000000000222 # expected result
    psrl.ws s9, s6, s7
    bne s9, s8, print_error

    #PSRAI.W
    li s6, 0x8000000000001111 # rs1
    li s8, 0xF000000000000222 # expected result
    psrai.w s9, s6, 3
    bne s9, s8, print_error

    #PSRA.WS
    li s6, 0x8000000000001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0xF000000000000222 # expected result
    psra.ws s9, s6, s7
    bne s9, s8, print_error

    #PSSLAI.W
    li s6, 0xE000000000000001 # rs1
    li s8, 0x8000000000000008 # expected result
    psslai.w s9, s6, 3
    bne s9, s8, print_error

    #PSRARI.W
    li s6, 0x8000000080000004 # rs1
    li s8, 0xF0000000F0000001 # expected result
    psrari.w s9, s6, 3
    bne s9, s8, print_error

    #PSSHA.WS
    li s6, 0x7FFFFFFF00000002 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x7FFFFFFF00000008 #expected result
    pssha.ws s9, s6, s7
    bne s9, s8, print_error

    #PSSHAR.WS
    li s6, 0x000000027FFFFFFF #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x000000087FFFFFFF #expected result
    psshar.ws s9, s6, s7
    bne s9, s8, print_error

    #PMIN.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0xFFFFFFFF80000000 # expected result
    pmin.w s9, s6, s7
    bne s9, s8, print_error

    #PMINU.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x7FFFFFFF80000000 # expected result
    pminu.w s9, s6, s7
    bne s9, s8, print_error

    #PMAX.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x7FFFFFFF80000001 # expected result
    pmax.w s9, s6, s7
    bne s9, s8, print_error

    #PMAXU.W
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x0000000180000000 #rs2
    li s8, 0x8000000080000000 #expected result
    pmaxu.w s9, s6, s7
    bne s9, s8, print_error

    #PMSEQ.W
    li s6, 0x001214787FFFFFFF #rs1
    li s7, 0x156414137FFFFFFF #rs2
    li s8, 0x00000000FFFFFFFF #expected result
    pmseq.w s9, s6, s7
    bne s9, s8, print_error

    #PMSLT.W
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x0000000100000000 #rs2
    li s8, 0xFFFFFFFF00000000 #expected result
    pmslt.w s9, s6, s7
    bne s9, s8, print_error

    #PMSLTU.W
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x0000000180000000 #rs2
    li s8, 0x00000000FFFFFFFF #expected result
    pmsltu.w s9, s6, s7
    bne s9, s8, print_error

    #SATI.64
    li s6, 0x0000005000000020 #rs1
    li s8, 0x0000005000000020 #expected result
    sati s9, s6, 7
    bne s9, s8, print_error

    #USATI_64
    li s6, 0x0000005000000020 #rs1
    li s8, 0x0000005000000020 #expected result
    usati s9, s6, 7
    bne s9, s8, print_error

    #SRARI_64
    li s6, 0x800000007FFFFFFF #rs1
    li s8, 0xFF00000001000000 #expected result
    srari s9, s6, 7
    bne s9, s8, print_error

    #SHA
    li s6, 0xFFFFFFFFFFFFFFF0 #rs1
    li s7, 0xFFFFFFFFFFFFFFFE #rs2
    li s8, 0xFFFFFFFFFFFFFFFC #expected result
    sha s9, s6, s7
    bne s9, s8, print_error

    #SHAR
    li s6, 0xFFFFFFFFFFFFFFF0 #rs1
    li s7, 0xFFFFFFFFFFFFFFFE #rs2
    li s8, 0xFFFFFFFFFFFFFFFC #expected result
    shar s9, s6, s7
    bne s9, s8, print_error

    #PPAIRE.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x44BB66DD88FF0022 #expected result
    ppaire.b s9, s6, s7
    bne s9, s8, print_error

    #PPAIREO.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x33BB55DD77FF9922 #expected result
    ppaireo.b s9, s6, s7
    bne s9, s8, print_error

    #PPAIROE.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x44AA66CC88EE0011 #expected result
    ppairoe.b s9, s6, s7
    bne s9, s8, print_error

    #PPAIRO.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x33AA55CC77EE9911 #expected result
    ppairo.b s9, s6, s7
    bne s9, s8, print_error

    #PPAIRE.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x7777333355551111 # expected result
    ppaire.h s9, s6, s7
    bne s9, s8, print_error

    #PPAIREO.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x8888333366661111 # expected result
    ppaireo.h s9, s6, s7
    bne s9, s8, print_error

    #PPAIROE.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x7777444455552222 # expected result
    ppairoe.h s9, s6, s7
    bne s9, s8, print_error

    #PPAIRO.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x8888444466662222 # expected result
    ppairo.h s9, s6, s7
    bne s9, s8, print_error

    #PPAIREO.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x8000000000000001 # expected result
    ppaireo.w s9, s6, s7
    bne s9, s8, print_error

    #PPAIROE.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0xFFFFFFFF7fffffff # expected result
    ppairoe.w s9, s6, s7
    bne s9, s8, print_error

    #PPAIRO.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x800000007fffffff # expected result
    ppairo.w s9, s6, s7
    bne s9, s8, print_error

    #ZIP8P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xDD55EE66FF770088 #expected result
    zip8p s9, s6, s7
    bne s9, s8, print_error

    #ZIP8HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x9911AA22BB33CC44 #expected result
    zip8hp s9, s6, s7
    bne s9, s8, print_error

    #UNZIP8P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xAACCEE0022446688  #expected result
    unzip8p s9, s6, s7
    bne s9, s8, print_error

    #UNZIP8HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x99BBDDFF11335577 #expected result
    unzip8hp s9, s6, s7
    bne s9, s8, print_error

    #ZIP16P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xDDEE5566FF007788 #expected result
    zip16p s9, s6, s7
    bne s9, s8, print_error

    #ZIP16HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x99AA1122BBCC3344 #expected result
    zip16hp s9, s6, s7
    bne s9, s8, print_error

    #UNZIP16P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xBBCCFF0033447788 #expected result
    unzip16p s9, s6, s7
    bne s9, s8, print_error

    #UNZIP16HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x99AADDEE11225566 #expected result
    unzip16hp s9, s6, s7
    bne s9, s8, print_error

    #ABS
    li s6, 0xFFFFFFFFFFFFFFFF #rs1
    li s8, 0x0000000000000001 #expected result
    abs s9, s6
    bne s9, s8, print_error

    #CLS
    li s6, 0x1000000000000000 #rs1
    li s8, 0x0000000000000002 #rs2
    cls s9, s6
    bne s9, s8, print_error

    #REV
    li s6, 0x123456789ABCDEF0 #rs1
    li s8, 0x0F7B3D591E6A2C48 #expected result
    rev s9, s6
    bne s9, s8, print_error

    #REV16
    li s6, 0x123456789ABCDEF0 #rs1
    li s8, 0xDEF09ABC56781234 #expected result
    rev16 s9, s6
    bne s9, s8, print_error

    #SLX
    li s6, 0x00000000000000FF #rs1
    li s7, 0x0000000000000008 #rs2
    li s9, 0x0000000000001234 #rd
    li s8, 0x0000000000123400 #expected result
    slx s9, s6, s7
    bne s9, s8, print_error

    #SRX
    li s6, 0x00000000000000FF #rs1
    li s7, 0x0000000000000008 #rs2
    li s9, 0x0000000000123400 #rd
    li s8, 0xFF00000000001234 #expected result
    srx s9, s6, s7
    bne s9, s8, print_error

    #MVM
    li s6, 0xAAAABBBBCCCCDDDD #rs1
    li s7, 0xFFFF0000FFFF0000 #rs2
    li s9, 0x123456789ABCDEF0 #rd
    li s8, 0xAAAA5678CCCCDEF0 #expected result
    mvm s9, s6, s7
    bne s9, s8, print_error

    # MVMN
    li s6, 0xAAAABBBBCCCCDDDD #rs1
    li s7, 0xFFFF0000FFFF0000 #rs2
    li s9, 0x123456789ABCDEF0 #rd
    li s8, 0x1234BBBB9ABCDDDD #expected result
    mvmn s9, s6, s7
    bne s9, s8, print_error

    #MERGE
    li s6, 0xAAAABBBBCCCCDDDD #rs1
    li s7, 0x123456789ABCDEF0 #rs2
    li s9, 0x0000FFFF0000FFFF #rd
    li s8, 0xAAAA5678CCCCDEF0 #expected result
    merge s9, s6, s7
    bne s9, s8, print_error

    #ABSW
    li s6, 0x00000000FFFFFFFF #rs1
    li s8, 0x0000000000000001 #expected result
    absw s9, s6
    bne s9, s8, print_error

    #CLSW
    li s6, 0x0000000030000000 #rs1
    li s7, 0x0000000000000001 #expected result
    clsw s9, s6
    bne s9, s8, print_error

    #PMULH.H
    li s6, 0x7FFF00028000FFFE #rs1
    li s7, 0x7FFF00037FFF0001 #rs2
    li s8, 0x3FFF0000C000FFFF #expected result
    pmulh.h s9, s6, s7
    bne s9, s8, print_error

    # PMULHR.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0x3FFF40000000C001 #expected result
    pmulhr.h s9, s6, s7
    bne s9, s8, print_error

    #PMULHSU.H
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFEFFFF0000FFFF #expected result
    pmulhsu.h s9, s6, s7
    bne s9, s8, print_error

    #PMULHRSU.H
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFF000000000000 #expected result
    pmulhrsu.h s9, s6, s7
    bne s9, s8, print_error

    #PMULHU.H
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFF000180017FFF #rs2
    li s8, 0x3FFF000000017FFE #expected result
    pmulhu.h s9, s6, s7
    bne s9, s8, print_error

    #PMULHRU.H
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFF000180017FFF #rs2
    li s8, 0x4000000100017FFE #expected result
    pmulhru.h s9, s6, s7
    bne s9, s8, print_error

    #PMULQ.H
    li s6, 0x7FFF00017FFF0001 # rs1
    li s7, 0x8000FFFF8000FFFF # rs2
    li s10, 0x8001ffff8001ffff # expected result
    pmulq.h s8, s6, s7
    bne s10, s8, print_error

    #PMULQR.H
    li s6, 0x80007FFF00020001 #rs1
    li s7, 0x80007FFFFFFEFFFF #rs2
    li s8, 0x7FFF7FFE00000000 #expected result
    pmulqr.h s9, s6, s7
    bne s9, s8, print_error

    #PMHACC.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0x7FFF80010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x4000400100030003 #expected result
    pmhacc.h s9, s6, s7
    bne s9, s8, print_error

    #PMHRACC.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0x7FFF80010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x4000400200030004 #expected result
    pmhracc.h s9, s6, s7
    bne s9, s8, print_error

    #PMHACCSU.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x7FFF000100030005 #expected result
    pmhaccsu.h s9, s6, s7
    bne s9, s8, print_error

    #PMHRACCSU.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x8000000200030006 #expected result
    pmhraccsu.h s9, s6, s7
    bne s9, s8, print_error

    #PMHACCU.H
    li s6, 0xFFFF800000020003 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF000200030006 #expected result
    pmhaccu.h s9, s6, s7
    bne s9, s8, print_error

    #PMHRACCU.H
    li s6, 0xFFFF800000020003 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF000300030007 #expected result
    pmhraccu.h s9, s6, s7
    bne s9, s8, print_error

    #PMULH.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFF3FFFFFFF # expected result
    pmulh.w s9, s6, s7
    bne s9, s8, print_error

    #PMULHR.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0x000000003FFFFFFF # expected result
    pmulhr.w s9, s6, s7
    bne s9, s8, print_error

    #PMULHSU.W
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFF000000000009 #expected result
    pmulhsu.w s9, s6, s7
    bne s9, s8, print_error

    #PMULHRSU.W
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFF000100000009  #expected result
    pmulhrsu.w s9, s6, s7
    bne s9, s8, print_error

    #PMULHU.W
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFF000180017FFF #rs2
    li s8, 0x3FFFFFFF00018003 #expected result
    pmulhu.w s9, s6, s7
    bne s9, s8, print_error

    #PMULHRU.W
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFFFFFF80017FFF #rs2
    li s8, 0x40007FFF00018003 #expected result
    pmulhru.w s9, s6, s7
    bne s9, s8, print_error

    #PMULQ.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFF7FFFFFFE # expected result
    pmulq.w s9, s6, s7
    bne s9, s8, print_error

    #PMULQR.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0x000000007FFFFFFE # expected result
    pmulqr.w s9, s6, s7
    bne s9, s8, print_error

    #PMHACC.W
    li s6, 0x0001000000010000 # rs1
    li s7, 0x0001000000010000 # rs2
    li s9, 0x7FFFFFFF00000064 # rd
    li s8, 0x8000000000000065 # expected result
    pmhacc.w s9, s6, s7
    bne s9, s8, print_error

    # PMHRACC.W
    li s6, 0x000100017FFFFFFF # rs1
    li s7, 0x000100017FFFFFFF # rs2
    li s9, 0x7FFFFFFF00000001 # rd
    li s8, 0x8000000040000000 # expected result
    pmhracc.w s9, s6, s7
    bne s9, s8, print_error

    #PMHACCSU.W
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x800000020003000C #expected result
    pmhaccsu.w s9, s6, s7
    bne s9, s8, print_error

    #PMHRACCSU.W
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x800000030003000C #expected result
    pmhraccsu.w s9, s6, s7
    bne s9, s8, print_error

    #PMHACCU.W
    li s6, 0xFFFF800000020003 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF80030003000C #expected result
    pmhaccu.w s9, s6, s7
    bne s9, s8, print_error

    #PMHRACCU.W
    li s6, 0xFFFF80000002FFFE #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF800300030010 #expected result
    pmhraccu.w s9, s6, s7
    bne s9, s8, print_error

    #PMQACC.W.H00
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x80017FFF00037FFF #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqacc.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMQACC.W.H01
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqacc.w.h01 s9, s6, s7
    bne s9, s8, print_error

    #PMQACC.W.H11
    li s6, 0x7FFF800080000002 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqacc.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PMQRACC.W.H00
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x80017FFF00037FFF #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqracc.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMQRACC.W.H01
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqracc.w.h01 s9, s6, s7
    bne s9, s8, print_error

    #PMQRACC.W.H11
    li s6, 0x7FFF800080000002 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqracc.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PMQ2ADD.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0x0000FFFDFFFF8001 #expected result
    pmq2add.h s9, s6, s7
    bne s9, s8, print_error

    #PMQ2ADDA.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000200000002 #rd
    li s8, 0x0000FFFFFFFF8003 #expected result
    pmq2adda.h s9, s6, s7
    bne s9, s8, print_error

    #PMQR2ADD.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0x0000FFFDFFFF8001 #expected result
    pmqr2add.h s9, s6, s7
    bne s9, s8, print_error

    #PMQR2ADDA.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000200000002 #rd
    li s8, 0x0000FFFFFFFF8003 #expected result
    pmqr2adda.h s9, s6, s7
    bne s9, s8, print_error

    #MQACC.W00
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqacc.w00 s9, s6, s7
    bne s9, s8, print_error

    #MQACC.W01
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x800000007FFFFFFF #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqacc.w01 s9, s6, s7
    bne s9, s8, print_error

    #MQACC.W11
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqacc.w11 s9, s6, s7
    bne s9, s8, print_error

    #MQRACC.W00
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqracc.w00 s9, s6, s7
    bne s9, s8, print_error

    #MQRACC.W01
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x800000007FFFFFFF #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqracc.w01 s9, s6, s7
    bne s9, s8, print_error

    #MQRACC.W11
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqracc.w11 s9, s6, s7
    bne s9, s8, print_error

    #PMQ2ADD.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0xFFFFFFFF8001000E #expected result
    pmq2add.w s9, s6, s7
    bne s9, s8, print_error

    #PMQ2ADDA.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0xFFFFFFFF8001000F #expected result
    pmq2adda.w s9, s6, s7
    bne s9, s8, print_error

    #PMQR2ADD.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0xFFFFFFFF8001000F #expected result
    pmqr2add.w s9, s6, s7
    bne s9, s8, print_error

    #PMQR2ADDA.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0xFFFFFFFF80010010 #expected result
    pmqr2adda.w s9, s6, s7
    bne s9, s8, print_error

    #PMUL.H.B00
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x7F0180015E80007F #rs2
    li s8, 0xFF80007FFF00007F #expected result
    pmul.h.b00 s9, s6, s7
    bne s9, s8, print_error

    #PMUL.H.B01
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x017F0180805E7F80 #rs2
    li s8, 0xFF80007FFF00007F #expected result
    pmul.h.b01 s9, s6, s7
    bne s9, s8, print_error

    #PMUL.H.B11
    li s6, 0x80667F8802500101 #rs1
    li s7, 0x017F0180805E7F80 #rs2
    li s8, 0xFF80007FFF00007F #expected result
    pmul.h.b11 s9, s6, s7
    bne s9, s8, print_error

    #PMULSU.H.B00
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x7F0180015E80007F #rs2
    li s8, 0xFF80007F0100007F #expected result
    pmulsu.h.b00 s9, s6, s7
    bne s9, s8, print_error

    #PMULSU.H.B11
    li s6, 0x807F7F04027F017E #rs1
    li s7, 0x017F010880807F55 #rs2
    li s8, 0xFF80007F0100007F #expected result
    pmulsu.h.b11 s9, s6, s7
    bne s9, s8, print_error

    # PMULU.H.B00
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x7F0180015E80007F #rs2
    li s8, 0x0080007F0100007F #expected result
    pmulu.h.b00 s9, s6, s7
    bne s9, s8, print_error

    #PMULU.H.B01
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x017F018080807F7F #rs2
    li s8, 0x0080007F0100007F #expected result
    pmulu.h.b01 s9, s6, s7
    bne s9, s8, print_error

    #PMULU.H.B11
    li s6, 0x80807F7F02020101 #rs1
    li s7, 0x017F018080807F7F #rs2
    li s8, 0x0080007F0100007F #expected result
    pmulu.h.b11 s9, s6, s7
    bne s9, s8, print_error

    #PMUL.W.H00
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0xFFFF7FFF0000FFFF # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    pmul.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMUL.W.H01
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    pmul.w.h01 s9, s6, s7
    bne s9, s8, print_error

    #PMUL.W.H11
    li s6, 0x7FFFFFFF0001FFFF # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    pmul.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PMULSU.W.H00
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0xFFFF7FFF0000FFFF # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulsu.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMULSU.W.H11
    li s6, 0x7FFFFFFF0001FFFF # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulsu.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PMULU.W.H00
    li s6, 0xFFFF7FFFFFFFFFFF # rs1
    li s7, 0xFFFF7FFF00000001 # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulu.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMULU.W.H01
    li s6, 0xFFFF7FFFFFFFFFFF # rs1
    li s7, 0x7FFFFFFF000107FF # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulu.w.h01 s9, s6, s7
    bne s9, s8, print_error

    #PMULU.W.H11
    li s6, 0x7FFFFFFFFFFFFFFF # rs1
    li s7, 0x7FFFFFFF000107FF # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulu.w.h11 s9, s6, s7
    bne s9, s8, print_error

    # PMACC.W.H00
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF8000 # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFF40007FFF # expected result
    pmacc.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMACC.W.H01
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFF40007FFF # expected result
    pmacc.w.h01 s9, s6, s7
    bne s9, s8, print_error

    #PMACC.W.H11
    li s6, 0x8000FFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFF40007FFF # expected result
    pmacc.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PMACCSU.W.H00
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF8000 # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFFBFFF7FFF # expected result
    pmaccsu.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMACCSU.W.H11
    li s6, 0x8000FFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFFBFFF7FFF # expected result
    pmaccsu.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PMACCU.W.H00
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF8000 # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0xBFFF7FFFBFFF7FFF # expected result
    pmaccu.w.h00 s9, s6, s7
    bne s9, s8, print_error

    #PMACCU.W.H01
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0xBFFF7FFFBFFF7FFF # expected result
    pmaccu.w.h01 s9, s6, s7
    bne s9, s8, print_error

    #PMACCU.W.H11
    li s6, 0x8000FFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0xBFFF7FFFBFFF7FFF # expected result
    pmaccu.w.h11 s9, s6, s7
    bne s9, s8, print_error

    #PM2ADD.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s8, 0x80000000FFFFFFFD # expected result
    pm2add.h s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDSU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s8, 0x800000000001FFFD # expected result
    pm2addsu.h s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s8, 0x800000000002FFFD # expected result
    pm2addu.h s9, s6, s7
    bne s9, s8, print_error

    #PM2ADD.HX
    li s6, 0x8000800000010001 # rs1
    li s7, 0x8000800000010001 # rs2
    li s8, 0x8000000000000002 # expected result
    pm2add.hx s9, s6, s7
    bne s9, s8, print_error

    #PM2SADD.H
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x3FFF000200000000 # expected result
    pm2sadd.h s9, s6, s7
    bne s9, s8, print_error

    #PM2SADD.HX
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x3FFF000200000000 # expected result
    pm2sadd.hx s9, s6, s7
    bne s9, s8, print_error

    #PM2SUB.H
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s8, 0x0000000000000002 # expected result
    pm2sub.h s9, s6, s7
    bne s9, s8, print_error

    #PM2SUB.HX
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s8, 0x0000000000000002 # expected result
    pm2sub.hx s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDA.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s9, 0x0000000100000001 #rd
    li s8, 0x80000001FFFFFFFE # expected result
    pm2adda.h s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDASU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s9, 0x0000000100000001 #rd
    li s8, 0x800000010001FFFE # expected result
    pm2addasu.h s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDAU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s9, 0x0000001000000001 # rd
    li s8, 0x800000100002FFFE # expected result
    pm2addau.h s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDA.HX
    li s6, 0x8000800000010001 # rs1
    li s7, 0x8000800000010001 # rs2
    li s9, 0x0000000100000002 # rd
    li s8, 0x8000000100000004 # expected result
    pm2adda.hx s9, s6, s7
    bne s9, s8, print_error

    #PM2SUBA.H
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s9, 0x0000000100000004 #rd
    li s8, 0x0000000100000006 # expected result
    pm2suba.h s9, s6, s7
    bne s9, s8, print_error

    #PM2SUBA.HX
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s9, 0x0000000100000005 # rd
    li s8, 0x0000000100000007 # expected result
    pm2suba.hx s9, s6, s7
    bne s9, s8, print_error

    #MUL.W00
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x80000001FFFFFFFF # rs2
    li s8, 0x0000000080000000 # expected result
    mul.w00 s9, s6, s7
    bne s9, s8, print_error

    #MUL.W01
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x0000000080000000 # expected result
    mul.w01 s9, s6, s7
    bne s9, s8, print_error

    #MUL.W11
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0xFFFFFFFF80000001 # expected result
    mul.w11 s9, s6, s7
    bne s9, s8, print_error

    #MULSU.W00
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x8000000180000000 # rs2
    li s8, 0x3FFFFFFF80000000 # expected result
    mulsu.w00 s9, s6, s7
    bne s9, s8, print_error

    #MULSU.W11
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000001 # rs2
    li s8, 0xC000000080000000 # expected result
    mulsu.w11 s9, s6, s7
    bne s9, s8, print_error

    #MULU.W00
    li s6, 0x000000007fffffff #rs1
    li s7, 0x0000000080000000 #rs2
    li s8, 0x3FFFFFFF80000000 # expected result
    mulu.w00 s10, s6, s7
    bne s10, s8, print_error

    #MULU.W01
    li s6, 0x000000007fffffff
    li s7, 0x8000000000000000
    li s8, 0x3FFFFFFF80000000
    mulu.w01 s10, s6, s7
    bne s10, s8, print_error

    #MULU.W11
    li s6, 0x7fffffff00000000
    li s7, 0x8000000000000000
    li s8, 0x3FFFFFFF80000000
    mulu.w11 s10, s6, s7
    bne s10, s8, print_error

    # MACC.W00
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x80000001FFFFFFFF # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    macc.w00 s9, s6, s7
    bne s9, s8, print_error

    #MACC.W01
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    macc.w01 s9, s6, s7
    bne s9, s8, print_error

    #MACC.W11
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    macc.w11 s9, s6, s7
    bne s9, s8, print_error

    #MACCSU.W00
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x8000000180000000 # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccsu.w00 s9, s6, s7
    bne s9, s8, print_error

    #MACCSU.W11
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x8000000080000001 # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccsu.w11 s9, s6, s7
    bne s9, s8, print_error

    #MACCU.W00
    li s6, 0x000000007fffffff #rs1
    li s7, 0x0000000080000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccu.w00 s9, s6, s7
    bne s9, s8, print_error

    #MACCU.W01
    li s6, 0x000000007fffffff #rs1
    li s7, 0x8000000000000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccu.w01 s9, s6, s7
    bne s9, s8, print_error

    #MACCU.W11
    li s6, 0x7fffffff00000000 #rs1
    li s7, 0x8000000000000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccu.w11 s9, s6, s7
    bne s9, s8, print_error

    #PM2ADD.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000000 # rs2
    li s8, 0x8000000100000000 # expected result
    pm2add.w s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDSU.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000000 # rs2
    li s8, 0x0000000000000000 # expected result
    pm2addsu.w s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDU.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000000 # rs2
    li s8, 0x7FFFFFFF00000000 # expected result
    pm2addu.w s9, s6, s7
    bne s9, s8, print_error

    #PM2ADD.WX
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x800000007FFFFFFF # rs2
    li s8, 0x8000000100000000 # expected result
    pm2add.wx s9, s6, s7
    bne s9, s8, print_error

    #PM2SUB.W
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s8, 0xFFFFFFFFFFFFFFFE # expected result
    pm2sub.w s9, s6, s7
    bne s9, s8, print_error

    #PM2SUB.WX
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s8, 0x0000000000000002 # expected result
    pm2sub.wx s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDA.W
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x1111111111111111
    li s8, 0x1111111111111116
    pm2adda.w s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDASU.W
    li s6, 0x0000000200000001 #rs1
    li s7, 0x0000000280000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x0000000080000005 #expected result
    pm2addasu.w s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDAU.W
    li s6, 0x8000000000000001 #rs1
    li s7, 0x0000000280000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x0000000180000001 #expected result
    pm2addau.w s9, s6, s7
    bne s9, s8, print_error

    #PM2ADDA.WX
    li s6, 0x0000000200000001 #rs1
    li s7, 0x0000000100000002 #rs2
    li s9, 0x1111111111111111 #rd
    li s8, 0x1111111111111116 #expected result
    pm2adda.wx s9, s6, s7
    bne s9, s8, print_error

    #PM2SUBA.W
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0xFFFFFFFFFFFFFFFF # expected result
    pm2suba.w s9, s6, s7
    bne s9, s8, print_error

    #PM2SUBA.WX
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0xFFFFFFFFFFFFFFFF # expected result
    pm2suba.wx s9, s6, s7
    bne s9, s8, print_error

    #PM4ADD.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s8, 0xFFFFFF8E0000001E # expected result
    pm4add.b s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDSU.B
    li s6, 0x0103020104030201 # rs1
    li s7, 0x8003020104030201 # rs2
    li s8, 0x0000008E0000001E # expected result
    pm4addsu.b s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDU.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s8, 0x0000008E0000001E # expected result
    pm4addu.b s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDA.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0xFFFFFF8F0000001F # expected result
    pm4adda.b s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDASU.B
    li s6, 0x0103020104030201 # rs1
    li s7, 0x8003020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000008F0000001F # expected result
    pm4addasu.b s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDAU.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000008F0000001F # expected result
    pm4addau.b s9, s6, s7
    bne s9, s8, print_error

    #PM4ADD.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s8, 0xFFFFFFFF80010001 #expected result
    pm4add.h s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDSU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s8, 0x0000000000000001 #expected result
    pm4addsu.h s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s8, 0x0000000080000001 #expected result
    pm4addu.h s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDA.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0xFFFFFFFF80010002 #expected result
    pm4adda.h s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDASU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x0000000000000002 #expected result
    pm4addasu.h s9, s6, s7
    bne s9, s8, print_error

    #PM4ADDAU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x0000000080000002 #expected result
    pm4addau.h s9, s6, s7
    bne s9, s8, print_error

    #PMULH.H.B0
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F80010001 #rs2
    li s8, 0x007FC0800000FFFF #expected result
    pmulh.h.b0 s9, s6, s7
    bne s9, s8, print_error

    #PMULH.H.B1
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F01800100 #rs2
    li s8, 0x007FC0800000FFFF #expected result
    pmulh.h.b1 s9, s6, s7
    bne s9, s8, print_error

    #PMULHSU.H.B0
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F01800001 #rs2
    li s8, 0x007FC0800008FFFF #expected result
    pmulhsu.h.b0 s9, s6, s7
    bne s9, s8, print_error

    #PMULHSU.H.B1
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F8001017F #rs2
    li s8, 0x007FC0800008FFFF #expected result
    pmulhsu.h.b1 s9, s6, s7
    bne s9, s8, print_error

    #PMHACC.H.B0
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F80010001 #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100010000 #expected result
    pmhacc.h.b0 s9, s6, s7
    bne s9, s8, print_error

    #PMHACC.H.B1
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F01000180 #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100010000 #expected result
    pmhacc.h.b1 s9, s6, s7
    bne s9, s8, print_error

    #PMHACCSU.H.B0
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F01800001 #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100090000 #expected result
    pmhaccsu.h.b0 s9, s6, s7
    bne s9, s8, print_error

    #PMHACCSU.H.B1
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F8000017F #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100090000 #expected result
    pmhaccsu.h.b1 s9, s6, s7
    bne s9, s8, print_error

    # PMULH.W.H0`
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    pmulh.w.h0 s9, s6, s7
    bne s9, s8, print_error

    #PMULH.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    pmulh.w.h1 s9, s6, s7
    bne s9, s8, print_error

    #PMULHSU.W.H0
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s8, 0x000000003FFF7FFF # expected result
    pmulhsu.w.h0 s9, s6, s7
    bne s9, s8, print_error

    #PMULHSU.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s8, 0x000000003FFF7FFF # expected result
    pmulhsu.w.h1 s9, s6, s7
    bne s9, s8, print_error

    ##PMHACC.W.H0
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s9, 0x0000000000000000 # rd
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    pmhacc.w.h0 s9, s6, s7
    bne s9, s8, print_error

    #PMHACC.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000003FFF8000 # expected result
    pmhacc.w.h1 s9, s6, s7
    bne s9, s8, print_error

    #PMHACCSU.W.H0
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000013FFF8000 # expected result
    pmhaccsu.w.h0 s9, s6, s7
    bne s9, s8, print_error

    #PMHACCSU.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000013FFF8000 # expected result
    pmhaccsu.w.h1 s9, s6, s7
    bne s9, s8, print_error

    # prepare for the loop
    li      s1, 0x10000000  # UART output register
    la      s2, pass       # load string start addr into s2
    addi    s3, s2, 8      # set up string end addr in s3
    jal     loop
print_error:
    li      s1, 0x10000000  # UART output register
    la      s2, error       # load string start addr into s2
    addi    s3, s2, 13      # set up string end addr in s3
loop:
    lb      s4, 0(s2)       # load next byte at s2 into s4
    sb      s4, 0(s1)       # write byte to UART register
    addi    s2, s2, 1       # increase s2
    blt     s2, s3, loop    # branch back until end addr (s3) reached
forever:
    wfi
    j       forever


.section .data

pass:
  .string "passed!\n"
error:
  .string "error!\n"
