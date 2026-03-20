.global _start

_start:
    li s5, 0              # failure count

    # PADD.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xFE46000A # expected result
    padd.b s9, s6, s7
    bne s9, s8, test_fail_0
    j test_continue_0
test_fail_0:
    la a0, test_name_0
    jal ra, report_error
test_continue_0:

    # PADD.BS
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x8619070A # expected result
    padd.bs s9, s6, s7
    bne s9, s8, test_fail_1
    j test_continue_1
test_fail_1:
    la a0, test_name_1
    jal ra, report_error
test_continue_1:

    # PSUB.B
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xeeee00ff # expected result
    psub.b s9, s6, s7
    bne s9, s8, test_fail_2
    j test_continue_2
test_fail_2:
    la a0, test_name_2
    jal ra, report_error
test_continue_2:

    # PSADD.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F46000a # expected result
    psadd.b s9, s6, s7
    bne s9, s8, test_fail_3
    j test_continue_3
test_fail_3:
    la a0, test_name_3
    jal ra, report_error
test_continue_3:

    # PSADDU.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xFE46000a # expected result
    psaddu.b s9, s6, s7
    bne s9, s8, test_fail_4
    j test_continue_4
test_fail_4:
    la a0, test_name_4
    jal ra, report_error
test_continue_4:

    # PSSUB.B
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000102 # expected result
    pssub.b s9, s6, s7
    bne s9, s8, test_fail_5
    j test_continue_5
test_fail_5:
    la a0, test_name_5
    jal ra, report_error
test_continue_5:

    # PSSUBU.B
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x0000ffff # expected result
    pssubu.b s9, s6, s7
    bne s9, s8, test_fail_6
    j test_continue_6
test_fail_6:
    la a0, test_name_6
    jal ra, report_error
test_continue_6:

    # PAADD.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F230005 # expected result
    paadd.b s9, s6, s7
    bne s9, s8, test_fail_7
    j test_continue_7
test_fail_7:
    la a0, test_name_7
    jal ra, report_error
test_continue_7:

    # PAADDU.B
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7f230005 # expected result
    paaddu.b s9, s6, s7
    bne s9, s8, test_fail_8
    j test_continue_8
test_fail_8:
    la a0, test_name_8
    jal ra, report_error
test_continue_8:

    # PASUB.B
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xF7f700FF # expected result
    pasub.b s9, s6, s7
    bne s9, s8, test_fail_9
    j test_continue_9
test_fail_9:
    la a0, test_name_9
    jal ra, report_error
test_continue_9:

    # PASUBU.B
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0x777700FF # expected result
    pasubu.b s9, s6, s7
    bne s9, s8, test_fail_10
    j test_continue_10
test_fail_10:
    la a0, test_name_10
    jal ra, report_error
test_continue_10:

    # pabd.B
    li s6, 0x7F7F01FF # rs1
    li s7, 0x7F70FF7E # rs2
    li s8, 0x000F027F # expected result
    pabd.b s9, s6, s7
    bne s9, s8, test_fail_11
    j test_continue_11
test_fail_11:
    la a0, test_name_11
    jal ra, report_error
test_continue_11:

    # pabdU.B
    li s6, 0x807F01FF # rs1
    li s7, 0x7F01FFFE # rs2
    li s8, 0x017EFE01 # expected result
    pabdu.b s9, s6, s7
    bne s9, s8, test_fail_12
    j test_continue_12
test_fail_12:
    la a0, test_name_12
    jal ra, report_error
test_continue_12:

    # PSABS.B
    li s6, 0x00007FFF # rs1
    li s8, 0x00007F01 # expected result
    psabs.b s9, s6
    bne s9, s8, test_fail_13
    j test_continue_13
test_fail_13:
    la a0, test_name_13
    jal ra, report_error
test_continue_13:

    # PREDSUM.BS
    li s6, 0x7EFF0180 # rs1
    li s7, 0x00000001 # rs2
    li s8, 0xFFFFFFFF # expected result
    predsum.bs s9, s6, s7
    bne s9, s8, test_fail_14
    j test_continue_14
test_fail_14:
    la a0, test_name_14
    jal ra, report_error
test_continue_14:

    # PREDSUMU.BS
    li s6, 0x7EFF0180 # rs1
    li s7, 0x00000001 # rs2
    li s8, 0x000001FF # expected result
    predsumu.bs s9, s6, s7
    bne s9, s8, test_fail_15
    j test_continue_15
test_fail_15:
    la a0, test_name_15
    jal ra, report_error
test_continue_15:

    # PABDSUMU.B
    li s6, 0x807FFFFF # rs1
    li s7, 0x7F0101FE # rs2
    li s8, 0x0000017E # expected result
    pabdsumu.b s9, s6, s7
    bne s9, s8, test_fail_16
    j test_continue_16
test_fail_16:
    la a0, test_name_16
    jal ra, report_error
test_continue_16:

    # PADBSUMAU.B
    li s6, 0x807FFFFF # rs1
    li s7, 0x7F0101FE # rs2
    li s9, 0x00000001 # rd
    li s8, 0x0000017F # expected result
    pabdsumau.b s9, s6, s7
    bne s9, s8, test_fail_17
    j test_continue_17
test_fail_17:
    la a0, test_name_17
    jal ra, report_error
test_continue_17:

    # PADD.HS
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F19000a # expected result
    padd.hs s9, s6, s7
    bne s9, s8, test_fail_18
    j test_continue_18
test_fail_18:
    la a0, test_name_18
    jal ra, report_error
test_continue_18:

    # PADD.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xfe46000a # expected result
    padd.h s9, s6, s7
    bne s9, s8, test_fail_19
    j test_continue_19
test_fail_19:
    la a0, test_name_19
    jal ra, report_error
test_continue_19:

    # PSUB.H
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xeeeeffff # expected result
    psub.h s9, s6, s7
    bne s9, s8, test_fail_20
    j test_continue_20
test_fail_20:
    la a0, test_name_20
    jal ra, report_error
test_continue_20:

    # PSADD.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7FFF000a # expected result
    psadd.h s9, s6, s7
    bne s9, s8, test_fail_21
    j test_continue_21
test_fail_21:
    la a0, test_name_21
    jal ra, report_error
test_continue_21:

    # PSADDU.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0xFE46000a # expected result
    psaddu.h s9, s6, s7
    bne s9, s8, test_fail_22
    j test_continue_22
test_fail_22:
    la a0, test_name_22
    jal ra, report_error
test_continue_22:

    # PSSUB.H
    li s6, 0x80007fff # rs1
    li s7, 0x7fff8000 # rs2
    li s8, 0x80007fff # expected result
    pssub.h s9, s6, s7
    bne s9, s8, test_fail_23
    j test_continue_23
test_fail_23:
    la a0, test_name_23
    jal ra, report_error
test_continue_23:

    # PSSUBU.H
    li s6, 0x80007fff # rs1
    li s7, 0x7fff8000 # rs2
    li s8, 0x0001ffff # expected result
    pssubu.h s9, s6, s7
    bne s9, s8, test_fail_24
    j test_continue_24
test_fail_24:
    la a0, test_name_24
    jal ra, report_error
test_continue_24:

    # PAADD.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F230005 # expected result
    paadd.h s9, s6, s7
    bne s9, s8, test_fail_25
    j test_continue_25
test_fail_25:
    la a0, test_name_25
    jal ra, report_error
test_continue_25:

    # PAADDU.H
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7f230005 # expected result
    paaddu.h s9, s6, s7
    bne s9, s8, test_fail_26
    j test_continue_26
test_fail_26:
    la a0, test_name_26
    jal ra, report_error
test_continue_26:

    # PASUB.H
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0xF777FFFF # expected result
    pasub.h s9, s6, s7
    bne s9, s8, test_fail_27
    j test_continue_27
test_fail_27:
    la a0, test_name_27
    jal ra, report_error
test_continue_27:

    # PASUBU.H
    li s6, 0xFFFF0000 # rs1
    li s7, 0x11110001 # rs2
    li s8, 0x7777FFFF # expected result
    pasubu.h s9, s6, s7
    bne s9, s8, test_fail_28
    j test_continue_28
test_fail_28:
    la a0, test_name_28
    jal ra, report_error
test_continue_28:

    # PSH1ADD.H
    li s6, 0x07FFFFFF # rs1
    li s7, 0x80007FFF # rs2
    li s8, 0x8FFE7FFD # expected result
    psh1add.h s9, s6, s7
    bne s9, s8, test_fail_29
    j test_continue_29
test_fail_29:
    la a0, test_name_29
    jal ra, report_error
test_continue_29:

    # PSSH1SADD.H
    li s6, 0xC0004000 # rs1
    li s7, 0x80000001 # rs2
    li s8, 0x80007FFF # expected result
    pssh1sadd.h s9, s6, s7
    bne s9, s8, test_fail_30
    j test_continue_30
test_fail_30:
    la a0, test_name_30
    jal ra, report_error
test_continue_30:

    # PAS.HX
    li s6, 0x7F12000a # rs1
    li s7, 0x00077F34 # rs2
    li s8, 0xfe460003 # expected result
    pas.hx s9, s6, s7
    bne s9, s8, test_fail_31
    j test_continue_31
test_fail_31:
    la a0, test_name_31
    jal ra, report_error
test_continue_31:

    # PSA.HX
    li s6, 0x7F120003 # rs1
    li s7, 0x7F340007 # rs2
    li s8, 0x7F0B7F37 # expected result
    psa.hx s9, s6, s7
    bne s9, s8, test_fail_32
    j test_continue_32
test_fail_32:
    la a0, test_name_32
    jal ra, report_error
test_continue_32:

    # PSAS.HX
    li s6, 0x7F12000a # rs1
    li s7, 0x00077F34 # rs2
    li s8, 0x7fff0003 # expected result
    psas.hx s9, s6, s7
    bne s9, s8, test_fail_33
    j test_continue_33
test_fail_33:
    la a0, test_name_33
    jal ra, report_error
test_continue_33:

    # PSSA.HX
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xFFDEFFFF # expected result
    pssa.hx s9, s6, s7
    bne s9, s8, test_fail_34
    j test_continue_34
test_fail_34:
    la a0, test_name_34
    jal ra, report_error
test_continue_34:

    # PAAS.HX
    li s6, 0x7F12000a # rs1
    li s7, 0x00077F34 # rs2
    li s8, 0x7f230001 # expected result
    paas.hx s9, s6, s7
    bne s9, s8, test_fail_35
    j test_continue_35
test_fail_35:
    la a0, test_name_35
    jal ra, report_error
test_continue_35:

    # PASA.HX
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xFFEFFFFF # expected result
    pasa.hx s9, s6, s7
    bne s9, s8, test_fail_36
    j test_continue_36
test_fail_36:
    la a0, test_name_36
    jal ra, report_error
test_continue_36:

    # pabd.H
    li s6, 0x00017FFF # rs1
    li s7, 0x00020001 # rs2
    li s8, 0x00017FFE # expected result
    pabd.h s9, s6, s7
    bne s9, s8, test_fail_37
    j test_continue_37
test_fail_37:
    la a0, test_name_37
    jal ra, report_error
test_continue_37:

    # pabdU.H
    li s6, 0xFFFE7FFF # rs1
    li s7, 0x00010001 # rs2
    li s8, 0xFFFD7FFE # expected result
    pabdu.h s9, s6, s7
    bne s9, s8, test_fail_38
    j test_continue_38
test_fail_38:
    la a0, test_name_38
    jal ra, report_error
test_continue_38:

    # PSABS.H
    li s6, 0x00007FFF # rs1
    li s8, 0x00007FFF # rs1
    psabs.h s9, s6
    bne s9, s8, test_fail_39
    j test_continue_39
test_fail_39:
    la a0, test_name_39
    jal ra, report_error
test_continue_39:

    # PREDSUM.HS
    li s6, 0x00030004 # rs1
    li s7, 0x0000000A # rs2
    li s8, 0x00000011 # expected result
    predsum.hs s9, s6, s7
    bne s9, s8, test_fail_40
    j test_continue_40
test_fail_40:
    la a0, test_name_40
    jal ra, report_error
test_continue_40:

    # PREDSUMU.HS
    li s6, 0x10008000 # rs1
    li s7, 0x00001000 # rs2
    li s8, 0x0000A000 # expected result
    predsumu.hs s9, s6, s7
    bne s9, s8, test_fail_41
    j test_continue_41
test_fail_41:
    la a0, test_name_41
    jal ra, report_error
test_continue_41:

    # SADD
    li s6, 0x80000000
    li s7, 0x80000000
    li s8, 0x80000000
    sadd s9, s6, s7
    bne s9, s8, test_fail_42
    j test_continue_42
test_fail_42:
    la a0, test_name_42
    jal ra, report_error
test_continue_42:

    # SADDU
    li s6, 0x00000000FFFFFFF
    li s7, 0xFFFFFFFF
    li s8, 0xFFFFFFFF
    saddu s9, s6, s7
    bne s9, s8, test_fail_43
    j test_continue_43
test_fail_43:
    la a0, test_name_43
    jal ra, report_error
test_continue_43:

    # SSUB
    li s6, 0x80000000
    li s7, 0x7FFFFFFF
    li s8, 0x80000000
    ssub s9, s6, s7
    bne s9, s8, test_fail_44
    j test_continue_44
test_fail_44:
    la a0, test_name_44
    jal ra, report_error
test_continue_44:

    # SSUBU
    li s6, 0x00000000
    li s7, 0x00000001
    li s8, 0xFFFFFFFF
    ssubu s9, s6, s7
    bne s9, s8, test_fail_45
    j test_continue_45
test_fail_45:
    la a0, test_name_45
    jal ra, report_error
test_continue_45:

    # AADD
    li s6, 0x40000000
    li s7, 0x80000000
    li s8, 0xe0000000
    aadd s9, s6, s7
    bne s9, s8, test_fail_46
    j test_continue_46
test_fail_46:
    la a0, test_name_46
    jal ra, report_error
test_continue_46:

    # AADDU
    li s6, 0x40000000
    li s7, 0x80000000
    li s8, 0x60000000
    aaddu s9, s6, s7
    bne s9, s8, test_fail_47
    j test_continue_47
test_fail_47:
    la a0, test_name_47
    jal ra, report_error
test_continue_47:

    # ASUB
    li s6, 0x80000000
    li s7, 0x40000000
    li s8, 0xa0000000
    asub s9, s6, s7
    bne s9, s8, test_fail_48
    j test_continue_48
test_fail_48:
    la a0, test_name_48
    jal ra, report_error
test_continue_48:

    # ASUBU
    li s6, 0x80000000
    li s7, 0x40000000
    li s8, 0x20000000
    asubu s9, s6, s7
    bne s9, s8, test_fail_49
    j test_continue_49
test_fail_49:
    la a0, test_name_49
    jal ra, report_error
test_continue_49:

    # SSH1SADD
    li s6, 0xA0000000 # rs1
    li s7, 0x30000000 # rs2
    li s8, 0xB0000000 # expected result
    ssh1sadd s9, s6, s7
    bne s9, s8, test_fail_50
    j test_continue_50
test_fail_50:
    la a0, test_name_50
    jal ra, report_error
test_continue_50:

    # PSLLI.B
    li s6, 0x33221100 # rs1
    li s8, 0x98108800 # expected result
    pslli.b s9, s6, 3
    bne s9, s8, test_fail_51
    j test_continue_51
test_fail_51:
    la a0, test_name_51
    jal ra, report_error
test_continue_51:

    # PSLL.BS
    li s6, 0x207F0201 # rs1
    li s7, 0x00000002 # rs2
    li s8, 0x80FC0804 # expected result
    psll.bs s9, s6, s7
    bne s9, s8, test_fail_52
    j test_continue_52
test_fail_52:
    la a0, test_name_52
    jal ra, report_error
test_continue_52:

    # PSRLI.B
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    psrli.b s9, s6, 3
    bne s9, s8, test_fail_53
    j test_continue_53
test_fail_53:
    la a0, test_name_53
    jal ra, report_error
test_continue_53:

    # PSRL.BS
    li s6, 0x80FF4080 # rs1
    li s7, 0x00000002 # rs2
    li s8, 0x203F1020 # expected result
    psrl.bs s9, s6, s7
    bne s9, s8, test_fail_54
    j test_continue_54
test_fail_54:
    la a0, test_name_54
    jal ra, report_error
test_continue_54:

    # PSRAI.B
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    psrai.b s9, s6, 3
    bne s9, s8, test_fail_55
    j test_continue_55
test_fail_55:
    la a0, test_name_55
    jal ra, report_error
test_continue_55:

    # PSRA.BS
    li s6, 0x80FF4080 # rs1
    li s7, 0x00000002 # rs2
    li s8, 0xE0FF10E0 # expected result
    psra.bs s9, s6, s7
    bne s9, s8, test_fail_56
    j test_continue_56
test_fail_56:
    la a0, test_name_56
    jal ra, report_error
test_continue_56:

    # PMIN.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80FF80FF # expected result
    pmin.b s8, s6, s7
    bne s10, s8, test_fail_57
    j test_continue_57
test_fail_57:
    la a0, test_name_57
    jal ra, report_error
test_continue_57:

    # PMINU.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7F007F00 # expected result
    pminu.b s8, s6, s7
    bne s10, s8, test_fail_58
    j test_continue_58
test_fail_58:
    la a0, test_name_58
    jal ra, report_error
test_continue_58:

    # PMAX.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7F007F00 # expected result
    pmax.b s8, s6, s7
    bne s10, s8, test_fail_59
    j test_continue_59
test_fail_59:
    la a0, test_name_59
    jal ra, report_error
test_continue_59:

    # PMAXU.B
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80FF80FF # expected result
    pmaxu.b s8, s6, s7
    bne s10, s8, test_fail_60
    j test_continue_60
test_fail_60:
    la a0, test_name_60
    jal ra, report_error
test_continue_60:

    # PMSEQ.B
    li s6, 0x12340000 # rs1
    li s7, 0x12341000 # rs2
    li s8, 0xFFFF00FF # expected result
    pmseq.b s9, s6, s7
    bne s9, s8, test_fail_61
    j test_continue_61
test_fail_61:
    la a0, test_name_61
    jal ra, report_error
test_continue_61:

    # PMSLT.B
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x000000FF # expected result
    pmslt.b s9, s6, s7
    bne s9, s8, test_fail_62
    j test_continue_62
test_fail_62:
    la a0, test_name_62
    jal ra, report_error
test_continue_62:

    # PMSLTU.B
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x000000FF # expected result
    pmsltu.b s9, s6, s7
    bne s9, s8, test_fail_63
    j test_continue_63
test_fail_63:
    la a0, test_name_63
    jal ra, report_error
test_continue_63:

    # PSEXT.H.B
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0066FFF4 # expected result
    psext.h.b s9, s6
    bne s9, s8, test_fail_64
    j test_continue_64
test_fail_64:
    la a0, test_name_64
    jal ra, report_error
test_continue_64:

    # PSATI.H
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000FFFF0 # rs1
    psati.h s9, s6, 4 # -16 - 15
    bne s9, s8, test_fail_65
    j test_continue_65
test_fail_65:
    la a0, test_name_65
    jal ra, report_error
test_continue_65:

    # PUSATI.H
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000F0000 # rs1
    pusati.h s9, s6, 4 # 0 - 15
    bne s9, s8, test_fail_66
    j test_continue_66
test_fail_66:
    la a0, test_name_66
    jal ra, report_error
test_continue_66:

    # PSLLI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00008888 # expected result
    pslli.h s9, s6, 3
    bne s9, s8, test_fail_67
    j test_continue_67
test_fail_67:
    la a0, test_name_67
    jal ra, report_error
test_continue_67:

    # PSLL.HS
    li s6, 0x80007FFF # rs1
    li s7, 0x00000003 # rs2
    li s8, 0x0000FFF8 # expectede result
    psll.hs s9, s6, s7
    bne s9, s8, test_fail_68
    j test_continue_68
test_fail_68:
    la a0, test_name_68
    jal ra, report_error
test_continue_68:

    # PSRLI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    psrli.h s9, s6, 3
    bne s9, s8, test_fail_69
    j test_continue_69
test_fail_69:
    la a0, test_name_69
    jal ra, report_error
test_continue_69:

    # PSRL.HS
    li s6, 0x80007FFF # rs1
    li s7, 0x00000003 # rs2
    li s8, 0x10000FFF # expected result
    psrl.hs s9, s6, s7
    bne s9, s8, test_fail_70
    j test_continue_70
test_fail_70:
    la a0, test_name_70
    jal ra, report_error
test_continue_70:

    # PSRAI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    psrai.h s9, s6, 3
    bne s9, s8, test_fail_71
    j test_continue_71
test_fail_71:
    la a0, test_name_71
    jal ra, report_error
test_continue_71:

    # PSRA.HS
    li s6, 0x8000FFF8 # rs1
    li s7, 0x00000003 # rs2
    li s8, 0xF000FFFF # expected result
    psra.hs s9, s6, s7
    bne s9, s8, test_fail_72
    j test_continue_72
test_fail_72:
    la a0, test_name_72
    jal ra, report_error
test_continue_72:

    # PSSLAI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00007fff # expected result
    psslai.h s9, s6, 3
    bne s9, s8, test_fail_73
    j test_continue_73
test_fail_73:
    la a0, test_name_73
    jal ra, report_error
test_continue_73:

    # PSRARI.H
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    psrari.h s9, s6, 3
    bne s9, s8, test_fail_74
    j test_continue_74
test_fail_74:
    la a0, test_name_74
    jal ra, report_error
test_continue_74:

    # PSSHA.HS
    li s6, 0x80007FFF # rs1
    li s7, 0x00000003 # rs2
    li s8, 0x80007FFF # expected result
    pssha.hs s9, s6, s7
    bne s9, s8, test_fail_75
    j test_continue_75
test_fail_75:
    la a0, test_name_75
    jal ra, report_error
test_continue_75:

    # PSSHAR.HS
    li s6, 0x00027FFF # rs1
    li s7, 0x00000002 # rs2
    li s8, 0x00087FFF # expected result
    psshar.hs s9, s6, s7
    bne s9, s8, test_fail_76
    j test_continue_76
test_fail_76:
    la a0, test_name_76
    jal ra, report_error
test_continue_76:

    # PMIN.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80008000 # expected result
    pmin.h s8, s6, s7
    bne s10, s8, test_fail_77
    j test_continue_77
test_fail_77:
    la a0, test_name_77
    jal ra, report_error
test_continue_77:

    # PMINU.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7FFF7FFF # expected result
    pminu.h s8, s6, s7
    bne s10, s8, test_fail_78
    j test_continue_78
test_fail_78:
    la a0, test_name_78
    jal ra, report_error
test_continue_78:

    # PMAX.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7FFF7FFF # expected result
    pmax.h s8, s6, s7
    bne s10, s8, test_fail_79
    j test_continue_79
test_fail_79:
    la a0, test_name_79
    jal ra, report_error
test_continue_79:

    # PMAXU.H
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80008000 # expected result
    pmaxu.h s8, s6, s7
    bne s10, s8, test_fail_80
    j test_continue_80
test_fail_80:
    la a0, test_name_80
    jal ra, report_error
test_continue_80:

    # PMSEQ.H
    li s6, 0x12340000 # rs1
    li s7, 0x12341000 # rs2
    li s8, 0xFFFF0000 # expected result
    pmseq.h s9, s6, s7
    bne s9, s8, test_fail_81
    j test_continue_81
test_fail_81:
    la a0, test_name_81
    jal ra, report_error
test_continue_81:

    # PMSLT.H
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x0000FFFF # expected result
    pmslt.h s9, s6, s7
    bne s9, s8, test_fail_82
    j test_continue_82
test_fail_82:
    la a0, test_name_82
    jal ra, report_error
test_continue_82:

    # PMSLTU.H
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x0000FFFF # expected result
    pmsltu.h s9, s6, s7
    bne s9, s8, test_fail_83
    j test_continue_83
test_fail_83:
    la a0, test_name_83
    jal ra, report_error
test_continue_83:

    # SATI_32
    li s6, 0x80000000 # rs1
    li s8, 0xFFFFFFF0 # rs1
    sati s9, s6, 4 # -16 - 15
    bne s9, s8, test_fail_84
    j test_continue_84
test_fail_84:
    la a0, test_name_84
    jal ra, report_error
test_continue_84:

    # USATI_32
    li s6, 0x80000000 # rs1
    li s8, 0x00000000 # rs1
    usati s9, s6, 4 # 0 - 15
    bne s9, s8, test_fail_85
    j test_continue_85
test_fail_85:
    la a0, test_name_85
    jal ra, report_error
test_continue_85:

    # SSLAI
    li s6, 0x0000000F
    li s8, 0x00078000
    sslai s9, s6, 15
    bne s9, s8, test_fail_86
    j test_continue_86
test_fail_86:
    la a0, test_name_86
    jal ra, report_error
test_continue_86:

    # SRARI
    li s6, 0x7FFF8008 # rs1
    li s8, 0x07FFF801 # expected result
    srari s9, s6, 4
    bne s9, s8, test_fail_87
    j test_continue_87
test_fail_87:
    la a0, test_name_87
    jal ra, report_error
test_continue_87:


    # SSHA
    li s6, 0x80007FFF # rs1
    li s7, 0x0000000F # rs2
    li s8, 0x80000000 # expected result
    ssha s9, s6, s7
    bne s9, s8, test_fail_88
    j test_continue_88
test_fail_88:
    la a0, test_name_88
    jal ra, report_error
test_continue_88:

    # SSHAR
    li s6, 0x80007FFF # rs1
    li s7, 0x0000000F # rs2
    li s8, 0x80000000 # expected result
    sshar s9, s6, s7
    bne s9, s8, test_fail_89
    j test_continue_89
test_fail_89:
    la a0, test_name_89
    jal ra, report_error
test_continue_89:

    # MSEQ
    li s6, 0x12345678 # rs1
    li s7, 0x22334455 # rs2
    li s8, 0x00000000 # expected result
    mseq s9, s6, s7
    bne s9, s8, test_fail_90
    j test_continue_90
test_fail_90:
    la a0, test_name_90
    jal ra, report_error
test_continue_90:

    # MSLT
    li s6, 0x00000000 # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000000 # expected result
    mslt s9, s6, s7
    bne s9, s8, test_fail_91
    j test_continue_91
test_fail_91:
    la a0, test_name_91
    jal ra, report_error
test_continue_91:


    # MSLTU
    li s6, 0x00000000 # rs1
    li s7, 0x80000000 # rs2
    li s8, 0xFFFFFFFF # expected result
    msltu s9, s6, s7
    bne s9, s8, test_fail_92
    j test_continue_92
test_fail_92:
    la a0, test_name_92
    jal ra, report_error
test_continue_92:

    # PPAIRE.B
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x44BB66DD # expected result
    ppaire.b s9, s6, s7
    bne s9, s8, test_fail_93
    j test_continue_93
test_fail_93:
    la a0, test_name_93
    jal ra, report_error
test_continue_93:

    # PPAIREO.B
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x33BB55DD # expected result
    ppaireo.b s9, s6, s7
    bne s9, s8, test_fail_94
    j test_continue_94
test_fail_94:
    la a0, test_name_94
    jal ra, report_error
test_continue_94:

    # PPAIROE.B
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x44AA66CC # expected result
    ppairoe.b s9, s6, s7
    bne s9, s8, test_fail_95
    j test_continue_95
test_fail_95:
    la a0, test_name_95
    jal ra, report_error
test_continue_95:

    # PPAIRO.B
    li s6, 0xAABBCCDD # rs1
    li s7, 0x33445566 # rs2
    li s8, 0x33AA55CC # expected result
    ppairo.b s9, s6, s7
    bne s9, s8, test_fail_96
    j test_continue_96
test_fail_96:
    la a0, test_name_96
    jal ra, report_error
test_continue_96:

    # PPAIREO.H
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x88883333 # expected result
    ppaireo.h s9, s6, s7
    bne s9, s8, test_fail_97
    j test_continue_97
test_fail_97:
    la a0, test_name_97
    jal ra, report_error
test_continue_97:

    # PPAIROE.H
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x77774444 # expected result
    ppairoe.h s9, s6, s7
    bne s9, s8, test_fail_98
    j test_continue_98
test_fail_98:
    la a0, test_name_98
    jal ra, report_error
test_continue_98:

    # PPAIRO.H
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x88884444 # expeced result
    ppairo.h s9, s6, s7
    bne s9, s8, test_fail_99
    j test_continue_99
test_fail_99:
    la a0, test_name_99
    jal ra, report_error
test_continue_99:

    # ABS
    li s6, 0xFFFFFFFF # rs1
    li s8, 0x00000001 # expected result
    abs s9, s6
    bne s9, s8, test_fail_100
    j test_continue_100
test_fail_100:
    la a0, test_name_100
    jal ra, report_error
test_continue_100:

    # CLS
    li s6, 0x10000000 # rs1
    li s8, 0x00000002 # rs2
    cls s9, s6
    bne s9, s8, test_fail_101
    j test_continue_101
test_fail_101:
    la a0, test_name_101
    jal ra, report_error
test_continue_101:

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
    bne s9, s8, test_fail_102
    j test_continue_102
test_fail_102:
    la a0, test_name_102
    jal ra, report_error
test_continue_102:

    # SRX
    li s6, 0x000000FF # rs1
    li s7, 0x00000008 # rs2
    li s9, 0x00123400 # rd
    li s8, 0xFF001234 # expected result
    srx s9, s6, s7
    bne s9, s8, test_fail_103
    j test_continue_103
test_fail_103:
    la a0, test_name_103
    jal ra, report_error
test_continue_103:

    # MVM
    li s6, 0xAAAABBBB # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x12345678 # rd
    li s8, 0xAAAA5678 # expected result
    mvm s9, s6, s7
    bne s9, s8, test_fail_104
    j test_continue_104
test_fail_104:
    la a0, test_name_104
    jal ra, report_error
test_continue_104:

    # MVMN
    li s6, 0xAAAABBBB # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x12345678 # rd
    li s8, 0x1234BBBB # expected result
    mvmn s9, s6, s7
    bne s9, s8, test_fail_105
    j test_continue_105
test_fail_105:
    la a0, test_name_105
    jal ra, report_error
test_continue_105:

    # MERGE
    li s6, 0xAAAABBBB # rs1
    li s7, 0x12345678 # rs2
    li s9, 0x0000FFFF # rd
    li s8, 0xAAAA5678 # expected result
    merge s9, s6, s7
    bne s9, s8, test_fail_106
    j test_continue_106
test_fail_106:
    la a0, test_name_106
    jal ra, report_error
test_continue_106:

    # PWADD.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s10, 0x00060008 # expected result
    li s11, 0xFFFFFFFF # expected result
    pwadd.b s8, s6, s7
    bne s8, s10, test_fail_107
    j test_continue_107
test_fail_107:
    la a0, test_name_107
    jal ra, report_error
test_continue_107:
    bne s9, s11, test_fail_108
    j test_continue_108
test_fail_108:
    la a0, test_name_108
    jal ra, report_error
test_continue_108:

    # PWADDA.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x00060009 # expected result
    li s11, 0xFFFFFFFF # expected result
    pwadda.b s8, s6, s7
    bne s8, s10, test_fail_109
    j test_continue_109
test_fail_109:
    la a0, test_name_109
    jal ra, report_error
test_continue_109:
    bne s9, s11, test_fail_110
    j test_continue_110
test_fail_110:
    la a0, test_name_110
    jal ra, report_error
test_continue_110:

    # PWADDU.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s10, 0x01060008 # expected result
    li s11, 0x00FF00FF # expected result
    pwaddu.b s8, s6, s7
    bne s8, s10, test_fail_111
    j test_continue_111
test_fail_111:
    la a0, test_name_111
    jal ra, report_error
test_continue_111:
    bne s9, s11, test_fail_112
    j test_continue_112
test_fail_112:
    la a0, test_name_112
    jal ra, report_error
test_continue_112:

    # PWADDAU.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F80FF00 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x01060009 # expected result
    li s11, 0x00FF00FF # expected result
    pwaddau.b s8, s6, s7
    bne s8, s10, test_fail_113
    j test_continue_113
test_fail_113:
    la a0, test_name_113
    jal ra, report_error
test_continue_113:
    bne s9, s11, test_fail_114
    j test_continue_114
test_fail_114:
    la a0, test_name_114
    jal ra, report_error
test_continue_114:

    # PWSUB.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F800703 # rs2
    li s10,    0x00000005 # expected result
    li s11, 0xFF0100FF # expected result
    pwsub.b s8, s6, s7
    bne s8, s10, test_fail_115
    j test_continue_115
test_fail_115:
    la a0, test_name_115
    jal ra, report_error
test_continue_115:
    bne s9, s11, test_fail_116
    j test_continue_116
test_fail_116:
    la a0, test_name_116
    jal ra, report_error
test_continue_116:

    # PWSUBA.B
    li s6, 0x807F0708 # rs1
    li s7, 0x7F800703 # rs2
    li s8, 0x00010001 # rd
    li s9, 0x00010001 # rd
    li s10, 0x00010006 # expected result
    li s11, 0xFF020100 # expected result
    pwsuba.b s8, s6, s7
    bne s8, s10, test_fail_117
    j test_continue_117
test_fail_117:
    la a0, test_name_117
    jal ra, report_error
test_continue_117:
    bne s9, s11, test_fail_118
    j test_continue_118
test_fail_118:
    la a0, test_name_118
    jal ra, report_error
test_continue_118:

    # PWSUBU.B
    li s6, 0x807FFF00 # rs1
    li s7, 0x7F8000FF # rs2
    li s10, 0x00FFFF01 # expected result
    li s11, 0x0001FFFF # expected result
    pwsubu.b s8, s6, s7
    bne s8, s10, test_fail_119
    j test_continue_119
test_fail_119:
    la a0, test_name_119
    jal ra, report_error
test_continue_119:
    bne s9, s11, test_fail_120
    j test_continue_120
test_fail_120:
    la a0, test_name_120
    jal ra, report_error
test_continue_120:

    # PWSUBAU.B
    li s6, 0x807FFF00 # rs1
    li s7, 0x7F8000FF # rs2
    li s8, 0x00010001 # rd
    li s9, 0x00010001 # rd
    li s10, 0x0100FF02 # expected result
    li s11, 0x00020000 # expected result
    pwsubau.b s8, s6, s7
    bne s8, s10, test_fail_121
    j test_continue_121
test_fail_121:
    la a0, test_name_121
    jal ra, report_error
test_continue_121:
    bne s9, s11, test_fail_122
    j test_continue_122
test_fail_122:
    la a0, test_name_122
    jal ra, report_error
test_continue_122:

    # PWSLLI.B
    li s6, 0x807FFF00 # rs1
    li s10, 0x0FF00000 # expected result
    li s11, 0x080007F0 # expected result
    pwslli.b s8, s6, 4
    bne s8, s10, test_fail_123
    j test_continue_123
test_fail_123:
    la a0, test_name_123
    jal ra, report_error
test_continue_123:
    bne s9, s11, test_fail_124
    j test_continue_124
test_fail_124:
    la a0, test_name_124
    jal ra, report_error
test_continue_124:

    # PWSLL.BS
    li s6, 0x807FFF00 # rs1
    li s7, 0x00000004 # rs2
    li s10, 0x0FF00000 # expected result
    li s11, 0x080007F0 # expected result
    pwsll.bs s8, s6, s7
    bne s8, s10, test_fail_125
    j test_continue_125
test_fail_125:
    la a0, test_name_125
    jal ra, report_error
test_continue_125:
    bne s9, s11, test_fail_126
    j test_continue_126
test_fail_126:
    la a0, test_name_126
    jal ra, report_error
test_continue_126:

    # PWSLAI.B
    li s6, 0x807FFF00 # rs1
    li s10, 0xFFF00000 # expected result
    li s11, 0xF80007F0 # expected result
    pwslai.b s8, s6, 4
    bne s8, s10, test_fail_127
    j test_continue_127
test_fail_127:
    la a0, test_name_127
    jal ra, report_error
test_continue_127:
    bne s9, s11, test_fail_128
    j test_continue_128
test_fail_128:
    la a0, test_name_128
    jal ra, report_error
test_continue_128:

    # PWSLA.BS
    li s6, 0x807FFF00 # rs1
    li s7, 0x00000004 # rs2
    li s10, 0xFFF00000 # expected result
    li s11, 0xF80007F0 # expected result
    pwsla.bs s8, s6, s7
    bne s8, s10, test_fail_129
    j test_continue_129
test_fail_129:
    la a0, test_name_129
    jal ra, report_error
test_continue_129:
    bne s9, s11, test_fail_130
    j test_continue_130
test_fail_130:
    la a0, test_name_130
    jal ra, report_error
test_continue_130:

    # WZIP8P
    li s6, 0x7FFF8000 # rs1
    li s7, 0x807F00FF # rs2
    li s10, 0x0080FF00 # expected result
    li s11, 0x807F7FFF # expected result
    wzip8p s8, s6, s7
    bne s8, s10, test_fail_131
    j test_continue_131
test_fail_131:
    la a0, test_name_131
    jal ra, report_error
test_continue_131:
    bne s9, s11, test_fail_132
    j test_continue_132
test_fail_132:
    la a0, test_name_132
    jal ra, report_error
test_continue_132:

    # PWADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00007FFE # expected result
    pwadd.h s8, s6,s7
    bne s8, s10, test_fail_133
    j test_continue_133
test_fail_133:
    la a0, test_name_133
    jal ra, report_error
test_continue_133:
    bne s9, s11, test_fail_134
    j test_continue_134
test_fail_134:
    la a0, test_name_134
    jal ra, report_error
test_continue_134:

    # PWADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00007FFF # expected result
    pwadda.h s8, s6,s7
    bne s8, s10, test_fail_135
    j test_continue_135
test_fail_135:
    la a0, test_name_135
    jal ra, report_error
test_continue_135:
    bne s9, s11, test_fail_136
    j test_continue_136
test_fail_136:
    la a0, test_name_136
    jal ra, report_error
test_continue_136:

    # PWADDU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x00017FFE # expected result
    pwaddu.h s8, s6,s7
    bne s8, s10, test_fail_137
    j test_continue_137
test_fail_137:
    la a0, test_name_137
    jal ra, report_error
test_continue_137:
    bne s9, s11, test_fail_138
    j test_continue_138
test_fail_138:
    la a0, test_name_138
    jal ra, report_error
test_continue_138:

    # PWADDAU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x00017FFF # expected result
    pwaddau.h s8, s6,s7
    bne s8, s10, test_fail_139
    j test_continue_139
test_fail_139:
    la a0, test_name_139
    jal ra, report_error
test_continue_139:
    bne s9, s11, test_fail_140
    j test_continue_140
test_fail_140:
    la a0, test_name_140
    jal ra, report_error
test_continue_140:

    # PWSUB.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s10, 0xFFFF0001 # expected result
    li s11, 0x00008000 # expected result
    pwsub.h s8, s6,s7
    bne s8, s10, test_fail_141
    j test_continue_141
test_fail_141:
    la a0, test_name_141
    jal ra, report_error
test_continue_141:
    bne s9, s11, test_fail_142
    j test_continue_142
test_fail_142:
    la a0, test_name_142
    jal ra, report_error
test_continue_142:

    # PWSUBA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001
    li s10, 0xFFFF0002 # expected result
    li s11, 0x00008001 # expected result
    pwsuba.h s8, s6,s7
    bne s8, s10, test_fail_143
    j test_continue_143
test_fail_143:
    la a0, test_name_143
    jal ra, report_error
test_continue_143:
    bne s9, s11, test_fail_144
    j test_continue_144
test_fail_144:
    la a0, test_name_144
    jal ra, report_error
test_continue_144:

    # PWSUBU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0x7FFF7FFF # rs2
    li s10, 0x00000001 # expected result
    li s11, 0x00008000 # expected result
    pwsubu.h s8, s6,s7
    bne s8, s10, test_fail_145
    j test_continue_145
test_fail_145:
    la a0, test_name_145
    jal ra, report_error
test_continue_145:
    bne s9, s11, test_fail_146
    j test_continue_146
test_fail_146:
    la a0, test_name_146
    jal ra, report_error
test_continue_146:

    # PWSUBAU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0x7FFF7FFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000002 # expected result
    li s11, 0x00008001 # expected result
    pwsubau.h s8, s6,s7
    bne s8, s10, test_fail_147
    j test_continue_147
test_fail_147:
    la a0, test_name_147
    jal ra, report_error
test_continue_147:
    bne s9, s11, test_fail_148
    j test_continue_148
test_fail_148:
    la a0, test_name_148
    jal ra, report_error
test_continue_148:

    # PWSLLI.H
    li s6, 0x7FFF8000 # rs1
    li s10, 0x00800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwslli.h s8, s6, 8
    bne s8, s10, test_fail_149
    j test_continue_149
test_fail_149:
    la a0, test_name_149
    jal ra, report_error
test_continue_149:
    bne s9, s11, test_fail_150
    j test_continue_150
test_fail_150:
    la a0, test_name_150
    jal ra, report_error
test_continue_150:

    # PWSLL.HS
    li s6, 0x7FFF8000 # rs1
    li s7, 0x00000008 # rs2
    li s10, 0x00800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwsll.hs s8, s6, s7
    bne s8, s10, test_fail_151
    j test_continue_151
test_fail_151:
    la a0, test_name_151
    jal ra, report_error
test_continue_151:
    bne s9, s11, test_fail_152
    j test_continue_152
test_fail_152:
    la a0, test_name_152
    jal ra, report_error
test_continue_152:

    # PWSLAI.H
    li s6, 0x7FFF8000 # rs1
    li s10, 0xFF800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwslai.h s8, s6, 8
    bne s8, s10, test_fail_153
    j test_continue_153
test_fail_153:
    la a0, test_name_153
    jal ra, report_error
test_continue_153:
    bne s9, s11, test_fail_154
    j test_continue_154
test_fail_154:
    la a0, test_name_154
    jal ra, report_error
test_continue_154:

    # PWSLA.HS
    li s6, 0x7FFF8000 # rs1
    li s7, 0x00000008 # rs2
    li s10, 0xFF800000 # expected result
    li s11, 0x007FFF00 # expected result
    pwsla.hs s8, s6, s7
    bne s8, s10, test_fail_155
    j test_continue_155
test_fail_155:
    la a0, test_name_155
    jal ra, report_error
test_continue_155:
    bne s9, s11, test_fail_156
    j test_continue_156
test_fail_156:
    la a0, test_name_156
    jal ra, report_error
test_continue_156:

    # WZIP16P
    li s6, 0x7FFF8000 # rs1
    li s7, 0x80FF007F # rs2
    li s10, 0x007F8000 # expected result
    li s11, 0x80FF7FFF # expected result
    wzip16p s8, s6, s7
    bne s8, s10, test_fail_157
    j test_continue_157
test_fail_157:
    la a0, test_name_157
    jal ra, report_error
test_continue_157:
    bne s9, s11, test_fail_158
    j test_continue_158
test_fail_158:
    la a0, test_name_158
    jal ra, report_error
test_continue_158:

    # WADD
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0xFFFFFFFF # expected result
    wadd s8, s6, s7
    bne s8, s10, test_fail_159
    j test_continue_159
test_fail_159:
    la a0, test_name_159
    jal ra, report_error
test_continue_159:
    bne s9, s11, test_fail_160
    j test_continue_160
test_fail_160:
    la a0, test_name_160
    jal ra, report_error
test_continue_160:

    # WADDA
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000001 # expected result
    wadda s8, s6, s7
    bne s8, s10, test_fail_161
    j test_continue_161
test_fail_161:
    la a0, test_name_161
    jal ra, report_error
test_continue_161:
    bne s9, s11, test_fail_162
    j test_continue_162
test_fail_162:
    la a0, test_name_162
    jal ra, report_error
test_continue_162:

    # WADDU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00000000 # expected result
    waddu s8, s6, s7
    bne s8, s10, test_fail_163
    j test_continue_163
test_fail_163:
    la a0, test_name_163
    jal ra, report_error
test_continue_163:
    bne s9, s11, test_fail_164
    j test_continue_164
test_fail_164:
    la a0, test_name_164
    jal ra, report_error
test_continue_164:

    # WADDAU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000002 # expected result
    waddau s8, s6, s7
    bne s8, s10, test_fail_165
    j test_continue_165
test_fail_165:
    la a0, test_name_165
    jal ra, report_error
test_continue_165:
    bne s9, s11, test_fail_166
    j test_continue_166
test_fail_166:
    la a0, test_name_166
    jal ra, report_error
test_continue_166:

    # WSUB
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00000000 # expected result
    wsub s8, s6, s7
    bne s8, s10, test_fail_167
    j test_continue_167
test_fail_167:
    la a0, test_name_167
    jal ra, report_error
test_continue_167:
    bne s9, s11, test_fail_168
    j test_continue_168
test_fail_168:
    la a0, test_name_168
    jal ra, report_error
test_continue_168:

    # WSUBA
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000001 # expected result
    wsuba s8, s6, s7
    bne s8, s10, test_fail_169
    j test_continue_169
test_fail_169:
    la a0, test_name_169
    jal ra, report_error
test_continue_169:
    bne s9, s11, test_fail_170
    j test_continue_170
test_fail_170:
    la a0, test_name_170
    jal ra, report_error
test_continue_170:

    # WSUBU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0xFFFFFFFF # expected result
    wsubu s8, s6, s7
    bne s8, s10, test_fail_171
    j test_continue_171
test_fail_171:
    la a0, test_name_171
    jal ra, report_error
test_continue_171:
    bne s9, s11, test_fail_172
    j test_continue_172
test_fail_172:
    la a0, test_name_172
    jal ra, report_error
test_continue_172:

    # WSUBAU
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x80000000 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000000 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000000 # expected result
    wsubau s8, s6, s7
    bne s8, s10, test_fail_173
    j test_continue_173
test_fail_173:
    la a0, test_name_173
    jal ra, report_error
test_continue_173:
    bne s9, s11, test_fail_174
    j test_continue_174
test_fail_174:
    la a0, test_name_174
    jal ra, report_error
test_continue_174:

    # WSLLI
    li s6, 0xFFFFFFFF # rs1
    li s10, 0xFFFF0000 # expected result
    li s11, 0x0000FFFF # expected result
    wslli s8, s6, 16
    bne s8, s10, test_fail_175
    j test_continue_175
test_fail_175:
    la a0, test_name_175
    jal ra, report_error
test_continue_175:
    bne s9, s11, test_fail_176
    j test_continue_176
test_fail_176:
    la a0, test_name_176
    jal ra, report_error
test_continue_176:

    # WSLL
    li s6, 0xFFFFFFFF # rs1
    li s7, 0x00000010 # rs2
    li s10, 0xFFFF0000 # expected result
    li s11, 0x0000FFFF # expected result
    wsll s8, s6, s7
    bne s8, s10, test_fail_177
    j test_continue_177
test_fail_177:
    la a0, test_name_177
    jal ra, report_error
test_continue_177:
    bne s9, s11, test_fail_178
    j test_continue_178
test_fail_178:
    la a0, test_name_178
    jal ra, report_error
test_continue_178:

    # WSLAI
    li s6, 0xFFFFFFFF # rs1
    li s10, 0xFFFF0000 # expected result
    li s11, 0xFFFFFFFF # expected result
    wslai s8, s6, 16
    bne s8, s10, test_fail_179
    j test_continue_179
test_fail_179:
    la a0, test_name_179
    jal ra, report_error
test_continue_179:
    bne s9, s11, test_fail_180
    j test_continue_180
test_fail_180:
    la a0, test_name_180
    jal ra, report_error
test_continue_180:

    # WSLA
    li s6, 0xFFFFFFFF # rs1
    li s7, 0x00000010 # rs2
    li s10, 0xFFFF0000 # expected result
    li s11, 0xFFFFFFFF # expected result
    wsla s8, s6, s7
    bne s8, s10, test_fail_181
    j test_continue_181
test_fail_181:
    la a0, test_name_181
    jal ra, report_error
test_continue_181:
    bne s9, s11, test_fail_182
    j test_continue_182
test_fail_182:
    la a0, test_name_182
    jal ra, report_error
test_continue_182:

    # PREDSUM.DBS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0x000000058 # expected result
    predsum.dbs s9, s6, s8
    bne s9, s10, test_fail_183
    j test_continue_183
test_fail_183:
    la a0, test_name_183
    jal ra, report_error
test_continue_183:


    # PREDSUMU.DBS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0x000000358 # expected result
    predsumu.dbs s9, s6, s8
    bne s9, s10, test_fail_184
    j test_continue_184
test_fail_184:
    la a0, test_name_184
    jal ra, report_error
test_continue_184:

    # PREDSUM.DHS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0xFFFF0455 # expected result
    predsum.dhs s9, s6, s8
    bne s9, s10, test_fail_185
    j test_continue_185
test_fail_185:
    la a0, test_name_185
    jal ra, report_error
test_continue_185:

    # #PREDSUMU.DHS
    li s6, 0x807FFF02 # rs1_l
    li s7, 0x0154837F # rs1_h
    li s8, 0x00000001 # rs2
    li s10, 0x00020455 # expected result
    predsumu.dhs s9, s6, s8
    bne s9, s10, test_fail_186
    j test_continue_186
test_fail_186:
    la a0, test_name_186
    jal ra, report_error
test_continue_186:

    # PNSRLI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x12560710 # expected result
    pnsrli.b s9, s6, 4
    bne s9, s10, test_fail_187
    j test_continue_187
test_fail_187:
    la a0, test_name_187
    jal ra, report_error
test_continue_187:

    # PNSRL.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000004 # rs2
    li s10, 0x12560710 # expected result
    pnsrl.bs s9, s6, s8
    bne s9, s10, test_fail_188
    j test_continue_188
test_fail_188:
    la a0, test_name_188
    jal ra, report_error
test_continue_188:

    # PNSRAI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x0004F800 # expected result
    pnsrai.b s9, s6, 12
    bne s9, s10, test_fail_189
    j test_continue_189
test_fail_189:
    la a0, test_name_189
    jal ra, report_error
test_continue_189:

    # PNSRA.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x0004F800 # expected result
    pnsra.bs s9, s6, s8
    bne s9, s10, test_fail_190
    j test_continue_190
test_fail_190:
    la a0, test_name_190
    jal ra, report_error
test_continue_190:

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
    bne s9, s10, test_fail_191
    j test_continue_191
test_fail_191:
    la a0, test_name_191
    jal ra, report_error
test_continue_191:

    # PNCLIPI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01458001 # expected result
    pnclipi.b s9, s6, 8
    bne s9, s10, test_fail_192
    j test_continue_192
test_fail_192:
    la a0, test_name_192
    jal ra, report_error
test_continue_192:

    # PNCLIP.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x01458001 # expected result
    pnclip.bs s9, s6, s8
    bne s9, s10, test_fail_193
    j test_continue_193
test_fail_193:
    la a0, test_name_193
    jal ra, report_error
test_continue_193:

    # PNCLIPRI.B
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01458001 # expected result
    pnclipri.b s9, s6, 8
    bne s9, s10, test_fail_194
    j test_continue_194
test_fail_194:
    la a0, test_name_194
    jal ra, report_error
test_continue_194:

    # PNCLIPR.BS
    li s6, 0x807F0102 # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x01458001 # expected result
    pnclipr.bs s9, s6, s8
    bne s9, s10, test_fail_195
    j test_continue_195
test_fail_195:
    la a0, test_name_195
    jal ra, report_error
test_continue_195:

    # PNCLIPIU.B
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x014580FF # expected result
    pnclipiu.b s9, s6, 8
    bne s9, s10, test_fail_196
    j test_continue_196
test_fail_196:
    la a0, test_name_196
    jal ra, report_error
test_continue_196:

    # PNCLIPU.BS
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008
    li s10, 0x014580FF # expected result
    pnclipu.bs s9, s6, s8
    bne s9, s10, test_fail_197
    j test_continue_197
test_fail_197:
    la a0, test_name_197
    jal ra, report_error
test_continue_197:

    # PNCLIPRIU.B
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x00040810 # expected result
    pnclipriu.b s9, s6, 12
    bne s9, s10, test_fail_198
    j test_continue_198
test_fail_198:
    la a0, test_name_198
    jal ra, report_error
test_continue_198:

    # PNCLIPRU.BS
    li s6, 0x807FFFFF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x00040810 # expected result
    pnclipru.bs s9, s6, s8
    bne s9, s10, test_fail_199
    j test_continue_199
test_fail_199:
    la a0, test_name_199
    jal ra, report_error
test_continue_199:

    # PNSRLI.H
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF807F # expected result
    pnsrli.h s9, s6, 16
    bne s9, s10, test_fail_200
    j test_continue_200
test_fail_200:
    la a0, test_name_200
    jal ra, report_error
test_continue_200:

    # PNSRL.HS
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000010 # rs2
    li s10, 0x7FFF807F # expected result
    pnsrl.hs s9, s6, s8
    bne s9, s10, test_fail_201
    j test_continue_201
test_fail_201:
    la a0, test_name_201
    jal ra, report_error
test_continue_201:

    # PNSRAI.H
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF807F # expected result
    pnsrai.h s9, s6, 16
    bne s9, s10, test_fail_202
    j test_continue_202
test_fail_202:
    la a0, test_name_202
    jal ra, report_error
test_continue_202:

    # PNSRA.HS
    li s6, 0x807FFF03 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000010 # rs2
    li s10, 0x7FFF807F # expected result
    pnsra.hs s9, s6, s8
    bne s9, s10, test_fail_203
    j test_continue_203
test_fail_203:
    la a0, test_name_203
    jal ra, report_error
test_continue_203:

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
    bne s9, s10, test_fail_204
    j test_continue_204
test_fail_204:
    la a0, test_name_204
    jal ra, report_error
test_continue_204:

    # PNCLIPI.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x7FFF8000 # expected result
    pnclipi.h s9, s6, 8
    bne s9, s10, test_fail_205
    j test_continue_205
test_fail_205:
    la a0, test_name_205
    jal ra, report_error
test_continue_205:


    # PNCLIP.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x7FFF8000 # expected result
    pnclip.hs s9, s6, s8
    bne s9, s10, test_fail_206
    j test_continue_206
test_fail_206:
    la a0, test_name_206
    jal ra, report_error
test_continue_206:

    # PNCLIPRI.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x7FFF8000 # expected result
    pnclipri.h s9, s6, 8
    bne s9, s10, test_fail_207
    j test_continue_207
test_fail_207:
    la a0, test_name_207
    jal ra, report_error
test_continue_207:

    # PNCLIPR.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x00000008 # rs2
    li s10, 0x7FFF8000 # expected result
    pnclipr.hs s9, s6, s8
    bne s9, s10, test_fail_208
    j test_continue_208
test_fail_208:
    la a0, test_name_208
    jal ra, report_error
test_continue_208:

    # PNCLIPIU.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x1234FFFF # expected result
    pnclipiu.h s9, s6, 12
    bne s9, s10, test_fail_209
    j test_continue_209
test_fail_209:
    la a0, test_name_209
    jal ra, report_error
test_continue_209:

    # PNCLIPU.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x1234FFFF # expected result
    pnclipu.hs s9, s6, s8
    bne s9, s10, test_fail_210
    j test_continue_210
test_fail_210:
    la a0, test_name_210
    jal ra, report_error
test_continue_210:

    # PNCLIPRIU.H
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x1234FFFF # expected result
    pnclipriu.h s9, s6, 12
    bne s9, s10, test_fail_211
    j test_continue_211
test_fail_211:
    la a0, test_name_211
    jal ra, report_error
test_continue_211:

    # PNCLIPRU.HS
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s8, 0x0000000C # rs2
    li s10, 0x1234FFFF # expected result
    pnclipru.hs s9, s6, s8
    bne s9, s10, test_fail_212
    j test_continue_212
test_fail_212:
    la a0, test_name_212
    jal ra, report_error
test_continue_212:

    # NSRLI
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01234567 # expected result
    nsrli s9, s6, 32
    bne s9, s10, test_fail_213
    j test_continue_213
test_fail_213:
    la a0, test_name_213
    jal ra, report_error
test_continue_213:

    # NSRL
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x89ABCDEF # expected result
    nsrl s9, s6, s8
    bne s9, s10, test_fail_214
    j test_continue_214
test_fail_214:
    la a0, test_name_214
    jal ra, report_error
test_continue_214:

    # NSRAI
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s10, 0x89ABCDEF # expected result
    nsrai s9, s6, 32
    bne s9, s10, test_fail_215
    j test_continue_215
test_fail_215:
    la a0, test_name_215
    jal ra, report_error
test_continue_215:

    # NSRA
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x89ABCDEF # expected result
    nsra s9, s6, s8
    bne s9, s10, test_fail_216
    j test_continue_216
test_fail_216:
    la a0, test_name_216
    jal ra, report_error
test_continue_216:

    # NSRARI
    li s6, 0x89ABCDEF # rs1_l
    li s7, 0x01234567 # rs1_h
    li s10, 0x01234568 # expected result
    nsrari s9, s6, 32
    bne s9, s10, test_fail_217
    j test_continue_217
test_fail_217:
    la a0, test_name_217
    jal ra, report_error
test_continue_217:

    # NSRAR
    li s6, 0x01234567 # rs1_l
    li s7, 0x89ABCDEF # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x89ABCDEF # expected result
    nsrar s9, s6, s8
    bne s9, s10, test_fail_218
    j test_continue_218
test_fail_218:
    la a0, test_name_218
    jal ra, report_error
test_continue_218:

    # NCLIPI
    li s6, 0x7FFF8000 # rs1_l
    li s7, 0xFFFF0001 # rs1_h
    li s10, 0xFFFF0001 # expected result
    nclipi s9, s6, 32
    bne s9, s10, test_fail_219
    j test_continue_219
test_fail_219:
    la a0, test_name_219
    jal ra, report_error
test_continue_219:

    # NCLIP
    li s6, 0x7FFF8000 # rs1_l
    li s7, 0xFFFF0001 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0xFFFF0001 # expected result
    nclip s9, s6, s8
    bne s9, s10, test_fail_220
    j test_continue_220
test_fail_220:
    la a0, test_name_220
    jal ra, report_error
test_continue_220:

    # NCLIPRI
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF8001 # expected result
    nclipri s9, s6, 32
    bne s9, s10, test_fail_221
    j test_continue_221
test_fail_221:
    la a0, test_name_221
    jal ra, report_error
test_continue_221:

    # NCLIPR
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x7FFF8001 # expected result
    nclipr s9, s6, s8
    bne s9, s10, test_fail_222
    j test_continue_222
test_fail_222:
    la a0, test_name_222
    jal ra, report_error
test_continue_222:

    # NCLIPIU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF8000 # expected result
    nclipiu s9, s6, 32
    bne s9, s10, test_fail_223
    j test_continue_223
test_fail_223:
    la a0, test_name_223
    jal ra, report_error
test_continue_223:

    # NCLIPU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x7FFF8000 # expected result
    nclipu s9, s6, s8
    bne s9, s10, test_fail_224
    j test_continue_224
test_fail_224:
    la a0, test_name_224
    jal ra, report_error
test_continue_224:

    # NCLIPRIU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s10, 0x7FFF8001 # expected result
    nclipriu s9, s6, 32
    bne s9, s10, test_fail_225
    j test_continue_225
test_fail_225:
    la a0, test_name_225
    jal ra, report_error
test_continue_225:

    # NCLIPRU
    li s6, 0xFFFF0001 # rs1_l
    li s7, 0x7FFF8000 # rs1_h
    li s8, 0x00000020 # rs2
    li s10, 0x7FFF8001 # expected result
    nclipru s9, s6, s8
    bne s9, s10, test_fail_226
    j test_continue_226
test_fail_226:
    la a0, test_name_226
    jal ra, report_error
test_continue_226:

    # PMULH.H
    li s6, 0x7FFF0002 # rs1
    li s7, 0x7FFF0003 # rs2
    li s8, 0x3FFF0000 # expected result
    pmulh.h s9, s6, s7
    bne s9, s8, test_fail_227
    j test_continue_227
test_fail_227:
    la a0, test_name_227
    jal ra, report_error
test_continue_227:

    # PMULHR.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s8, 0x3FFF4000 # expected result
    pmulhr.h s9, s6, s7
    bne s9, s8, test_fail_228
    j test_continue_228
test_fail_228:
    la a0, test_name_228
    jal ra, report_error
test_continue_228:

    # PMULHSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x7FFEFFFF # expected result
    pmulhsu.h s9, s6, s7
    bne s9, s8, test_fail_229
    j test_continue_229
test_fail_229:
    la a0, test_name_229
    jal ra, report_error
test_continue_229:

    # PMULHRSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x7FFF0000 # expected result
    pmulhrsu.h s9, s6, s7
    bne s9, s8, test_fail_230
    j test_continue_230
test_fail_230:
    la a0, test_name_230
    jal ra, report_error
test_continue_230:

    # PMULHU.H
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x3FFF0000 # expected result
    pmulhu.h s9, s6, s7
    bne s9, s8, test_fail_231
    j test_continue_231
test_fail_231:
    la a0, test_name_231
    jal ra, report_error
test_continue_231:

    # PMULHRU.H
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x40000001 # expected result
    pmulhru.h s9, s6, s7
    bne s9, s8, test_fail_232
    j test_continue_232
test_fail_232:
    la a0, test_name_232
    jal ra, report_error
test_continue_232:

    # PMULQ.H
    li s6, 0x7FFF0001 # rs1
    li s7, 0x8000FFFF # rs2
    li s10, 0x8001ffff # expected result
    pmulq.h s8, s6, s7
    bne s10, s8, test_fail_233
    j test_continue_233
test_fail_233:
    la a0, test_name_233
    jal ra, report_error
test_continue_233:

    # PMULQR.H
    li s6, 0x80007FFF # rs1
    li s7, 0x80007FFF # rs2
    li s8, 0x7FFF7FFE # expected result
    pmulqr.h s9, s6, s7
    bne s9, s8, test_fail_234
    j test_continue_234
test_fail_234:
    la a0, test_name_234
    jal ra, report_error
test_continue_234:

    # PMHACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x40004001 # expected result
    pmhacc.h s9, s6, s7
    bne s9, s8, test_fail_235
    j test_continue_235
test_fail_235:
    la a0, test_name_235
    jal ra, report_error
test_continue_235:

    # PMHRACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x40004002 # expected result
    pmhracc.h s9, s6, s7
    bne s9, s8, test_fail_236
    j test_continue_236
test_fail_236:
    la a0, test_name_236
    jal ra, report_error
test_continue_236:

    # PMHACCSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x7FFF0001 # expected result
    pmhaccsu.h s9, s6, s7
    bne s9, s8, test_fail_237
    j test_continue_237
test_fail_237:
    la a0, test_name_237
    jal ra, report_error
test_continue_237:

    # PMHRACCSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0x80000002 # expected result
    pmhraccsu.h s9, s6, s7
    bne s9, s8, test_fail_238
    j test_continue_238
test_fail_238:
    la a0, test_name_238
    jal ra, report_error
test_continue_238:

    # PMHACCU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0xFFFF0002 # expected result
    pmhaccu.h s9, s6, s7
    bne s9, s8, test_fail_239
    j test_continue_239
test_fail_239:
    la a0, test_name_239
    jal ra, report_error
test_continue_239:

    # PMHRACCU.H
    li s6, 0xFFFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s9, 0x00010002 # rd
    li s8, 0xFFFF0003 # expected result
    pmhraccu.h s9, s6, s7
    bne s9, s8, test_fail_240
    j test_continue_240
test_fail_240:
    la a0, test_name_240
    jal ra, report_error
test_continue_240:

    # MULHR
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000000 # expected result
    mulhr s9, s6, s7
    bne s9, s8, test_fail_241
    j test_continue_241
test_fail_241:
    la a0, test_name_241
    jal ra, report_error
test_continue_241:

    # MULHRSU
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000001 # expected result
    mulhrsu s9, s6, s7
    bne s9, s8, test_fail_242
    j test_continue_242
test_fail_242:
    la a0, test_name_242
    jal ra, report_error
test_continue_242:

    # MULHRU
    li s6, 0xFFFFFFFF # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0xFFFFFFFE # expected result
    mulhru s9, s6, s7
    bne s9, s8, test_fail_243
    j test_continue_243
test_fail_243:
    la a0, test_name_243
    jal ra, report_error
test_continue_243:

    # MULQ
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0xFFFFFFFF # expected result
    mulq s9, s6, s7
    bne s9, s8, test_fail_244
    j test_continue_244
test_fail_244:
    la a0, test_name_244
    jal ra, report_error
test_continue_244:

    # MULQR
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000000 # expected result
    mulqr s9, s6, s7
    bne s9, s8, test_fail_245
    j test_continue_245
test_fail_245:
    la a0, test_name_245
    jal ra, report_error
test_continue_245:

    # MHACC
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000000 # expected result
    mhacc s9, s6, s7
    bne s9, s8, test_fail_246
    j test_continue_246
test_fail_246:
    la a0, test_name_246
    jal ra, report_error
test_continue_246:

    # MHRACC
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    mhracc s9, s6, s7
    bne s9, s8, test_fail_247
    j test_continue_247
test_fail_247:
    la a0, test_name_247
    jal ra, report_error
test_continue_247:

    # MHACCSU
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    mhaccsu s9, s6, s7
    bne s9, s8, test_fail_248
    j test_continue_248
test_fail_248:
    la a0, test_name_248
    jal ra, report_error
test_continue_248:

    # MHRACCSU
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000002 # expected result
    mhraccsu s9, s6, s7
    bne s9, s8, test_fail_249
    j test_continue_249
test_fail_249:
    la a0, test_name_249
    jal ra, report_error
test_continue_249:

    # MHACCU
    li s6, 0xFFFFFFFF # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFFFFFF # expected result
    mhaccu s9, s6, s7
    bne s9, s8, test_fail_250
    j test_continue_250
test_fail_250:
    la a0, test_name_250
    jal ra, report_error
test_continue_250:

    # MHRACCU
    li s6, 0xFFFFFFFF # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFFFFFF # expected result
    mhraccu s9, s6, s7
    bne s9, s8, test_fail_251
    j test_continue_251
test_fail_251:
    la a0, test_name_251
    jal ra, report_error
test_continue_251:

    # MQACC.H00
    li s6, 0x00008000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqacc.h00 s9, s6, s7
    bne s9, s8, test_fail_252
    j test_continue_252
test_fail_252:
    la a0, test_name_252
    jal ra, report_error
test_continue_252:

    # MQACC.H01
    li s6, 0x00007FFF # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqacc.h01 s9, s6, s7
    bne s9, s8, test_fail_253
    j test_continue_253
test_fail_253:
    la a0, test_name_253
    jal ra, report_error
test_continue_253:

    # MQACC.H11
    li s6, 0x7FFF8000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqacc.h11 s9, s6, s7
    bne s9, s8, test_fail_254
    j test_continue_254
test_fail_254:
    la a0, test_name_254
    jal ra, report_error
test_continue_254:


    # MQRACC.H00
    li s6, 0x00008000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqracc.h00 s9, s6, s7
    bne s9, s8, test_fail_255
    j test_continue_255
test_fail_255:
    la a0, test_name_255
    jal ra, report_error
test_continue_255:

    # MQRACC.H01
    li s6, 0x00007FFF # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqracc.h01 s9, s6, s7
    bne s9, s8, test_fail_256
    j test_continue_256
test_fail_256:
    la a0, test_name_256
    jal ra, report_error
test_continue_256:

    # MQRACC.H11
    li s6, 0x7FFF8000 # rs1
    li s7, 0x80007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF8002 # expected result
    mqracc.h11 s9, s6, s7
    bne s9, s8, test_fail_257
    j test_continue_257
test_fail_257:
    la a0, test_name_257
    jal ra, report_error
test_continue_257:

    # PMQ2ADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s8, 0x0000FFFD # expected result
    pmq2add.h s9, s6, s7
    bne s9, s8, test_fail_258
    j test_continue_258
test_fail_258:
    la a0, test_name_258
    jal ra, report_error
test_continue_258:

    # PMQ2ADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00000002 # rd
    li s8, 0x0000FFFF # expected result
    pmq2adda.h s9, s6, s7
    bne s9, s8, test_fail_259
    j test_continue_259
test_fail_259:
    la a0, test_name_259
    jal ra, report_error
test_continue_259:

    # PMQR2ADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s8, 0x0000FFFD # expected result
    pmqr2add.h s9, s6, s7
    bne s9, s8, test_fail_260
    j test_continue_260
test_fail_260:
    la a0, test_name_260
    jal ra, report_error
test_continue_260:

    # PMQR2ADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x7FFF8001 # rs2
    li s9, 0x00000002 # rd
    li s8, 0x0000FFFF # expected result
    pmqr2adda.h s9, s6, s7
    bne s9, s8, test_fail_261
    j test_continue_261
test_fail_261:
    la a0, test_name_261
    jal ra, report_error
test_continue_261:

    # PMUL.H.B00
    li s6, 0x7F80017F # rs1
    li s7, 0x7F018001 # rs2
    li s8, 0xFF80007F # expected result
    pmul.h.b00 s9, s6, s7
    bne s9, s8, test_fail_262
    j test_continue_262
test_fail_262:
    la a0, test_name_262
    jal ra, report_error
test_continue_262:

    # PMUL.H.B01
    li s6, 0x7F80017F # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0xFF80007F # expected result
    pmul.h.b01 s9, s6, s7
    bne s9, s8, test_fail_263
    j test_continue_263
test_fail_263:
    la a0, test_name_263
    jal ra, report_error
test_continue_263:

    # PMUL.H.B11
    li s6, 0x80667F88 # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0xFF80007F # expected result
    pmul.h.b11 s9, s6, s7
    bne s9, s8, test_fail_264
    j test_continue_264
test_fail_264:
    la a0, test_name_264
    jal ra, report_error
test_continue_264:

    # PMULSU.H.B00
    li s6, 0x7F80017F # rs1
    li s7, 0x7F018001 # rs2
    li s8, 0xFF80007F # expected result
    pmulsu.h.b00 s9, s6, s7
    bne s9, s8, test_fail_265
    j test_continue_265
test_fail_265:
    la a0, test_name_265
    jal ra, report_error
test_continue_265:

    # PMULSU.H.B11
    li s6, 0x807F7F04 # rs1
    li s7, 0x017F0108 # rs2
    li s8, 0xFF80007F # expected result
    pmulsu.h.b11 s9, s6, s7
    bne s9, s8, test_fail_266
    j test_continue_266
test_fail_266:
    la a0, test_name_266
    jal ra, report_error
test_continue_266:

    # PMULU.H.B00
    li s6, 0x7F80017F # rs1
    li s7, 0x7F018001 # rs2
    li s8, 0x0080007F # expected result
    pmulu.h.b00 s9, s6, s7
    bne s9, s8, test_fail_267
    j test_continue_267
test_fail_267:
    la a0, test_name_267
    jal ra, report_error
test_continue_267:

    # PMULU.H.B01
    li s6, 0x7F80017F # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0x0080007F # expected result
    pmulu.h.b01 s9, s6, s7
    bne s9, s8, test_fail_268
    j test_continue_268
test_fail_268:
    la a0, test_name_268
    jal ra, report_error
test_continue_268:

    # PMULU.H.B11
    li s6, 0x80807F7F # rs1
    li s7, 0x017F0180 # rs2
    li s8, 0x0080007F # expected result
    pmulu.h.b11 s9, s6, s7
    bne s9, s8, test_fail_269
    j test_continue_269
test_fail_269:
    la a0, test_name_269
    jal ra, report_error
test_continue_269:

    # MUL.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x3FFF0001 # expected result
    mul.h00 s9, s6, s7
    bne s9, s8, test_fail_270
    j test_continue_270
test_fail_270:
    la a0, test_name_270
    jal ra, report_error
test_continue_270:

    # MUL.H01
    li s6, 0xFFFF7FFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s8, 0x3FFF0001 # expected result
    mul.h01 s9, s6, s7
    bne s9, s8, test_fail_271
    j test_continue_271
test_fail_271:
    la a0, test_name_271
    jal ra, report_error
test_continue_271:

    # MUL.H11
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s8, 0x3FFF0001 # expected result
    mul.h11 s9, s6, s7
    bne s9, s8, test_fail_272
    j test_continue_272
test_fail_272:
    la a0, test_name_272
    jal ra, report_error
test_continue_272:

    # MULSU.H00
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0xFFFF8000 # expected result
    mulsu.h00 s9, s6, s7
    bne s9, s8, test_fail_273
    j test_continue_273
test_fail_273:
    la a0, test_name_273
    jal ra, report_error
test_continue_273:

    # MULSU.H11
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0xC0008000 # expected result
    mulsu.h11 s9, s6, s7
    bne s9, s8, test_fail_274
    j test_continue_274
test_fail_274:
    la a0, test_name_274
    jal ra, report_error
test_continue_274:

    # MULU.H00
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0x7FFF8000 # expected result
    mulu.h00 s9, s6, s7
    bne s9, s8, test_fail_275
    j test_continue_275
test_fail_275:
    la a0, test_name_275
    jal ra, report_error
test_continue_275:

    # MULU.H01
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0x7FFE8001 # expected result
    mulu.h01 s9, s6, s7
    bne s9, s8, test_fail_276
    j test_continue_276
test_fail_276:
    la a0, test_name_276
    jal ra, report_error
test_continue_276:

    # MULU.H11
    li s6, 0x8000FFFF # rs1
    li s7, 0x7FFF8000 # rs2
    li s8, 0x3FFF8000 # expected result
    mulu.h11 s9, s6, s7
    bne s9, s8, test_fail_277
    j test_continue_277
test_fail_277:
    la a0, test_name_277
    jal ra, report_error
test_continue_277:

    # MACC.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xBFFF0000 # expected result
    macc.h00 s9, s6, s7
    bne s9, s8, test_fail_278
    j test_continue_278
test_fail_278:
    la a0, test_name_278
    jal ra, report_error
test_continue_278:

    # MACC.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0x40008000 # expected result
    macc.h00 s9, s6, s7
    bne s9, s8, test_fail_279
    j test_continue_279
test_fail_279:
    la a0, test_name_279
    jal ra, report_error
test_continue_279:

    # MACC.H01
    li s6, 0xFFFF7FFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xBFFF0000 # expected result
    macc.h01 s9, s6, s7
    bne s9, s8, test_fail_280
    j test_continue_280
test_fail_280:
    la a0, test_name_280
    jal ra, report_error
test_continue_280:

    # MACC.H11
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xBFFF0000 # expected result
    macc.h11 s9, s6, s7
    bne s9, s8, test_fail_281
    j test_continue_281
test_fail_281:
    la a0, test_name_281
    jal ra, report_error
test_continue_281:

    # MACCSU.H00
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0xBFFF8000 # expected result
    maccsu.h00 s9, s6, s7
    bne s9, s8, test_fail_282
    j test_continue_282
test_fail_282:
    la a0, test_name_282
    jal ra, report_error
test_continue_282:

    # MACCSU.H11
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x8000FFFF # rs2
    li s9, 0x80000000 # rd
    li s8, 0xBFFF8000 # expected result
    maccsu.h11 s9, s6, s7
    bne s9, s8, test_fail_283
    j test_continue_283
test_fail_283:
    la a0, test_name_283
    jal ra, report_error
test_continue_283:

    # MACCU.H00
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0xFFFF8000 # expected result
    maccu.h00 s9, s6, s7
    bne s9, s8, test_fail_284
    j test_continue_284
test_fail_284:
    la a0, test_name_284
    jal ra, report_error
test_continue_284:

    # MACCU.H01
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0x7FFE0001 # expected result
    maccu.h01 s9, s6, s7
    bne s9, s8, test_fail_285
    j test_continue_285
test_fail_285:
    la a0, test_name_285
    jal ra, report_error
test_continue_285:

    # MACCU.H11
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0xFFFE8001 # expected result
    maccu.h11 s9, s6, s7
    bne s9, s8, test_fail_286
    j test_continue_286
test_fail_286:
    la a0, test_name_286
    jal ra, report_error
test_continue_286:

    # PM2ADD.H
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s8, 0x80000000 # expected result
    pm2add.h s9, s6, s7
    bne s9, s8, test_fail_287
    j test_continue_287
test_fail_287:
    la a0, test_name_287
    jal ra, report_error
test_continue_287:

    # PM2ADDA.H
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x7FFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xFFFE0001 # expected result
    pm2adda.h s9, s6, s7
    bne s9, s8, test_fail_288
    j test_continue_288
test_fail_288:
    la a0, test_name_288
    jal ra, report_error
test_continue_288:

    # PM2ADDSU.H
    li s6, 0xFFFF0002 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x0001FFFD # expected result
    pm2addsu.h s9, s6, s7
    bne s9, s8, test_fail_289
    j test_continue_289
test_fail_289:
    la a0, test_name_289
    jal ra, report_error
test_continue_289:

    # PM2ADDASU.H
    li s6, 0xFFFF0002 # rs1
    li s7, 0x0001FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x0001FFFE # expected result
    pm2addasu.h s9, s6, s7
    bne s9, s8, test_fail_290
    j test_continue_290
test_fail_290:
    la a0, test_name_290
    jal ra, report_error
test_continue_290:

    # PM2ADDU.H
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s8, 0x80000000 # expected result
    pm2addu.h s9, s6, s7
    bne s9, s8, test_fail_291
    j test_continue_291
test_fail_291:
    la a0, test_name_291
    jal ra, report_error
test_continue_291:

    # PM2ADDAU.H
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s9, 0x00000010 # rd
    li s8, 0x80000010 # expected result
    pm2addau.h s9, s6, s7
    bne s9, s8, test_fail_292
    j test_continue_292
test_fail_292:
    la a0, test_name_292
    jal ra, report_error
test_continue_292:

    # PM2ADD.HX
    li s6, 0x80008000 # rs1
    li s7, 0x80008000 # rs2
    li s8, 0x80000000 # expected result
    pm2add.hx s9, s6, s7
    bne s9, s8, test_fail_293
    j test_continue_293
test_fail_293:
    la a0, test_name_293
    jal ra, report_error
test_continue_293:

    # PM2ADDA.HX
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x7FFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0xFFFE0001 # expected result
    pm2adda.hx s9, s6, s7
    bne s9, s8, test_fail_294
    j test_continue_294
test_fail_294:
    la a0, test_name_294
    jal ra, report_error
test_continue_294:

    # PM2SADD.H
    li s6, 0x00017FFF # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x3FFF0002 # expected result
    pm2sadd.h s9, s6, s7
    bne s9, s8, test_fail_295
    j test_continue_295
test_fail_295:
    la a0, test_name_295
    jal ra, report_error
test_continue_295:

    # PM2SADD.HX
    li s6, 0x7FFF0001 # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x3FFF0002 # expected result
    pm2sadd.hx s9, s6, s7
    bne s9, s8, test_fail_296
    j test_continue_296
test_fail_296:
    la a0, test_name_296
    jal ra, report_error
test_continue_296:

    # #PM2SUB.H
    li s6, 0x00017FFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x00000000 # expected result
    pm2sub.h s9, s6, s7
    bne s9, s8, test_fail_297
    j test_continue_297
test_fail_297:
    la a0, test_name_297
    jal ra, report_error
test_continue_297:

    # PM2SUBA.H
    li s6, 0x00017FFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    pm2suba.h s9, s6, s7
    bne s9, s8, test_fail_298
    j test_continue_298
test_fail_298:
    la a0, test_name_298
    jal ra, report_error
test_continue_298:

    # PM2SUB.HX
    li s6, 0x7FFF0001 # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x00000000 # expected result
    pm2sub.hx s9, s6, s7
    bne s9, s8, test_fail_299
    j test_continue_299
test_fail_299:
    la a0, test_name_299
    jal ra, report_error
test_continue_299:

    # PM2SUBA.HX
    li s6, 0x00010001 # rs1
    li s7, 0x0001FFFF # rs2
    li s9, 0x00000005 # rd
    li s8, 0x00000007 # expected result
    pm2suba.hx s9, s6, s7
    bne s9, s8, test_fail_300
    j test_continue_300
test_fail_300:
    la a0, test_name_300
    jal ra, report_error
test_continue_300:

    # PM4ADD.B
    li s6, 0x80030201 # rs1
    li s7, 0x01030201 # rs2
    li s8, 0xFFFFFF8E # expected result
    pm4add.b s9, s6, s7
    bne s9, s8, test_fail_301
    j test_continue_301
test_fail_301:
    la a0, test_name_301
    jal ra, report_error
test_continue_301:

    # PM4ADDA.B
    li s6, 0x04030201 # rs1
    li s7, 0x04030201 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x0000001F # expected result
    pm4adda.b s9, s6, s7
    bne s9, s8, test_fail_302
    j test_continue_302
test_fail_302:
    la a0, test_name_302
    jal ra, report_error
test_continue_302:

    # PM4ADDSU.B
    li s6, 0x01030201 # rs1
    li s7, 0x80030201 # rs2
    li s8, 0x0000008E # expected result
    pm4addsu.b s9, s6, s7
    bne s9, s8, test_fail_303
    j test_continue_303
test_fail_303:
    la a0, test_name_303
    jal ra, report_error
test_continue_303:

    # PM4ADDASU.B
    li s6, 0x80808080 # rs1
    li s7, 0x80808080 # rs2
    li s9, 0x00000001 # rd
    li s8, 0xFFFF0001 # expected result
    pm4addasu.b s9, s6, s7
    bne s9, s8, test_fail_304
    j test_continue_304
test_fail_304:
    la a0, test_name_304
    jal ra, report_error
test_continue_304:

    # PM4ADDU.B
    li s6, 0x80030201 # rs1
    li s7, 0x01030201 # rs2
    li s8, 0x0000008E # expected result
    pm4addu.b s9, s6, s7
    bne s9, s8, test_fail_305
    j test_continue_305
test_fail_305:
    la a0, test_name_305
    jal ra, report_error
test_continue_305:

    # PM4ADDAU.B
    li s6, 0x80808080 # rs1
    li s7, 0x80808080 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00010001 # expected result
    pm4addau.b s9, s6, s7
    bne s9, s8, test_fail_306
    j test_continue_306
test_fail_306:
    la a0, test_name_306
    jal ra, report_error
test_continue_306:

    # PMULH.H.B0
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s8, 0x007FC080 # expected result
    pmulh.h.b0 s9, s6, s7
    bne s9, s8, test_fail_307
    j test_continue_307
test_fail_307:
    la a0, test_name_307
    jal ra, report_error
test_continue_307:

    # PMULH.H.B1
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s8, 0x007FC080 # expected result
    pmulh.h.b1 s9, s6, s7
    bne s9, s8, test_fail_308
    j test_continue_308
test_fail_308:
    la a0, test_name_308
    jal ra, report_error
test_continue_308:

    # PMULHSU.H.B0
    li s6, 0x0010FFFF # rs1
    li s7, 0x01800001 # rs2
    li s8, 0x0008FFFF # expected result
    pmulhsu.h.b0 s9, s6, s7
    bne s9, s8, test_fail_309
    j test_continue_309
test_fail_309:
    la a0, test_name_309
    jal ra, report_error
test_continue_309:

    # PMULHSU.H.B1
    li s6, 0x0010FFFF # rs1
    li s7, 0x8001017F # rs2
    li s8, 0x0008FFFF # expected result
    pmulhsu.h.b1 s9, s6, s7
    bne s9, s8, test_fail_310
    j test_continue_310
test_fail_310:
    la a0, test_name_310
    jal ra, report_error
test_continue_310:

    # PMHACC.H.B0
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhacc.h.b0 s9, s6, s7
    bne s9, s8, test_fail_311
    j test_continue_311
test_fail_311:
    la a0, test_name_311
    jal ra, report_error
test_continue_311:

    # PMHACC.H.B1
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhacc.h.b1 s9, s6, s7
    bne s9, s8, test_fail_312
    j test_continue_312
test_fail_312:
    la a0, test_name_312
    jal ra, report_error
test_continue_312:

    # PMHACCSU.H.B0
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhaccsu.h.b0 s9, s6, s7
    bne s9, s8, test_fail_313
    j test_continue_313
test_fail_313:
    la a0, test_name_313
    jal ra, report_error
test_continue_313:

    # PMHACCSU.H.B1
    li s6, 0x7FFF8000 # rs1
    li s7, 0x01017F7F # rs2
    li s9, 0x00010001 # rd
    li s8, 0x0080C081 # expected result
    pmhaccsu.h.b1 s9, s6, s7
    bne s9, s8, test_fail_314
    j test_continue_314
test_fail_314:
    la a0, test_name_314
    jal ra, report_error
test_continue_314:

    # MULH.H0
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0xFFFFFFFF # expected result
    mulh.h0 s9, s6, s7
    bne s9, s8, test_fail_315
    j test_continue_315
test_fail_315:
    la a0, test_name_315
    jal ra, report_error
test_continue_315:

    # MULH.H1
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s8, 0xFFFFFFFF # expected result
    mulh.h1 s9, s6, s7
    bne s9, s8, test_fail_316
    j test_continue_316
test_fail_316:
    la a0, test_name_316
    jal ra, report_error
test_continue_316:

    # MULHSU.H0
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x7FFF7FFF # expected result
    mulhsu.h0 s9, s6, s7
    bne s9, s8, test_fail_317
    j test_continue_317
test_fail_317:
    la a0, test_name_317
    jal ra, report_error
test_continue_317:

    # MULHSU.H1
    li s6, 0x80000000 # rs1
    li s7, 0xFFFF0000 # rs2
    li s8, 0x80008000 # expected result
    mulhsu.h1 s9, s6, s7
    bne s9, s8, test_fail_318
    j test_continue_318
test_fail_318:
    la a0, test_name_318
    jal ra, report_error
test_continue_318:

    # MHACC.H0
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000000 # expected result
    mhacc.h0 s9, s6, s7
    bne s9, s8, test_fail_319
    j test_continue_319
test_fail_319:
    la a0, test_name_319
    jal ra, report_error
test_continue_319:


    # MHACC.H1
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000000 # expected result
    mhacc.h1 s9, s6, s7
    bne s9, s8, test_fail_320
    j test_continue_320
test_fail_320:
    la a0, test_name_320
    jal ra, report_error
test_continue_320:

    # MHACCSU.H0
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    mhaccsu.h0 s9, s6, s7
    bne s9, s8, test_fail_321
    j test_continue_321
test_fail_321:
    la a0, test_name_321
    jal ra, report_error
test_continue_321:

    # MHACCSU.H1
    li s6, 0x7FFFFFFF # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7FFF8000 # expected result
    mhaccsu.h1 s9, s6, s7
    bne s9, s8, test_fail_322
    j test_continue_322
test_fail_322:
    la a0, test_name_322
    jal ra, report_error
test_continue_322:

    # PWMUL.B
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x01440a90 # expected result
    pwmul.b s8, s6, s7
    bne s10, s8, test_fail_323
    j test_continue_323
test_fail_323:
    la a0, test_name_323
    jal ra, report_error
test_continue_323:
    bne s11, s9, test_fail_324
    j test_continue_324
test_fail_324:
    la a0, test_name_324
    jal ra, report_error
test_continue_324:

    # PWMULSU.B
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x01440a90 # expected result
    pwmulsu.b s8, s6, s7
    bne s10, s8, test_fail_325
    j test_continue_325
test_fail_325:
    la a0, test_name_325
    jal ra, report_error
test_continue_325:
    bne s11, s9, test_fail_326
    j test_continue_326
test_fail_326:
    la a0, test_name_326
    jal ra, report_error
test_continue_326:

    # PWMULU.B
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x000000FF # expected result
    li s11, 0x01440a90 # expected result
    pwmulu.b s8, s6, s7
    bne s10, s8, test_fail_327
    j test_continue_327
test_fail_327:
    la a0, test_name_327
    jal ra, report_error
test_continue_327:
    bne s11, s9, test_fail_328
    j test_continue_328
test_fail_328:
    la a0, test_name_328
    jal ra, report_error
test_continue_328:

    # PMQWACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000000 # expected result
    pmqwacc.h s8, s6, s7
    bne s10, s8, test_fail_329
    j test_continue_329
test_fail_329:
    la a0, test_name_329
    jal ra, report_error
test_continue_329:
    bne s11, s9, test_fail_330
    j test_continue_330
test_fail_330:
    la a0, test_name_330
    jal ra, report_error
test_continue_330:

    # PMQRWACC.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x00000000 # expected result
    pmqrwacc.h s8, s6, s7
    bne s10, s8, test_fail_331
    j test_continue_331
test_fail_331:
    la a0, test_name_331
    jal ra, report_error
test_continue_331:
    bne s11, s9, test_fail_332
    j test_continue_332
test_fail_332:
    la a0, test_name_332
    jal ra, report_error
test_continue_332:

    # PWMUL.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x014b5a90 # expected result
    pwmul.h s8, s6, s7
    bne s10, s8, test_fail_333
    j test_continue_333
test_fail_333:
    la a0, test_name_333
    jal ra, report_error
test_continue_333:
    bne s11, s9, test_fail_334
    j test_continue_334
test_fail_334:
    la a0, test_name_334
    jal ra, report_error
test_continue_334:

    # PWMULSU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x014b5a90 # expected result
    pwmulsu.h s8, s6, s7
    bne s10, s8, test_fail_335
    j test_continue_335
test_fail_335:
    la a0, test_name_335
    jal ra, report_error
test_continue_335:
    bne s11, s9, test_fail_336
    j test_continue_336
test_fail_336:
    la a0, test_name_336
    jal ra, report_error
test_continue_336:

    # PWMULU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x014b5a90 # expected result
    pwmulu.h s8, s6, s7
    bne s10, s8, test_fail_337
    j test_continue_337
test_fail_337:
    la a0, test_name_337
    jal ra, report_error
test_continue_337:
    bne s11, s9, test_fail_338
    j test_continue_338
test_fail_338:
    la a0, test_name_338
    jal ra, report_error
test_continue_338:

    # PWMACC.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x014b5a91 # expected result
    pwmacc.h s8, s6, s7
    bne s10, s8, test_fail_339
    j test_continue_339
test_fail_339:
    la a0, test_name_339
    jal ra, report_error
test_continue_339:
    bne s11, s9, test_fail_340
    j test_continue_340
test_fail_340:
    la a0, test_name_340
    jal ra, report_error
test_continue_340:

    # PWMACCSU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00000000 # expected result
    li s11, 0x014b5a91 # expected result
    pwmaccsu.h s8, s6, s7
    bne s10, s8, test_fail_341
    j test_continue_341
test_fail_341:
    la a0, test_name_341
    jal ra, report_error
test_continue_341:
    bne s11, s9, test_fail_342
    j test_continue_342
test_fail_342:
    la a0, test_name_342
    jal ra, report_error
test_continue_342:

    # PWMACCU.H
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x00000001 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x014b5a91 # expected result
    pwmaccu.h s8, s6, s7
    bne s10, s8, test_fail_343
    j test_continue_343
test_fail_343:
    la a0, test_name_343
    jal ra, report_error
test_continue_343:
    bne s11, s9, test_fail_344
    j test_continue_344
test_fail_344:
    la a0, test_name_344
    jal ra, report_error
test_continue_344:

    # PM2WADD.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x00000000 # expected result
    pm2wadd.h s8, s6, s7
    bne s10, s8, test_fail_345
    j test_continue_345
test_fail_345:
    la a0, test_name_345
    jal ra, report_error
test_continue_345:
    bne s11, s9, test_fail_346
    j test_continue_346
test_fail_346:
    la a0, test_name_346
    jal ra, report_error
test_continue_346:

    # PM2WADDSU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x8000FFFF # expected result
    li s11, 0xFFFFFFFF # expected result
    pm2waddsu.h s8, s6, s7
    bne s10, s8, test_fail_347
    j test_continue_347
test_fail_347:
    la a0, test_name_347
    jal ra, report_error
test_continue_347:
    bne s11, s9, test_fail_348
    j test_continue_348
test_fail_348:
    la a0, test_name_348
    jal ra, report_error
test_continue_348:

    # PM2WADDU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x7FFFFFFF # expected result
    li s11, 0x00000000 # expected result
    pm2waddu.h s8, s6, s7
    bne s10, s8, test_fail_349
    j test_continue_349
test_fail_349:
    la a0, test_name_349
    jal ra, report_error
test_continue_349:
    bne s11, s9, test_fail_350
    j test_continue_350
test_fail_350:
    la a0, test_name_350
    jal ra, report_error
test_continue_350:

    # PM2WADD.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x00000000 # expected result
    pm2wadd.hx s8, s6, s7
    bne s10, s8, test_fail_351
    j test_continue_351
test_fail_351:
    la a0, test_name_351
    jal ra, report_error
test_continue_351:
    bne s11, s9, test_fail_352
    j test_continue_352
test_fail_352:
    la a0, test_name_352
    jal ra, report_error
test_continue_352:

    # PM2WSUB.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s10, 0x00000001 # expected result
    li s11, 0x00000000 # expected result
    pm2wsub.h s8, s6, s7
    bne s10, s8, test_fail_353
    j test_continue_353
test_fail_353:
    la a0, test_name_353
    jal ra, report_error
test_continue_353:
    bne s11, s9, test_fail_354
    j test_continue_354
test_fail_354:
    la a0, test_name_354
    jal ra, report_error
test_continue_354:

    # PM2WSUB.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s10, 0x00000001 # expected result
    li s11, 0x00000000 # expected result
    pm2wsub.hx s8, s6, s7
    bne s10, s8, test_fail_355
    j test_continue_355
test_fail_355:
    la a0, test_name_355
    jal ra, report_error
test_continue_355:
    bne s11, s9, test_fail_356
    j test_continue_356
test_fail_356:
    la a0, test_name_356
    jal ra, report_error
test_continue_356:

    # PM2WADDA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x10000000 # expected result
    pm2wadda.h s8, s6, s7
    bne s10, s8, test_fail_357
    j test_continue_357
test_fail_357:
    la a0, test_name_357
    jal ra, report_error
test_continue_357:
    bne s11, s9, test_fail_358
    j test_continue_358
test_fail_358:
    la a0, test_name_358
    jal ra, report_error
test_continue_358:

    # PM2WADDASU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x80010000 # expected result
    li s11, 0x0FFFFFFF # expected result
    pm2waddasu.h s8, s6, s7
    bne s10, s8, test_fail_359
    j test_continue_359
test_fail_359:
    la a0, test_name_359
    jal ra, report_error
test_continue_359:
    bne s11, s9, test_fail_360
    j test_continue_360
test_fail_360:
    la a0, test_name_360
    jal ra, report_error
test_continue_360:

    # PM2WADDAU.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x80000000 # rd
    li s9, 0x00000001 # rd
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x00000001 # expected result
    pm2waddau.h s8, s6, s7
    bne s10, s8, test_fail_361
    j test_continue_361
test_fail_361:
    la a0, test_name_361
    jal ra, report_error
test_continue_361:
    bne s11, s9, test_fail_362
    j test_continue_362
test_fail_362:
    la a0, test_name_362
    jal ra, report_error
test_continue_362:

    # PM2WADDA.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00010000 # expected result
    li s11, 0x10000000 # expected result
    pm2wadda.hx s8, s6, s7
    bne s10, s8, test_fail_363
    j test_continue_363
test_fail_363:
    la a0, test_name_363
    jal ra, report_error
test_continue_363:
    bne s11, s9, test_fail_364
    j test_continue_364
test_fail_364:
    la a0, test_name_364
    jal ra, report_error
test_continue_364:

    # PM2WSUBA.H
    li s6, 0x7FFF8000 # rs1
    li s7, 0x0001FFFF # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00000002 # expected result
    li s11, 0x10000000 # expected result
    pm2wsuba.h s8, s6, s7
    bne s10, s8, test_fail_365
    j test_continue_365
test_fail_365:
    la a0, test_name_365
    jal ra, report_error
test_continue_365:
    bne s11, s9, test_fail_366
    j test_continue_366
test_fail_366:
    la a0, test_name_366
    jal ra, report_error
test_continue_366:

    # PM2WSUBA.HX
    li s6, 0x7FFF8000 # rs1
    li s7, 0xFFFF0001 # rs2
    li s8, 0x00000001 # rd
    li s9, 0x10000000 # rd
    li s10, 0x00000002 # expected result
    li s11, 0x10000000 # expected result
    pm2wsuba.hx s8, s6, s7
    bne s10, s8, test_fail_367
    j test_continue_367
test_fail_367:
    la a0, test_name_367
    jal ra, report_error
test_continue_367:
    bne s11, s9, test_fail_368
    j test_continue_368
test_fail_368:
    la a0, test_name_368
    jal ra, report_error
test_continue_368:

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
    bne s10, s8, test_fail_369
    j test_continue_369
test_fail_369:
    la a0, test_name_369
    jal ra, report_error
test_continue_369:
    bne s11, s9, test_fail_370
    j test_continue_370
test_fail_370:
    la a0, test_name_370
    jal ra, report_error
test_continue_370:

    # WMULSU
    li s6, 0x7fffffff
    li s7, 0x80000000
    li s8, 0x80000000
    li s9, 0x3FFFFFFF
    wmulsu s10, s6, s7
    bne s10, s8, test_fail_371
    j test_continue_371
test_fail_371:
    la a0, test_name_371
    jal ra, report_error
test_continue_371:
    bne s11, s9, test_fail_372
    j test_continue_372
test_fail_372:
    la a0, test_name_372
    jal ra, report_error
test_continue_372:

    # WMULU
    li s6, 0x7fffffff
    li s7, 0x80000000
    li s8, 0x80000000
    li s9, 0x3FFFFFFF
    wmulu s10, s6, s7
    bne s10, s8, test_fail_373
    j test_continue_373
test_fail_373:
    la a0, test_name_373
    jal ra, report_error
test_continue_373:
    bne s11, s9, test_fail_374
    j test_continue_374
test_fail_374:
    la a0, test_name_374
    jal ra, report_error
test_continue_374:

    # WMACC
    li s6, 0x00000002
    li s7, 0x00000002
    li s8, 0x11111111
    li s9, 0x11111111
    li s10, 0x11111115
    li s11, 0x11111111
    wmacc s8, s6, s7;
    bne s8, s10, test_fail_375
    j test_continue_375
test_fail_375:
    la a0, test_name_375
    jal ra, report_error
test_continue_375:
    bne s9, s11, test_fail_376
    j test_continue_376
test_fail_376:
    la a0, test_name_376
    jal ra, report_error
test_continue_376:

    # WMACCSU
    li s6, 0x00000001
    li s7, 0xFFFFFFFF
    li s8, 0x00000000
    li s9, 0x11111111
    li s10, 0xFFFFFFFF
    li s11, 0x11111111
    wmaccsu s8, s6, s7;
    bne s8, s10, test_fail_377
    j test_continue_377
test_fail_377:
    la a0, test_name_377
    jal ra, report_error
test_continue_377:
    bne s9, s11, test_fail_378
    j test_continue_378
test_fail_378:
    la a0, test_name_378
    jal ra, report_error
test_continue_378:

    # WMACCU
    li s6, 0x80000000
    li s7, 0xFFFFFFFF
    li s8, 0x00000001
    li s9, 0x10000000
    li s10, 0x80000001
    li s11, 0x8FFFFFFF
    wmaccu s8, s6, s7;
    bne s8, s10, test_fail_379
    j test_continue_379
test_fail_379:
    la a0, test_name_379
    jal ra, report_error
test_continue_379:
    bne s9, s11, test_fail_380
    j test_continue_380
test_fail_380:
    la a0, test_name_380
    jal ra, report_error
test_continue_380:

    # prepare final status output
    beqz    s5, print_pass
    j       print_summary_fail
print_pass:
    li      s1, 0x10000000 # UART output register
    la      s2, pass
    addi    s3, s2, 8
    jal     ra, write_range
    j       forever
print_summary_fail:
    li      s1, 0x10000000 # UART output register
    la      s2, summary_fail
    addi    s3, s2, 16
    jal     ra, write_range
    j       forever
print_error:
    li      s1, 0x10000000 # UART output register
    la      s2, error
    addi    s3, s2, 7
    jal     ra, write_range
    j       forever

report_error:
    addi    sp, sp, -16
    sw      ra, 12(sp)
    sw      a0, 8(sp)
    addi    s5, s5, 1
    li      s1, 0x10000000 # UART output register
    la      s2, error_prefix
    addi    s3, s2, 6
    jal     ra, write_range
    lw      s2, 8(sp)
report_error_name_loop:
    lb      s4, 0(s2)
    beqz    s4, report_error_suffix
    sb      s4, 0(s1)
    addi    s2, s2, 1
    j       report_error_name_loop
report_error_suffix:
    la      s2, newline
    addi    s3, s2, 1
    jal     ra, write_range
    lw      ra, 12(sp)
    addi    sp, sp, 16
    ret
write_range:
    lb      s4, 0(s2) # load next byte at s2 into s4
    sb      s4, 0(s1) # write byte to UART register
    addi    s2, s2, 1 # increase s2
    blt     s2, s3, write_range # branch back until end addr (s3) reached
    ret
forever:
    wfi
    j       forever

.section .data

newline:
    .string "\n"
error_prefix:
    .string "FAIL: "
summary_fail:
    .string "completed: FAIL\n"

test_name_0:
    .string "PADD.B"

test_name_1:
    .string "PADD.BS"

test_name_2:
    .string "PSUB.B"

test_name_3:
    .string "PSADD.B"

test_name_4:
    .string "PSADDU.B"

test_name_5:
    .string "PSSUB.B"

test_name_6:
    .string "PSSUBU.B"

test_name_7:
    .string "PAADD.B"

test_name_8:
    .string "PAADDU.B"

test_name_9:
    .string "PASUB.B"

test_name_10:
    .string "PASUBU.B"

test_name_11:
    .string "pabd.B"

test_name_12:
    .string "pabdU.B"

test_name_13:
    .string "PSABS.B"

test_name_14:
    .string "PREDSUM.BS"

test_name_15:
    .string "PREDSUMU.BS"

test_name_16:
    .string "pabdSUMU.B"

test_name_17:
    .string "pabdSUMAU.B"

test_name_18:
    .string "PADD.HS"

test_name_19:
    .string "PADD.H"

test_name_20:
    .string "PSUB.H"

test_name_21:
    .string "PSADD.H"

test_name_22:
    .string "PSADDU.H"

test_name_23:
    .string "PSSUB.H"

test_name_24:
    .string "PSSUBU.H"

test_name_25:
    .string "PAADD.H"

test_name_26:
    .string "PAADDU.H"

test_name_27:
    .string "PASUB.H"

test_name_28:
    .string "PASUBU.H"

test_name_29:
    .string "PSH1ADD.H"

test_name_30:
    .string "PSSH1SADD.H"

test_name_31:
    .string "PAS.HX"

test_name_32:
    .string "PSA.HX"

test_name_33:
    .string "PSAS.HX"

test_name_34:
    .string "PSSA.HX"

test_name_35:
    .string "PAAS.HX"

test_name_36:
    .string "PASA.HX"

test_name_37:
    .string "pabd.H"

test_name_38:
    .string "pabdU.H"

test_name_39:
    .string "PSABS.H"

test_name_40:
    .string "PREDSUM.HS"

test_name_41:
    .string "PREDSUMU.HS"

test_name_42:
    .string "SADD"

test_name_43:
    .string "SADDU"

test_name_44:
    .string "SSUB"

test_name_45:
    .string "SSUBU"

test_name_46:
    .string "AADD"

test_name_47:
    .string "AADDU"

test_name_48:
    .string "ASUB"

test_name_49:
    .string "ASUBU"

test_name_50:
    .string "SSH1SADD"

test_name_51:
    .string "PSLLI.B"

test_name_52:
    .string "PSLL.BS"

test_name_53:
    .string "PSRLI.B"

test_name_54:
    .string "PSRL.BS"

test_name_55:
    .string "PSRAI.B"

test_name_56:
    .string "PSRA.BS"

test_name_57:
    .string "PMIN.B"

test_name_58:
    .string "PMINU.B"

test_name_59:
    .string "PMAX.B"

test_name_60:
    .string "PMAXU.B"

test_name_61:
    .string "PMSEQ.B"

test_name_62:
    .string "PMSLT.B"

test_name_63:
    .string "PMSLTU.B"

test_name_64:
    .string "PSEXT.H.B"

test_name_65:
    .string "PSATI.H"

test_name_66:
    .string "PUSATI.H"

test_name_67:
    .string "PSLLI.H"

test_name_68:
    .string "PSLL.HS"

test_name_69:
    .string "PSRLI.H"

test_name_70:
    .string "PSRL.HS"

test_name_71:
    .string "PSRAI.H"

test_name_72:
    .string "PSRA.HS"

test_name_73:
    .string "PSSLAI.H"

test_name_74:
    .string "PSRARI.H"

test_name_75:
    .string "PSSHA.HS"

test_name_76:
    .string "PSSHAR.HS"

test_name_77:
    .string "PMIN.H"

test_name_78:
    .string "PMINU.H"

test_name_79:
    .string "PMAX.H"

test_name_80:
    .string "PMAXU.H"

test_name_81:
    .string "PMSEQ.H"

test_name_82:
    .string "PMSLT.H"

test_name_83:
    .string "PMSLTU.H"

test_name_84:
    .string "SATI_32"

test_name_85:
    .string "USATI_32"

test_name_86:
    .string "SSLAI"

test_name_87:
    .string "SRARI"

test_name_88:
    .string "SSHA"

test_name_89:
    .string "SSHAR"

test_name_90:
    .string "MSEQ"

test_name_91:
    .string "MSLT"

test_name_92:
    .string "MSLTU"

test_name_93:
    .string "PPAIRE.B"

test_name_94:
    .string "PPAIREO.B"

test_name_95:
    .string "PPAIROE.B"

test_name_96:
    .string "PPAIRO.B"

test_name_97:
    .string "PPAIREO.H"

test_name_98:
    .string "PPAIROE.H"

test_name_99:
    .string "PPAIRO.H"

test_name_100:
    .string "ABS"

test_name_101:
    .string "CLS"

test_name_102:
    .string "SLX"

test_name_103:
    .string "SRX"

test_name_104:
    .string "MVM"

test_name_105:
    .string "MVMN"

test_name_106:
    .string "MERGE"

test_name_107:
    .string "PWADD.B"

test_name_108:
    .string "PWADD.B"

test_name_109:
    .string "PWADDA.B"

test_name_110:
    .string "PWADDA.B"

test_name_111:
    .string "PWADDU.B"

test_name_112:
    .string "PWADDU.B"

test_name_113:
    .string "PWADDAU.B"

test_name_114:
    .string "PWADDAU.B"

test_name_115:
    .string "PWSUB.B"

test_name_116:
    .string "PWSUB.B"

test_name_117:
    .string "PWSUBA.B"

test_name_118:
    .string "PWSUBA.B"

test_name_119:
    .string "PWSUBU.B"

test_name_120:
    .string "PWSUBU.B"

test_name_121:
    .string "PWSUBAU.B"

test_name_122:
    .string "PWSUBAU.B"

test_name_123:
    .string "PWSLLI.B"

test_name_124:
    .string "PWSLLI.B"

test_name_125:
    .string "PWSLL.BS"

test_name_126:
    .string "PWSLL.BS"

test_name_127:
    .string "PWSLAI.B"

test_name_128:
    .string "PWSLAI.B"

test_name_129:
    .string "PWSLA.BS"

test_name_130:
    .string "PWSLA.BS"

test_name_131:
    .string "WZIP8P"

test_name_132:
    .string "WZIP8P"

test_name_133:
    .string "PWADD.H"

test_name_134:
    .string "PWADD.H"

test_name_135:
    .string "PWADDA.H"

test_name_136:
    .string "PWADDA.H"

test_name_137:
    .string "PWADDU.H"

test_name_138:
    .string "PWADDU.H"

test_name_139:
    .string "PWADDAU.H"

test_name_140:
    .string "PWADDAU.H"

test_name_141:
    .string "PWSUB.H"

test_name_142:
    .string "PWSUB.H"

test_name_143:
    .string "PWSUBA.H"

test_name_144:
    .string "PWSUBA.H"

test_name_145:
    .string "PWSUBU.H"

test_name_146:
    .string "PWSUBU.H"

test_name_147:
    .string "PWSUBAU.H"

test_name_148:
    .string "PWSUBAU.H"

test_name_149:
    .string "PWSLLI.H"

test_name_150:
    .string "PWSLLI.H"

test_name_151:
    .string "PWSLL.HS"

test_name_152:
    .string "PWSLL.HS"

test_name_153:
    .string "PWSLAI.H"

test_name_154:
    .string "PWSLAI.H"

test_name_155:
    .string "PWSLA.HS"

test_name_156:
    .string "PWSLA.HS"

test_name_157:
    .string "WZIP16P"

test_name_158:
    .string "WZIP16P"

test_name_159:
    .string "WADD"

test_name_160:
    .string "WADD"

test_name_161:
    .string "WADDA"

test_name_162:
    .string "WADDA"

test_name_163:
    .string "WADDU"

test_name_164:
    .string "WADDU"

test_name_165:
    .string "WADDAU"

test_name_166:
    .string "WADDAU"

test_name_167:
    .string "WSUB"

test_name_168:
    .string "WSUB"

test_name_169:
    .string "WSUBA"

test_name_170:
    .string "WSUBA"

test_name_171:
    .string "WSUBU"

test_name_172:
    .string "WSUBU"

test_name_173:
    .string "WSUBAU"

test_name_174:
    .string "WSUBAU"

test_name_175:
    .string "WSLLI"

test_name_176:
    .string "WSLLI"

test_name_177:
    .string "WSLL"

test_name_178:
    .string "WSLL"

test_name_179:
    .string "WSLAI"

test_name_180:
    .string "WSLAI"

test_name_181:
    .string "WSLA"

test_name_182:
    .string "WSLA"

test_name_183:
    .string "PREDSUM.DBS"

test_name_184:
    .string "PREDSUMU.DBS"

test_name_185:
    .string "PREDSUM.DHS"

test_name_186:
    .string "#PREDSUMU.DHS"

test_name_187:
    .string "PNSRLI.B"

test_name_188:
    .string "PNSRL.BS"

test_name_189:
    .string "PNSRAI.B"

test_name_190:
    .string "PNSRA.BS"

test_name_191:
    .string "PNSRAR.BS"

test_name_192:
    .string "PNCLIPI.B"

test_name_193:
    .string "PNCLIP.BS"

test_name_194:
    .string "PNCLIPRI.B"

test_name_195:
    .string "PNCLIPR.BS"

test_name_196:
    .string "PNCLIPIU.B"

test_name_197:
    .string "PNCLIPU.BS"

test_name_198:
    .string "PNCLIPRIU.B"

test_name_199:
    .string "PNCLIPRU.BS"

test_name_200:
    .string "PNSRLI.H"

test_name_201:
    .string "PNSRL.HS"

test_name_202:
    .string "PNSRAI.H"

test_name_203:
    .string "PNSRA.HS"

test_name_204:
    .string "PNSRAR.HS"

test_name_205:
    .string "PNCLIPI.H"

test_name_206:
    .string "PNCLIP.HS"

test_name_207:
    .string "PNCLIPRI.H"

test_name_208:
    .string "PNCLIPR.HS"

test_name_209:
    .string "PNCLIPIU.H"

test_name_210:
    .string "PNCLIPU.HS"

test_name_211:
    .string "PNCLIPRIU.H"

test_name_212:
    .string "PNCLIPRU.HS"

test_name_213:
    .string "NSRLI"

test_name_214:
    .string "NSRL"

test_name_215:
    .string "NSRAI"

test_name_216:
    .string "NSRA"

test_name_217:
    .string "NSRARI"

test_name_218:
    .string "NSRAR"

test_name_219:
    .string "NCLIPI"

test_name_220:
    .string "NCLIP"

test_name_221:
    .string "NCLIPRI"

test_name_222:
    .string "NCLIPR"

test_name_223:
    .string "NCLIPIU"

test_name_224:
    .string "NCLIPU"

test_name_225:
    .string "NCLIPRIU"

test_name_226:
    .string "NCLIPRU"

test_name_227:
    .string "PMULH.H"

test_name_228:
    .string "PMULHR.H"

test_name_229:
    .string "PMULHSU.H"

test_name_230:
    .string "PMULHRSU.H"

test_name_231:
    .string "PMULHU.H"

test_name_232:
    .string "PMULHRU.H"

test_name_233:
    .string "PMULQ.H"

test_name_234:
    .string "PMULQR.H"

test_name_235:
    .string "PMHACC.H"

test_name_236:
    .string "PMHRACC.H"

test_name_237:
    .string "PMHACCSU.H"

test_name_238:
    .string "PMHRACCSU.H"

test_name_239:
    .string "PMHACCU.H"

test_name_240:
    .string "PMHRACCU.H"

test_name_241:
    .string "MULHR"

test_name_242:
    .string "MULHRSU"

test_name_243:
    .string "MULHRU"

test_name_244:
    .string "MULQ"

test_name_245:
    .string "MULQR"

test_name_246:
    .string "MHACC"

test_name_247:
    .string "MHRACC"

test_name_248:
    .string "MHACCSU"

test_name_249:
    .string "MHRACCSU"

test_name_250:
    .string "MHACCU"

test_name_251:
    .string "MHRACCU"

test_name_252:
    .string "MQACC.H00"

test_name_253:
    .string "MQACC.H01"

test_name_254:
    .string "MQACC.H11"

test_name_255:
    .string "MQRACC.H00"

test_name_256:
    .string "MQRACC.H01"

test_name_257:
    .string "MQRACC.H11"

test_name_258:
    .string "PMQ2ADD.H"

test_name_259:
    .string "PMQ2ADDA.H"

test_name_260:
    .string "PMQR2ADD.H"

test_name_261:
    .string "PMQR2ADDA.H"

test_name_262:
    .string "PMUL.H.B00"

test_name_263:
    .string "PMUL.H.B01"

test_name_264:
    .string "PMUL.H.B11"

test_name_265:
    .string "PMULSU.H.B00"

test_name_266:
    .string "PMULSU.H.B11"

test_name_267:
    .string "PMULU.H.B00"

test_name_268:
    .string "PMULU.H.B01"

test_name_269:
    .string "PMULU.H.B11"

test_name_270:
    .string "MUL.H00"

test_name_271:
    .string "MUL.H01"

test_name_272:
    .string "MUL.H11"

test_name_273:
    .string "MULSU.H00"

test_name_274:
    .string "MULSU.H11"

test_name_275:
    .string "MULU.H00"

test_name_276:
    .string "MULU.H01"

test_name_277:
    .string "MULU.H11"

test_name_278:
    .string "MACC.H00"

test_name_279:
    .string "MACC.H00"

test_name_280:
    .string "MACC.H01"

test_name_281:
    .string "MACC.H11"

test_name_282:
    .string "MACCSU.H00"

test_name_283:
    .string "MACCSU.H11"

test_name_284:
    .string "MACCU.H00"

test_name_285:
    .string "MACCU.H01"

test_name_286:
    .string "MACCU.H11"

test_name_287:
    .string "PM2ADD.H"

test_name_288:
    .string "PM2ADDA.H"

test_name_289:
    .string "PM2ADDSU.H"

test_name_290:
    .string "PM2ADDASU.H"

test_name_291:
    .string "PM2ADDU.H"

test_name_292:
    .string "PM2ADDAU.H"

test_name_293:
    .string "PM2ADD.HX"

test_name_294:
    .string "PM2ADDA.HX"

test_name_295:
    .string "PM2SADD.H"

test_name_296:
    .string "PM2SADD.HX"

test_name_297:
    .string "#PM2SUB.H"

test_name_298:
    .string "PM2SUBA.H"

test_name_299:
    .string "PM2SUB.HX"

test_name_300:
    .string "PM2SUBA.HX"

test_name_301:
    .string "PM4ADD.B"

test_name_302:
    .string "PM4ADDA.B"

test_name_303:
    .string "PM4ADDSU.B"

test_name_304:
    .string "PM4ADDASU.B"

test_name_305:
    .string "PM4ADDU.B"

test_name_306:
    .string "PM4ADDAU.B"

test_name_307:
    .string "PMULH.H.B0"

test_name_308:
    .string "PMULH.H.B1"

test_name_309:
    .string "PMULHSU.H.B0"

test_name_310:
    .string "PMULHSU.H.B1"

test_name_311:
    .string "PMHACC.H.B0"

test_name_312:
    .string "PMHACC.H.B1"

test_name_313:
    .string "PMHACCSU.H.B0"

test_name_314:
    .string "PMHACCSU.H.B1"

test_name_315:
    .string "MULH.H0"

test_name_316:
    .string "MULH.H1"

test_name_317:
    .string "MULHSU.H0"

test_name_318:
    .string "MULHSU.H1"

test_name_319:
    .string "MHACC.H0"

test_name_320:
    .string "MHACC.H1"

test_name_321:
    .string "MHACCSU.H0"

test_name_322:
    .string "MHACCSU.H1"

test_name_323:
    .string "PWMUL.B"

test_name_324:
    .string "PWMUL.B"

test_name_325:
    .string "PWMULSU.B"

test_name_326:
    .string "PWMULSU.B"

test_name_327:
    .string "PWMULU.B"

test_name_328:
    .string "PWMULU.B"

test_name_329:
    .string "PMQWACC.H"

test_name_330:
    .string "PMQWACC.H"

test_name_331:
    .string "PMQRWACC.H"

test_name_332:
    .string "PMQRWACC.H"

test_name_333:
    .string "PWMUL.H"

test_name_334:
    .string "PWMUL.H"

test_name_335:
    .string "PWMULSU.H"

test_name_336:
    .string "PWMULSU.H"

test_name_337:
    .string "PWMULU.H"

test_name_338:
    .string "PWMULU.H"

test_name_339:
    .string "PWMACC.H"

test_name_340:
    .string "PWMACC.H"

test_name_341:
    .string "PWMACCSU.H"

test_name_342:
    .string "PWMACCSU.H"

test_name_343:
    .string "PWMACCU.H"

test_name_344:
    .string "PWMACCU.H"

test_name_345:
    .string "PM2WADD.H"

test_name_346:
    .string "PM2WADD.H"

test_name_347:
    .string "PM2WADDSU.H"

test_name_348:
    .string "PM2WADDSU.H"

test_name_349:
    .string "PM2WADDU.H"

test_name_350:
    .string "PM2WADDU.H"

test_name_351:
    .string "PM2WADD.HX"

test_name_352:
    .string "PM2WADD.HX"

test_name_353:
    .string "PM2WSUB.H"

test_name_354:
    .string "PM2WSUB.H"

test_name_355:
    .string "PM2WSUB.HX"

test_name_356:
    .string "PM2WSUB.HX"

test_name_357:
    .string "PM2WADDA.H"

test_name_358:
    .string "PM2WADDA.H"

test_name_359:
    .string "PM2WADDASU.H"

test_name_360:
    .string "PM2WADDASU.H"

test_name_361:
    .string "PM2WADDAU.H"

test_name_362:
    .string "PM2WADDAU.H"

test_name_363:
    .string "PM2WADDA.HX"

test_name_364:
    .string "PM2WADDA.HX"

test_name_365:
    .string "PM2WSUBA.H"

test_name_366:
    .string "PM2WSUBA.H"

test_name_367:
    .string "PM2WSUBA.HX"

test_name_368:
    .string "PM2WSUBA.HX"

test_name_369:
    .string "WMUL"

test_name_370:
    .string "WMUL"

test_name_371:
    .string "WMULSU"

test_name_372:
    .string "WMULSU"

test_name_373:
    .string "WMULU"

test_name_374:
    .string "WMULU"

test_name_375:
    .string "WMACC"

test_name_376:
    .string "WMACC"

test_name_377:
    .string "WMACCSU"

test_name_378:
    .string "WMACCSU"

test_name_379:
    .string "WMACCU"

test_name_380:
    .string "WMACCU"

pass:
    .string "passed!\n"
error:
    .string "error!\n"
