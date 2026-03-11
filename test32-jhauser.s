.global _start

_start:

    # PADD.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xFE46000A # expected result
    padd.b s9, s6, s7
    bne s9, s8, print_error

    # PADD.BS
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x8619070A # expected result
    padd.bs s9, s6, s7
    bne s9, s8, print_error

    # PSUB.B
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xeeee00ff # expected result
    psub.b s9, s6, s7
    bne s9, s8, print_error

    # PSADD.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F46000a # expected result
    psadd.b s9, s6, s7
    bne s9, s8, print_error

    # PSADDU.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xFE46000a # expected result
    psaddu.b s9, s6, s7
    bne s9, s8, print_error

    # PSSUB.B
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000102 # expected result
    pssub.b s9, s6, s7
    bne s9, s8, print_error

    # PSSUBU.B
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x0000ffff # expected result
    pssubu.b s9, s6, s7
    bne s9, s8, print_error

    # PAADD.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F230005 # expected result
    paadd.b s9, s6, s7
    bne s9, s8, print_error

    # PAADDU.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7f230005 # expected result
    paaddu.b s9, s6, s7
    bne s9, s8, print_error

    # PASUB.B
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xF7f700FF # expected result
    pasub.b s9, s6, s7
    bne s9, s8, print_error

    # PASUBU.B
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0x777700FF # expected result
    pasubu.b s9, s6, s7
    bne s9, s8, print_error

    # PDIF.B
    li s6, 0x7F7F01FF # rs1
    li s7, 0x7F70FF7E # rs2
    li s8, 0x000F027F # expected result
    pdif.b s9, s6, s7
    bne s9, s8, print_error

    # PDIFU.B
    li s6, 0x807F01FF # rs1
    li s7, 0x7F01FFFE # rs2
    li s8, 0x017EFE01 # expected result
    pdifu.b s9, s6, s7
    bne s9, s8, print_error

    # PSABS.B
    li s6, 0x00007FFF # rs1
    li s8, 0x00007F01 # expected result
    psabs.b s9, s6
    bne s9, s8, print_error

    # PREDSUM.BS
    li s6, 0x7EFF0180 # rs1
    li s7, 0x00000001 # rs2
    li s8, 0xFFFFFFFF # expected result
    predsum.bs s9, s6, s7
    bne s9, s8, print_error

    # PREDSUMU.BS
    li s6, 0x7EFF0180 # rs1
    li s7, 0x00000001 # rs2
    li s8, 0x000001FF # expected result
    predsumu.bs s9, s6, s7
    bne s9, s8, print_error

    # PDIFSUMU.B
    li s6, 0x807FFFFF # rs1
    li s7, 0x7F0101FE # rs2
    li s8, 0x00000180 # expected result
    pdifsumu.b s9, s6, s7
    bne s9, s8, print_error

    # PDIFSUMAU.B
    li s6, 0x807FFFFF # rs1
    li s7, 0x7F0101FE # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000181 # expected result
    pdifsumau.b s9, s6, s7
    bne s9, s8, print_error

    # PADD.HS
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F19000a # expected result
    padd.hs s9, s6, s7
    bne s9, s8, print_error

    # PADD.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xfe46000a # expected result
    padd.h s9, s6, s7
    bne s9, s8, print_error

    # PSUB.H
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xeeeeffff # expected result
    psub.h s9, s6, s7
    bne s9, s8, print_error

    # PSADD.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7FFF000a # expected result
    psadd.h s9, s6, s7
    bne s9, s8, print_error

    # PSADDU.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xFE46000a # expected result
    psaddu.h s9, s6, s7
    bne s9, s8, print_error

    # PSSUB.H
    li s6, 0x80007fff # rs1
    li s7, 0x7fff8000 # rs2
    li s8, 0x80007fff # expected result
    pssub.h s9, s6, s7
    bne s9, s8, print_error

    # PSSUBU.H
    li s6, 0x80007fff # rs1
    li s7, 0x7fff8000 # rs2
    li s8, 0x0001ffff # expected result
    pssubu.h s9, s6, s7
    bne s9, s8, print_error

    # PAADD.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F230005 # expected result
    paadd.h s9, s6, s7
    bne s9, s8, print_error

    # PAADDU.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7f230005 # expected result
    paaddu.h s9, s6, s7
    bne s9, s8, print_error

    # PASUB.H
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xF777FFFF # expected result
    pasub.h s9, s6, s7
    bne s9, s8, print_error

    # PASUBU.H
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0x7777FFFF # expected result
    pasubu.h s9, s6, s7
    bne s9, s8, print_error

    # PSH1ADD.H
    li s6, 0x07FFFFFF # rs1
    li s7, 0x80007FFF # rs2
    li s8, 0x8FFE7FFD # expected result
    psh1add.h s9, s6, s7
    bne s9, s8, print_error

    # PSSH1SADD.H
    li s6, 0xC0004000 # rs1
    li s7, 0x80000001 # rs2
    li s8, 0x80007FFF # expected result
    pssh1sadd.h s9, s6, s7
    bne s9, s8, print_error

    # PAS.HX
    li s6, 0x7F12000a # rs1
    li s7, 0x00077F34 # rs2
    li s8, 0xfe460003 # expected result
    pas.hx s9, s6, s7
    bne s9, s8, print_error

    # PSA.HX
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F0B7F37 # expected result
    psa.hx s9, s6, s7
    bne s9, s8, print_error

    # PSAS.HX
    li s6, 0x7F12000a # rs1
    li s7, 0x00077F34 # rs2
    li s8, 0x7fff0003 # expected result
    psas.hx s9, s6, s7
    bne s9, s8, print_error

    # PSSA.HX
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xFFDEFFFF # expected result
    pssa.hx s9, s6, s7
    bne s9, s8, print_error

    # PAAS.HX
    li s6, 0x7F12000a # rs1
    li s7, 0x00077F34 # rs2
    li s8, 0x7f230001 # expected result
    paas.hx s9, s6, s7
    bne s9, s8, print_error

    # PASA.HX
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xFFEFFFFF # expected result
    pasa.hx s9, s6, s7
    bne s9, s8, print_error

    # PDIF.H
    li s6, 0x00017FFF # rs1
    li s7, 0x00020001 # rs2
    li s8, 0x00017FFE # expected result
    pdif.h s9, s6, s7
    bne s9, s8, print_error

    # PDIFU.H
    li s6, 0xFFFE7FFF # rs1
    li s7, 0x00010001 # rs2
    li s8, 0xFFFD7FFE # expected result
    pdifu.h s9, s6, s7
    bne s9, s8, print_error

    # PSABS.H
    li s6, 0x00007FFF # rs1
    li s8, 0x00007FFF # rs1
    psabs.h s9, s6
    bne s9, s8, print_error

    # PREDSUM.HS
    li s6, 0x00030004 # rs1
    li s7, 0x0000000A # rs2
    li s8, 0x00000011 # expected result
    predsum.hs s9, s6, s7
    bne s9, s8, print_error

    # PREDSUMU.HS
    li s6, 0x10008000 # rs1
    li s7, 0x00001000 # rs2
    li s8, 0x0000A000 # expected result
    predsumu.hs s9, s6, s7
    bne s9, s8, print_error

    # SADD
    li s6, 0x80000000
    li s7, 0x80000000
    li s8, 0x80000000
    sadd s9, s6, s7
    bne s9, s8, print_error

    # SADDU
    li s6, 0x00000000FFFFFFF
    li s7, 0xFFFFFFFF
    li s8, 0xFFFFFFFF
    saddu s9, s6, s7
    bne s9, s8, print_error

    # SSUB
    li s6, 0x80000000
    li s7, 0x7FFFFFFF
    li s8, 0x80000000
    ssub s9, s6, s7
    bne s9, s8, print_error

    # SSUBU
    li s6, 0x00000000
    li s7, 0x00000001
    li s8, 0xFFFFFFFF
    ssubu s9, s6, s7
    bne s9, s8, print_error

    # AADD
    li s6, 0x40000000
    li s7, 0x80000000
    li s8, 0xe0000000
    aadd s9, s6, s7
    bne s9, s8, print_error

    # AADDU
    li s6, 0x40000000
    li s7, 0x80000000
    li s8, 0x60000000
    aaddu s9, s6, s7
    bne s9, s8, print_error

    # ASUB
    li s6, 0x80000000
    li s7, 0x40000000
    li s8, 0xa0000000
    asub s9, s6, s7
    bne s9, s8, print_error

    # ASUBU
    li s6, 0x80000000
    li s7, 0x40000000
    li s8, 0x20000000
    asubu s9, s6, s7
    bne s9, s8, print_error

    # SSH1SADD
    li s6, 0xA0000000 # rs1
    li s7, 0x30000000 # rs2
    li s8, 0xB0000000 # expected result
    ssh1sadd s9, s6, s7
    bne s9, s8, print_error

    # PSLLI.B
    li s6, 0x33221100 # rs1
    li s8, 0x98108800 # expected result
    pslli.b s9, s6, 3
    bne s9, s8, print_error

    # PSLL.BS
    li s6, 0x207F0201 # rs1
    li s7, 0x00000002 # rs2
    li s8, 0x80FC0804 # expected result
    psll.bs s9, s6, s7
    bne s9, s8, print_error

    # PSRLI.B
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    psrli.b s9, s6, 3
    bne s9, s8, print_error

    # PSRL.BS
    li s6, 0x80FF4080 # rs1
    li s7, 0x00000002 # rs2
    li s8, 0x203F1020 # expected result
    psrl.bs s9, s6, s7
    bne s9, s8, print_error

    # PSRAI.B
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    psrai.b s9, s6, 3
    bne s9, s8, print_error

    # PSRA.BS
    li s6, 0x80FF4080 # rs1
    li s7, 0x00000002 # rs2
    li s8, 0xE0FF10E0 # expected result
    psra.bs s9, s6, s7
    bne s9, s8, print_error

    # PMIN.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80FF80FF # expected result
    pmin.b s8, s6, s7
    bne s10, s8, print_error

    # PMINU.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7F007F00 # expected result
    pminu.b s8, s6, s7
    bne s10, s8, print_error

    # PMAX.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7F007F00 # expected result
    pmax.b s8, s6, s7
    bne s10, s8, print_error

    # PMAXU.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80FF80FF # expected result
    pmaxu.b s8, s6, s7
    bne s10, s8, print_error

    # PMSEQ.B
    li s6, 0x12340000 # rs1
    li s7, 0x12341000 # rs2
    li s8, 0xFFFF00FF # expected result
    pmseq.b s9, s6, s7
    bne s9, s8, print_error

    # PMSLT.B
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x000000FF # expected result
    pmslt.b s9, s6, s7
    bne s9, s8, print_error

    # PMSLTU.B
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x000000FF # expected result
    pmsltu.b s9, s6, s7
    bne s9, s8, print_error

    # PSEXT.H.B
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0066FFF4 # expected result
    psext.h.b s9, s6
    bne s9, s8, print_error

    # PSATI.H
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000FFFF0 # rs1
    psati.h s9, s6, 4 # -16 - 15
    bne s9, s8, print_error

    # PUSATI.H
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000F0000 # rs1
    pusati.h s9, s6, 4 # 0 - 15
    bne s9, s8, print_error

    # PSLLI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00008888 # expected result
    pslli.h s9, s6, 3
    bne s9, s8, print_error

    # PSLL.HS
    li s6, 0x80007FFF # rs1
    li s7, 0x00000003 # rs2
    li s8, 0x0000FFF8 # expectede result
    psll.hs s9, s6, s7
    bne s9, s8, print_error

    # PSRLI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    psrli.h s9, s6, 3
    bne s9, s8, print_error

    # PSRL.HS
    li s6, 0x80007FFF # rs1
    li s7, 0x00000003 # rs2
    li s8, 0x10000FFF # expected result
    psrl.hs s9, s6, s7
    bne s9, s8, print_error

    # PSRAI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    psrai.h s9, s6, 3
    bne s9, s8, print_error

    # PSRA.HS
    li s6, 0x8000FFF8 # rs1
    li s7, 0x00000003 # rs2
    li s8, 0xF000FFFF # expected result
    psra.hs s9, s6, s7
    bne s9, s8, print_error

    # PSSLAI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00007fff # expected result
    psslai.h s9, s6, 3
    bne s9, s8, print_error

    # PSRARI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    psrari.h s9, s6, 3
    bne s9, s8, print_error

    # PSSHA.HS
    li s6, 0x80007FFF # rs1
    li s7, 0x00000003 # rs2
    li s8, 0x80007FFF # expected result
    pssha.hs s9, s6, s7
    bne s9, s8, print_error

    # PSSHAR.HS
    li s6, 0x00027FFF # rs1
    li s7, 0x00000002 # rs2
    li s8, 0x00087FFF # expected result
    psshar.hs s9, s6, s7
    bne s9, s8, print_error

    # PMIN.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80008000 # expected result
    pmin.h s8, s6, s7
    bne s10, s8, print_error

    # PMINU.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7FFF7FFF # expected result
    pminu.h s8, s6, s7
    bne s10, s8, print_error

    # PMAX.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7FFF7FFF # expected result
    pmax.h s8, s6, s7
    bne s10, s8, print_error

    # PMAXU.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80008000 # expected result
    pmaxu.h s8, s6, s7
    bne s10, s8, print_error

    # PMSEQ.H
    li s6, 0x12340000 # rs1
    li s7, 0x12341000 # rs2
    li s8, 0xFFFF0000 # expected result
    pmseq.h s9, s6, s7
    bne s9, s8, print_error

    # PMSLT.H
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x0000FFFF # expected result
    pmslt.h s9, s6, s7
    bne s9, s8, print_error

    # PMSLTU.H
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x0000FFFF # expected result
    pmsltu.h s9, s6, s7
    bne s9, s8, print_error

    # SATI_32
    li s6, 0x80000000 # rs1
    li s8, 0xFFFFFFF0 # rs1
    sati s9, s6, 4 # -16 - 15
    bne s9, s8, print_error

    # USATI_32
    li s6, 0x80000000 # rs1
    li s8, 0x00000000 # rs1
    usati s9, s6, 4 # 0 - 15
    bne s9, s8, print_error

    # SSLAI
    li s6, 0x0000000F
    li s8, 0x00078000
    sslai s9, s6, 15
    bne s9, s8, print_error

    # SRARI
    li s6, 0x7FFF8008 # rs1
    li s8, 0x07FFF801 # expected result
    srari s9, s6, 4
    bne s9, s8, print_error


    # SSHA
    li s6, 0x80007FFF # rs1
    li s7, 0x0000000F # rs2
    li s8, 0x80000000 # expected result
    ssha s9, s6, s7
    bne s9, s8, print_error

    # SSHAR
    li s6, 0x80007FFF # rs1
    li s7, 0x0000000F # rs2
    li s8, 0x80000000 # expected result
    sshar s9, s6, s7
    bne s9, s8, print_error

    # MSEQ
    li s6, 0x12345678 # rs1
    li s7, 0x22334455 # rs2
    li s8, 0x00000000 # expected result
    mseq s9, s6, s7
    bne s9, s8, print_error

    # MSLT
    li s6, 0x00000000 # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000000 # expected result
    mslt s9, s6, s7
    bne s9, s8, print_error


    # MSLTU
    li s6, 0x00000000 # rs1
    li s7, 0x80000000 # rs2
    li s8, 0xFFFFFFFF # expected result
    msltu s9, s6, s7
    bne s9, s8, print_error

    # PPACK.H
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x44BB66DD # expected result
    ppack.h s9, s6, s7
    bne s9, s8, print_error

    # PPACKBT.H
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x33BB55DD # expected result
    ppackbt.h s9, s6, s7
    bne s9, s8, print_error

    # PPACKTB.H
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x44AA66CC # expected result
    ppacktb.h s9, s6, s7
    bne s9, s8, print_error

    # PPACKT.H
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x33AA55CC # expected result
    ppackt.h s9, s6, s7
    bne s9, s8, print_error

    # PACKBT_32
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x88883333 # expected result
    packbt s9, s6, s7
    bne s9, s8, print_error

    # PACKTB_32
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x77774444 # expected result
    packtb s9, s6, s7
    bne s9, s8, print_error

    # PACKT_32
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x88884444 # expeced result
    packt s9, s6, s7
    bne s9, s8, print_error

    # ABS
    li s6, 0xFFFFFFFF # rs1
    li s8, 0x00000001 # expected result
    abs s9, s6
    bne s9, s8, print_error

    # CLS
    li s6, 0x10000000 # rs1
    li s8, 0x00000002 # rs2
    cls s9, s6
    bne s9, s8, print_error

    # #REV(ERROR:no print)
    # li s6, 0x9ABCDEF0 #rs1
    # li s8, 0x0F7B3D59 #expected result
    # rev s9, s6
    # bne s9, s8, print_error

    # SLX
    li s6, 0x000000FF # rs1
    li s7, 0x00000008 # rs2
    li s9, 0x00001234 # rd
    li s8, 0x00123400 # expected result
    slx s9, s6, s7
    bne s9, s8, print_error

    # SRX
    li s6, 0x000000FF # rs1
    li s7, 0x00000008 # rs2
    li s9, 0x00123400 # rd
    li s8, 0xFF001234 # expected result
    srx s9, s6, s7
    bne s9, s8, print_error

    # MVM
    li s6, 0xAAAABBBB # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x12345678 # rd
    li s8, 0xAAAA5678 # expected result
    mvm s9, s6, s7
    bne s9, s8, print_error

    # MVMN
    li s6, 0xAAAABBBB # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x12345678 # rd
    li s8, 0x1234BBBB # expected result
    mvmn s9, s6, s7
    bne s9, s8, print_error

    # MERGE
    li s6, 0xAAAABBBB # rs1
    li s7, 0x12345678 # rs2
    li s9, 0x0000FFFF # rd
    li s8, 0xAAAA5678 # expected result
    merge s9, s6, s7
    bne s9, s8, print_error

    # PWADD.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s10, 0x00060008 # expected result
    li s11, 0xFFFFFFFF # expected result
    pwadd.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADDA.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x00060009 # expected result
    li s11, 0xFFFFFFFF # expected result
    pwadda.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADDU.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s10, 0x01060008 # expected result
    li s11, 0x00FF00FF # expected result
    pwaddu.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADDAU.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x01060009 # expected result
    li s11, 0x00FF00FF # expected result
    pwaddau.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUB.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F800703 # rs2
    li s10,    0x00000005 # expected result
    li s11, 0xFF0100FF # expected result
    pwsub.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUBA.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F800703 # rs2
    li s8, 0x00010001 # rd
    li s9, 0x00010001 # rd
    li s10, 0x00010006 # expected result
    li s11, 0xFF020100 # expected result
    pwsuba.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUBU.B
    li s6, 0x807FFF00 # rs1
    li s7, 0x7F8000FF # rs2
    li s10, 0x00FFFF01 # expected result
    li s11, 0x0001FFFF # expected result
    pwsubu.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUBAU.B
    li s6, 0x807FFF00 # rs1
    li s7, 0x7F8000FF # rs2
    li s8, 0x00010001 # rd
    li s9, 0x00010001 # rd
    li s10, 0x0100FF02 # expected result
    li s11, 0x00020000 # expected result
    pwsubau.b s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLLI.B
    li s6, 0x807FFF00 # rs1
    li s10, 0x0FF00000 # expected result
    li s11, 0x080007F0 # expected result
    pwslli.b s8, s6, 4
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLL.BS
    li s6, 0x807FFF00 # rs1
    li s7, 0x00000004 # rs2
    li s10, 0x0FF00000 # expected result
    li s11, 0x080007F0 # expected result
    pwsll.bs s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLAI.B
    li s6, 0x807FFF00 # rs1
    li s10, 0xFFF00000 # expected result
    li s11, 0xF80007F0 # expected result
    pwslai.b s8, s6, 4
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLA.BS
    li s6, 0x807FFF00 # rs1
    li s7, 0x00000004 # rs2
    li s10, 0xFFF00000 # expected result
    li s11, 0xF80007F0 # expected result
    pwsla.bs s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WZIP8P
    li s6, 0x7FFF8000 # rs1
    li s7, 0x807F00FF # rs2
    li s10, 0x0080FF00 # expected result
    li s11, 0x807F7FFF # expected result
    wzip8p s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00007FFE # expected result
    pwadd.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00007FFF # expected result
    pwadda.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADDU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x00017FFE # expected result
    pwaddu.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWADDAU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x00017FFF # expected result
    pwaddau.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUB.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s10, 0xFFFF0001 # expected result
    li s11, 0x00008000 # expected result
    pwsub.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUBA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001
    li s10, 0xFFFF0002 # expected result
    li s11, 0x00008001 # expected result
    pwsuba.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUBU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0x7FFF7FFF # rs2
    li s10, 0x00000001 # expected result
    li s11, 0x00008000 # expected result
    pwsubu.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSUBAU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0x7FFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000002 # expected result
    li s11, 0x00008001 # expected result
    pwsubau.h s8, s6,s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLLI.H
    li s6, 0x7FFF8000 # rs1
    li s10, 0x00800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwslli.h s8, s6, 8
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLL.HS
    li s6, 0x7FFF8000 # rs1
    li s7, 0x00000008 # rs2
    li s10, 0x00800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwsll.hs s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLAI.H
    li s6, 0x7FFF8000 # rs1
    li s10, 0xFF800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwslai.h s8, s6, 8
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PWSLA.HS
    li s6, 0x7FFF8000 # rs1
    li s7, 0x00000008 # rs2
    li s10, 0xFF800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwsla.hs s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WZIP16P
    li s6, 0x7FFF8000 # rs1
    li s7, 0x80FF007F # rs2
    li s10, 0x007F8000 # expected result
    li s11, 0x80FF7FFF # expected result
    wzip16p s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WADD
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0xFFFFFFFF # expected result
    wadd s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WADDA
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000001 # expected result
    wadda s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WADDU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00000000 # expected result
    waddu s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WADDAU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000002 # expected result
    waddau s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSUB
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00000000 # expected result
    wsub s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSUBA
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000001 # expected result
    wsuba s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSUBU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0xFFFFFFFF # expected result
    wsubu s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSUBAU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000000 # expected result
    wsubau s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSLLI
    li s6, 0xFFFFFFFF # rs1
    li s10, 0xFFFF0000 # expected result
    li s11, 0x0000FFFF # expected result
    wslli s8, s6, 16
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSLL
    li s6, 0xFFFFFFFF # rs1
    li s7, 0x00000010 # rs2
    li s10, 0xFFFF0000 # expected result
    li s11, 0x0000FFFF # expected result
    wsll s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSLAI
    li s6, 0xFFFFFFFF # rs1
    li s10, 0xFFFF0000 # expected result
    li s11, 0xFFFFFFFF # expected result
    wslai s8, s6, 16
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WSLA
    li s6, 0xFFFFFFFF # rs1
    li s7, 0x00000010 # rs2
    li s10, 0xFFFF0000 # expected result
    li s11, 0xFFFFFFFF # expected result
    wsla s8, s6, s7
    bne s8, s10, print_error
    bne s9, s11, print_error

    # PREDSUM.DBS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0x000000058 # expected result
    predsum.dbs s9, s6, s8
    bne s9, s10, print_error


    # PREDSUMU.DBS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0x000000358 # expected result
    predsumu.dbs s9, s6, s8
    bne s9, s10, print_error

    # PREDSUM.DHS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0xFFFF0455 # expected result
    predsum.dhs s9, s6, s8
    bne s9, s10, print_error

    # #PREDSUMU.DHS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0x00020455 # expected result
    predsumu.dhs s9, s6, s8
    bne s9, s10, print_error

    # PNSRLI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x12560710 # expected result
    pnsrli.b s9, s6, 4
    bne s9, s10, print_error

    # PNSRL.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000004 # rs2
    li s10, 0x12560710 # expected result
    pnsrl.bs s9, s6, s8
    bne s9, s10, print_error

    # PNSRAI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x0004F800 # expected result
    pnsrai.b s9, s6, 12
    bne s9, s10, print_error

    # PNSRA.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x0004F800 # expected result
    pnsra.bs s9, s6, s8
    bne s9, s10, print_error

    # #PNSRARI.B(ERROR: pnsrari.b is declared as pnsari.b)
    # li s6, 0x807F0102 #rs1_l
    # li s7, 0x01234567 #rs1_h
    # li s10, 0x0004F800 #expected result
    # pnsrari.b s9, s6, 12
    # bne s9, s10, print_error

    # PNSRAR.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x0004F800 # expected result
    pnsrar.bs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01458001 # expected result
    pnclipi.b s9, s6, 8
    bne s9, s10, print_error

    # PNCLIP.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x01458001 # expected result
    pnclip.bs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPRI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01458001 # expected result
    pnclipri.b s9, s6, 8
    bne s9, s10, print_error

    # PNCLIPR.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x01458001 # expected result
    pnclipr.bs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPIU.B
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x014580FF # expected result
    pnclipiu.b s9, s6, 8
    bne s9, s10, print_error

    # PNCLIPU.BS
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008
    li s10, 0x014580FF # expected result
    pnclipu.bs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPRIU.B
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x00040810 # expected result
    pnclipriu.b s9, s6, 12
    bne s9, s10, print_error

    # PNCLIPRU.BS
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x00040810 # expected result
    pnclipru.bs s9, s6, s8
    bne s9, s10, print_error

    # PNSRLI.H
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF807F # expected result
    pnsrli.h s9, s6, 16
    bne s9, s10, print_error

    # PNSRL.HS
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000010 # rs2
    li s10, 0x7FFF807F # expected result
    pnsrl.hs s9, s6, s8
    bne s9, s10, print_error

    # PNSRAI.H
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF807F # expected result
    pnsrai.h s9, s6, 16
    bne s9, s10, print_error

    # PNSRA.HS
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000010 # rs2
    li s10, 0x7FFF807F # expected result
    pnsra.hs s9, s6, s8
    bne s9, s10, print_error

    # #PNSRARI.H(ERROR: pnsrari.h was declared as pnsari.h)
    # li s6, 0x807FFF03 #rs1_l
    # li s7, 0x7FFF8000 #rs1_h
    # li s10, 0x80008080 #expected result
    # pnsari.h s9, s6, 16
    # bne s9, s10, print_error

    # PNSRAR.HS
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000010 # rs2
    li s10, 0x80008080 # expected result
    pnsrar.hs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPI.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x7FFF8000 # expected result
    pnclipi.h s9, s6, 8
    bne s9, s10, print_error


    # PNCLIP.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x7FFF8000 # expected result
    pnclip.hs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPRI.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x7FFF8000 # expected result
    pnclipri.h s9, s6, 8
    bne s9, s10, print_error

    # PNCLIPR.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x7FFF8000 # expected result
    pnclipr.hs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPIU.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x1234FFFF # expected result
    pnclipiu.h s9, s6, 12
    bne s9, s10, print_error

    # PNCLIPU.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x1234FFFF # expected result
    pnclipu.hs s9, s6, s8
    bne s9, s10, print_error

    # PNCLIPRIU.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x1234FFFF # expected result
    pnclipriu.h s9, s6, 12
    bne s9, s10, print_error

    # PNCLIPRU.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x1234FFFF # expected result
    pnclipru.hs s9, s6, s8
    bne s9, s10, print_error

    # NSRLI
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01234567 # expected result
    nsrli s9, s6, 32
    bne s9, s10, print_error

    # NSRL
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x89ABCDEF # expected result
    nsrl s9, s6, s8
    bne s9, s10, print_error

    # NSRAI
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s10, 0x89ABCDEF # expected result
    nsrai s9, s6, 32
    bne s9, s10, print_error

    # NSRA
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x89ABCDEF # expected result
    nsra s9, s6, s8
    bne s9, s10, print_error

    # NSRARI
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01234568 # expected result
    nsrari s9, s6, 32
    bne s9, s10, print_error

    # NSRAR
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x89ABCDEF # expected result
    nsrar s9, s6, s8
    bne s9, s10, print_error

    # NCLIPI
    li s6, 0x7FFF8000 # rs1_l
    li s7, 0xFFFF0001 # rs1_h
    li s10, 0xFFFF0001 # expected result
    nclipi s9, s6, 32
    bne s9, s10, print_error

    # NCLIP
    li s6, 0x7FFF8000 # rs1_l
    li s7, 0xFFFF0001 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0xFFFF0001 # expected result
    nclip s9, s6, s8
    bne s9, s10, print_error

    # NCLIPRI
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF8001 # expected result
    nclipri s9, s6, 32
    bne s9, s10, print_error

    # NCLIPR
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x7FFF8001 # expected result
    nclipr s9, s6, s8
    bne s9, s10, print_error

    # NCLIPIU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF8000 # expected result
    nclipiu s9, s6, 32
    bne s9, s10, print_error

    # NCLIPU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x7FFF8000 # expected result
    nclipu s9, s6, s8
    bne s9, s10, print_error

    # NCLIPRIU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF8001 # expected result
    nclipriu s9, s6, 32
    bne s9, s10, print_error

    # NCLIPRU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x7FFF8001 # expected result
    nclipru s9, s6, s8
    bne s9, s10, print_error

    # PMULH.H
    li s6, 0x7FFF0002 # rs1
    li s7, 0x7FFF0003 # rs2
    li s8, 0x3FFF0000 # expected result
    pmulh.h s9, s6, s7
    bne s9, s8, print_error

    # PMULHR.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s8, 0x3FFF4000 # expected result
    pmulhr.h s9, s6, s7
    bne s9, s8, print_error

    # PMULHSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x7FFEFFFF # expected result
    pmulhsu.h s9, s6, s7
    bne s9, s8, print_error

    # PMULHRSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x7FFF0000 # expected result
    pmulhrsu.h s9, s6, s7
    bne s9, s8, print_error

    # PMULHU.H
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x3FFF0000 # expected result
    pmulhu.h s9, s6, s7
    bne s9, s8, print_error

    # PMULHRU.H
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x40000001 # expected result
    pmulhru.h s9, s6, s7
    bne s9, s8, print_error

    # PMULQ.H
    li s6, 0x7FFF0001 # rs1
    li s7, 0x8000FFFF # rs2
    li s10, 0x8001ffff # expected result
    pmulq.h s8, s6, s7
    bne s10, s8, print_error

    # PMULQR.H
    li s6, 0x80007FFF # rs1
    li s7, 0x80007FFF # rs2
    li s8, 0x7FFF7FFE # expected result
    pmulqr.h s9, s6, s7
    bne s9, s8, print_error

    # PMHACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x40004001 # expected result
    pmhacc.h s9, s6, s7
    bne s9, s8, print_error

    # PMHRACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x40004002 # expected result
    pmhracc.h s9, s6, s7
    bne s9, s8, print_error

    # PMHACCSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x7FFF0001 # expected result
    pmhaccsu.h s9, s6, s7
    bne s9, s8, print_error

    # PMHRACCSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x80000002 # expected result
    pmhraccsu.h s9, s6, s7
    bne s9, s8, print_error

    # PMHACCU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0xFFFF0002 # expected result
    pmhaccu.h s9, s6, s7
    bne s9, s8, print_error

    # PMHRACCU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0xFFFF0003 # expected result
    pmhraccu.h s9, s6, s7
    bne s9, s8, print_error

    # MULHR
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000000 # expected result
    mulhr s9, s6, s7
    bne s9, s8, print_error

    # MULHRSU
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000001 # expected result
    mulhrsu s9, s6, s7
    bne s9, s8, print_error

    # MULHRU
    li s6, 0xFFFFFFFF # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0xFFFFFFFE # expected result
    mulhru s9, s6, s7
    bne s9, s8, print_error

    # MULQ
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0xFFFFFFFF # expected result
    mulq s9, s6, s7
    bne s9, s8, print_error

    # MULQR
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000000 # expected result
    mulqr s9, s6, s7
    bne s9, s8, print_error

    # MHACC
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000000 # expected result
    mhacc s9, s6, s7
    bne s9, s8, print_error

    # MHRACC
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    mhracc s9, s6, s7
    bne s9, s8, print_error

    # MHACCSU
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    mhaccsu s9, s6, s7
    bne s9, s8, print_error

    # MHRACCSU
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000002 # expected result
    mhraccsu s9, s6, s7
    bne s9, s8, print_error

    # MHACCU
    li s6, 0xFFFFFFFF # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFFFFFF # expected result
    mhaccu s9, s6, s7
    bne s9, s8, print_error

    # MHRACCU
    li s6, 0xFFFFFFFF # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFFFFFF # expected result
    mhraccu s9, s6, s7
    bne s9, s8, print_error

    # MQACC.H00
    li s6, 0x00008000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqacc.h00 s9, s6, s7
    bne s9, s8, print_error

    # MQACC.H01
    li s6, 0x00007FFF # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqacc.h01 s9, s6, s7
    bne s9, s8, print_error

    # MQACC.H11
    li s6, 0x7FFF8000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqacc.h11 s9, s6, s7
    bne s9, s8, print_error


    # MQRACC.H00
    li s6, 0x00008000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqracc.h00 s9, s6, s7
    bne s9, s8, print_error

    # MQRACC.H01
    li s6, 0x00007FFF # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqracc.h01 s9, s6, s7
    bne s9, s8, print_error

    # MQRACC.H11
    li s6, 0x7FFF8000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqracc.h11 s9, s6, s7
    bne s9, s8, print_error

    # PMQ2ADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s8, 0x0000FFFD # expected result
    pmq2add.h s9, s6, s7
    bne s9, s8, print_error

    # PMQ2ADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00000002 # rd
    li s8, 0x0000FFFF # expected result
    pmq2adda.h s9, s6, s7
    bne s9, s8, print_error

    # PMQR2ADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s8, 0x0000FFFD # expected result
    pmqr2add.h s9, s6, s7
    bne s9, s8, print_error

    # PMQR2ADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00000002 # rd
    li s8, 0x0000FFFF # expected result
    pmqr2adda.h s9, s6, s7
    bne s9, s8, print_error

    # PMUL.H.B00
    li s6, 0x7F80017F # rs1
    li s7, 0x7F018001 # rs2
    li s8, 0xFF80007F # expected result
    pmul.h.b00 s9, s6, s7
    bne s9, s8, print_error

    # PMUL.H.B01
    li s6, 0x7F80017F # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0xFF80007F # expected result
    pmul.h.b01 s9, s6, s7
    bne s9, s8, print_error

    # PMUL.H.B11
    li s6, 0x80667F88 # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0xFF80007F # expected result
    pmul.h.b11 s9, s6, s7
    bne s9, s8, print_error

    # PMULSU.H.B00
    li s6, 0x7F80017F # rs1
    li s7, 0x7F018001 # rs2
    li s8, 0xFF80007F # expected result
    pmulsu.h.b00 s9, s6, s7
    bne s9, s8, print_error

    # PMULSU.H.B11
    li s6, 0x807F7F04 # rs1
    li s7, 0x017F0108 # rs2
    li s8, 0xFF80007F # expected result
    pmulsu.h.b11 s9, s6, s7
    bne s9, s8, print_error

    # PMULU.H.B00
    li s6, 0x7F80017F # rs1
    li s7, 0x7F018001 # rs2
    li s8, 0x0080007F # expected result
    pmulu.h.b00 s9, s6, s7
    bne s9, s8, print_error

    # PMULU.H.B01
    li s6, 0x7F80017F # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0x0080007F # expected result
    pmulu.h.b01 s9, s6, s7
    bne s9, s8, print_error

    # PMULU.H.B11
    li s6, 0x80807F7F # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0x0080007F # expected result
    pmulu.h.b11 s9, s6, s7
    bne s9, s8, print_error

    # MUL.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x3FFF0001 # expected result
    mul.h00 s9, s6, s7
    bne s9, s8, print_error

    # MUL.H01
    li s6, 0xFFFF7FFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s8, 0x3FFF0001 # expected result
    mul.h01 s9, s6, s7
    bne s9, s8, print_error

    # MUL.H11
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s8, 0x3FFF0001 # expected result
    mul.h11 s9, s6, s7
    bne s9, s8, print_error

    # MULSU.H00
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0xFFFF8000 # expected result
    mulsu.h00 s9, s6, s7
    bne s9, s8, print_error

    # MULSU.H11
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0xC0008000 # expected result
    mulsu.h11 s9, s6, s7
    bne s9, s8, print_error

    # MULU.H00
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0x7FFF8000 # expected result
    mulu.h00 s9, s6, s7
    bne s9, s8, print_error

    # MULU.H01
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0x7FFE8001 # expected result
    mulu.h01 s9, s6, s7
    bne s9, s8, print_error

    # MULU.H11
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0x3FFF8000 # expected result
    mulu.h11 s9, s6, s7
    bne s9, s8, print_error

    # MACC.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xBFFF0000 # expected result
    macc.h00 s9, s6, s7
    bne s9, s8, print_error

    # MACC.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0x40008000 # expected result
    macc.h00 s9, s6, s7
    bne s9, s8, print_error

    # MACC.H01
    li s6, 0xFFFF7FFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xBFFF0000 # expected result
    macc.h01 s9, s6, s7
    bne s9, s8, print_error

    # MACC.H11
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xBFFF0000 # expected result
    macc.h11 s9, s6, s7
    bne s9, s8, print_error

    # MACCSU.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0xBFFF8000 # expected result
    maccsu.h00 s9, s6, s7
    bne s9, s8, print_error

    # MACCSU.H11
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x8000FFFF # rs2
    li s9, 0x80000000 # rd
    li s8, 0xBFFF8000 # expected result
    maccsu.h11 s9, s6, s7
    bne s9, s8, print_error

    # MACCU.H00
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0xFFFF8000 # expected result
    maccu.h00 s9, s6, s7
    bne s9, s8, print_error

    # MACCU.H01
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0x7FFE0001 # expected result
    maccu.h01 s9, s6, s7
    bne s9, s8, print_error

    # MACCU.H11
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0xFFFE8001 # expected result
    maccu.h11 s9, s6, s7
    bne s9, s8, print_error

    # PM2ADD.H
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s8, 0x80000000 # expected result
    pm2add.h s9, s6, s7
    bne s9, s8, print_error

    # PM2ADDA.H
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x7FFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xFFFE0001 # expected result
    pm2adda.h s9, s6, s7
    bne s9, s8, print_error

    # PM2ADDSU.H
    li s6, 0xFFFF0002 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x0001FFFD # expected result
    pm2addsu.h s9, s6, s7
    bne s9, s8, print_error

    # PM2ADDASU.H
    li s6, 0xFFFF0002 # rs1
    li s7, 0x0001FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x0001FFFE # expected result
    pm2addasu.h s9, s6, s7
    bne s9, s8, print_error

    # PM2ADDU.H
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s8, 0x80000000 # expected result
    pm2addu.h s9, s6, s7
    bne s9, s8, print_error

    # PM2ADDAU.H
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s9, 0x00000010 # rd
    li s8, 0x80000010 # expected result
    pm2addau.h s9, s6, s7
    bne s9, s8, print_error

    # PM2ADD.HX
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s8, 0x80000000 # expected result
    pm2add.hx s9, s6, s7
    bne s9, s8, print_error

    # PM2ADDA.HX
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x7FFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xFFFE0001 # expected result
    pm2adda.hx s9, s6, s7
    bne s9, s8, print_error

    # PM2SADD.H
    li s6, 0x00017FFF # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x3FFF0002 # expected result
    pm2sadd.h s9, s6, s7
    bne s9, s8, print_error

    # PM2SADD.HX
    li s6, 0x7FFF0001 # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x3FFF0002 # expected result
    pm2sadd.hx s9, s6, s7
    bne s9, s8, print_error

    # #PM2SUB.H
    li s6, 0x00017FFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x00000000 # expected result
    pm2sub.h s9, s6, s7
    bne s9, s8, print_error

    # PM2SUBA.H
    li s6, 0x00017FFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    pm2suba.h s9, s6, s7
    bne s9, s8, print_error

    # PM2SUB.HX
    li s6, 0x7FFF0001 # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x00000000 # expected result
    pm2sub.hx s9, s6, s7
    bne s9, s8, print_error

    # PM2SUBA.HX
    li s6, 0x00010001 # rs1
    li s7, 0x0001FFFF # rs2
    li s9, 0x00000005 # rd
    li s8, 0x00000007 # expected result
    pm2suba.hx s9, s6, s7
    bne s9, s8, print_error

    # PM4ADD.B
    li s6, 0x80030201 # rs1
    li s7, 0x01030201 # rs2
    li s8, 0xFFFFFF8E # expected result
    pm4add.b s9, s6, s7
    bne s9, s8, print_error

    # PM4ADDA.B
    li s6, 0x04030201 # rs1
    li s7, 0x04030201 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x0000001F # expected result
    pm4adda.b s9, s6, s7
    bne s9, s8, print_error

    # PM4ADDSU.B
    li s6, 0x01030201 # rs1
    li s7, 0x80030201 # rs2
    li s8, 0x0000008E # expected result
    pm4addsu.b s9, s6, s7
    bne s9, s8, print_error

    # PM4ADDASU.B
    li s6, 0x80808080 # rs1
    li s7, 0x80808080 # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF0001 # expected result
    pm4addasu.b s9, s6, s7
    bne s9, s8, print_error

    # PM4ADDU.B
    li s6, 0x80030201 # rs1
    li s7, 0x01030201 # rs2
    li s8, 0x0000008E # expected result
    pm4addu.b s9, s6, s7
    bne s9, s8, print_error

    # PM4ADDAU.B
    li s6, 0x80808080 # rs1
    li s7, 0x80808080 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00010001 # expected result
    pm4addau.b s9, s6, s7
    bne s9, s8, print_error

    # PMULH.H.B0
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s8, 0x007FC080 # expected result
    pmulh.h.b0 s9, s6, s7
    bne s9, s8, print_error

    # PMULH.H.B1
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s8, 0x007FC080 # expected result
    pmulh.h.b1 s9, s6, s7
    bne s9, s8, print_error

    # PMULHSU.H.B0
    li s6, 0x0010FFFF # rs1
    li s7, 0x01800001 # rs2
    li s8, 0x0008FFFF # expected result
    pmulhsu.h.b0 s9, s6, s7
    bne s9, s8, print_error

    # PMULHSU.H.B1
    li s6, 0x0010FFFF # rs1
    li s7, 0x8001017F # rs2
    li s8, 0x0008FFFF # expected result
    pmulhsu.h.b1 s9, s6, s7
    bne s9, s8, print_error

    # PMHACC.H.B0
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhacc.h.b0 s9, s6, s7
    bne s9, s8, print_error

    # PMHACC.H.B1
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhacc.h.b1 s9, s6, s7
    bne s9, s8, print_error

    # PMHACCSU.H.B0
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhaccsu.h.b0 s9, s6, s7
    bne s9, s8, print_error

    # PMHACCSU.H.B1
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhaccsu.h.b1 s9, s6, s7
    bne s9, s8, print_error

    # MULH.H0
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0xFFFFFFFF # expected result
    mulh.h0 s9, s6, s7
    bne s9, s8, print_error

    # MULH.H1
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s8, 0xFFFFFFFF # expected result
    mulh.h1 s9, s6, s7
    bne s9, s8, print_error

    # MULHSU.H0
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x7FFF7FFF # expected result
    mulhsu.h0 s9, s6, s7
    bne s9, s8, print_error

    # MULHSU.H1
    li s6, 0x80000000 # rs1
    li s7, 0xFFFF0000 # rs2
    li s8, 0x80008000 # expected result
    mulhsu.h1 s9, s6, s7
    bne s9, s8, print_error

    # MHACC.H0
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000000 # expected result
    mhacc.h0 s9, s6, s7
    bne s9, s8, print_error


    # MHACC.H1
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000000 # expected result
    mhacc.h1 s9, s6, s7
    bne s9, s8, print_error

    # MHACCSU.H0
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    mhaccsu.h0 s9, s6, s7
    bne s9, s8, print_error

    # MHACCSU.H1
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7FFF8000 # expected result
    mhaccsu.h1 s9, s6, s7
    bne s9, s8, print_error

    # PWMUL.B
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x01440a90 # expected result
    pwmul.b s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMULSU.B
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x01440a90 # expected result
    pwmulsu.b s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMULU.B
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x000000FF # expected result
    li s11, 0x01440a90 # expected result
    pwmulu.b s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PMQWACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000000 # expected result
    pmqwacc.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PMQRWACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000000 # expected result
    pmqrwacc.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMUL.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x014b5a90 # expected result
    pwmul.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMULSU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x014b5a90 # expected result
    pwmulsu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMULU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x014b5a90 # expected result
    pwmulu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMACC.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x014b5a91 # expected result
    pwmacc.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMACCSU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x014b5a91 # expected result
    pwmaccsu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PWMACCU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x014b5a91 # expected result
    pwmaccu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x00000000 # expected result
    pm2wadd.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADDSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x8000FFFF # expected result
    li s11, 0xFFFFFFFF # expected result
    pm2waddsu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADDU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x7FFFFFFF # expected result
    li s11, 0x00000000 # expected result
    pm2waddu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADD.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x00000000 # expected result
    pm2wadd.hx s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WSUB.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x00000001 # expected result
    li s11, 0x00000000 # expected result
    pm2wsub.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WSUB.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s10, 0x00000001 # expected result
    li s11, 0x00000000 # expected result
    pm2wsub.hx s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x10000000 # expected result
    pm2wadda.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADDASU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x80010000 # expected result
    li s11, 0x0FFFFFFF # expected result
    pm2waddasu.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADDAU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x80000000 # rd
    li s9, 0x00000001 # rd
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00000001 # expected result
    pm2waddau.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WADDA.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x10000000 # expected result
    pm2wadda.hx s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WSUBA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00000002 # expected result
    li s11, 0x10000000 # expected result
    pm2wsuba.h s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # PM2WSUBA.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00000002 # expected result
    li s11, 0x10000000 # expected result
    pm2wsuba.hx s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # #MQWACC(ERROR: mqwacc was declared as pmqwacc)
    # li s6, 0x7FFFFFFF #rs1
    # li s7, 0x80000000 #rs2
    # li s8, 0x00000001 #rd
    # li s9, 0x00000000 #rd
    # li s10, 0x80000002 #expected result
    # li s11, 0xFFFFFFFF #expected result
    # pmqwacc    s8, s6, s7
    # bne s10, s8, print_error
    # bne s11, s9, print_error

    # #MQRWACC(ERROR:mqrwacc was declared as pmqrwacc)
    # li s6, 0x7FFFFFFF #rs1
    # li s7, 0x80000000 #rs2
    # li s8, 0x00000001 #rd
    # li s9, 0x00000000 #rd
    # li s10, 0x80000002 #expected result
    # li s11, 0xFFFFFFFF #expected result
    # pmqrwacc s8, s6, s7
    # bne s10, s8, print_error
    # bne s11, s9, print_error

    # WMUL
    li s6, 0x7fffffff
    li s7, 0x80000000
    li s8, 0x80000000
    li s9, 0xC0000000
    wmul s10, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # WMULSU
    li s6, 0x7fffffff
    li s7, 0x80000000
    li s8, 0x80000000
    li s9, 0x3FFFFFFF
    wmulsu s10, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # WMULU
    li s6, 0x7fffffff
    li s7, 0x80000000
    li s8, 0x80000000
    li s9, 0x3FFFFFFF
    wmulu s10, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # WMACC
    li s6, 0x00000002
    li s7, 0x00000002
    li s8, 0x11111111
    li s9, 0x11111111
    li s10, 0x11111115
    li s11, 0x11111111
    wmacc s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WMACCSU
    li s6, 0x00000001
    li s7, 0xFFFFFFFF
    li s8, 0x00000000
    li s9, 0x11111111
    li s10, 0xFFFFFFFF
    li s11, 0x11111111
    wmaccsu s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # WMACCU
    li s6, 0x80000000
    li s7, 0xFFFFFFFF
    li s8, 0x00000001
    li s9, 0x10000000
    li s10, 0x80000001
    li s11, 0x8FFFFFFF
    wmaccu s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # prepare for the loop
    li      s1, 0x10000000 # UART output register
    la      s2, pass # load string start addr into s2
    addi    s3, s2, 8 # set up string end addr in s3
    jal     loop
print_error:
    li      s1, 0x10000000 # UART output register
    la      s2, error # load string start addr into s2
    addi    s3, s2, 13 # set up string end addr in s3
loop:
    lb      s4, 0(s2) # load next byte at s2 into s4
    sb      s4, 0(s1) # write byte to UART register
    addi    s2, s2, 1 # increase s2
    blt     s2, s3, loop # branch back until end addr (s3) reached
forever:
    wfi
    j       forever

.section .data

pass:
    .string "passed!\n"
error:
    .string "error!\n"
