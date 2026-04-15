.global _start

_start:
    li s5, 0              # failure count
    #PADD.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xfe46000aff120006 # expected result
    padd.h s9, s6, s7
    bne s9, s8, test_fail_0
    j test_continue_0
test_fail_0:
    la a0, test_name_0
    jal ra, report_error
test_continue_0:

    #PADD.HS
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x0001325820007F34 # rs2
    li s8, 0xFE467F377EAC7F35 # expected result
    padd.hs s9, s6, s7
    bne s9, s8, test_fail_1
    j test_continue_1
test_fail_1:
    la a0, test_name_1
    jal ra, report_error
test_continue_1:

    #PADD.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFE120006 # expected result
    padd.b s9, s6, s7
    bne s9, s8, test_fail_2
    j test_continue_2
test_fail_2:
    la a0, test_name_2
    jal ra, report_error
test_continue_2:

    #PADD.BS
    li s6, 0x5A3C02B4FF88011E #rs1
    li s7, 0x0000131201020112 #rs2
    li s8, 0x6C4E14C6119A1330 #expected result
    padd.bs s9, s6, s7
    bne s9, s8, test_fail_3
    j test_continue_3
test_fail_3:
    la a0, test_name_3
    jal ra, report_error
test_continue_3:

    #PSUB.B
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeee00ff00000102 # expected result
    psub.b s9, s6, s7
    bne s9, s8, test_fail_4
    j test_continue_4
test_fail_4:
    la a0, test_name_4
    jal ra, report_error
test_continue_4:

    #PSUB.H
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeeeffff00000002 # expected result
    psub.h s9, s6, s7
    bne s9, s8, test_fail_5
    j test_continue_5
test_fail_5:
    la a0, test_name_5
    jal ra, report_error
test_continue_5:

    #PSADD.B
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7F46000aFE128006 # expected result
    psadd.b s9, s6, s7
    bne s9, s8, test_fail_6
    j test_continue_6
test_fail_6:
    la a0, test_name_6
    jal ra, report_error
test_continue_6:

    #PSADD.H
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7FFF000aFF128000 # expected result
       psadd.h s9, s6, s7
    bne s9, s8, test_fail_7
    j test_continue_7
test_fail_7:
    la a0, test_name_7
    jal ra, report_error
test_continue_7:

    #PSADDU.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    psaddu.b s9, s6, s7
    bne s9, s8, test_fail_8
    j test_continue_8
test_fail_8:
    la a0, test_name_8
    jal ra, report_error
test_continue_8:

    #PSADDU.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    psaddu.h s9, s6, s7
    bne s9, s8, test_fail_9
    j test_continue_9
test_fail_9:
    la a0, test_name_9
    jal ra, report_error
test_continue_9:

    #PSSUB.B
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80017fff00000102 # expected result
    pssub.b s9, s6, s7
    bne s9, s8, test_fail_10
    j test_continue_10
test_fail_10:
    la a0, test_name_10
    jal ra, report_error
test_continue_10:

    #PSSUB.H
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80007fff00000002 # expected result
    pssub.h s9, s6, s7
    bne s9, s8, test_fail_11
    j test_continue_11
test_fail_11:
    la a0, test_name_11
    jal ra, report_error
test_continue_11:

    #PSSUBU.B
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x01ffffff0000ffff # expected result
    pssubu.b s9, s6, s7
    bne s9, s8, test_fail_12
    j test_continue_12
test_fail_12:
    la a0, test_name_12
    jal ra, report_error
test_continue_12:

    #PSSUBU.H
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x0001ffff0000ffff # expected result
    pssubu.h s9, s6, s7
    bne s9, s8, test_fail_13
    j test_continue_13
test_fail_13:
    la a0, test_name_13
    jal ra, report_error
test_continue_13:

    #PAADD.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7F230005ff090003 # expected result
    paadd.b s9, s6, s7
    bne s9, s8, test_fail_14
    j test_continue_14
test_fail_14:
    la a0, test_name_14
    jal ra, report_error
test_continue_14:

    #PAADD.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7F230005ff890003# expected result
    paadd.h s9, s6, s7
    bne s9, s8, test_fail_15
    j test_continue_15
test_fail_15:
    la a0, test_name_15
    jal ra, report_error
test_continue_15:

    #PAADDU.B
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f230005FF890003 # expected result
    paaddu.b s9, s6, s7
    bne s9, s8, test_fail_16
    j test_continue_16
test_fail_16:
    la a0, test_name_16
    jal ra, report_error
test_continue_16:

    #PAADDU.H
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f230005Ff890003# expected result
    paaddu.h s9, s6, s7
    bne s9, s8, test_fail_17
    j test_continue_17
test_fail_17:
    la a0, test_name_17
    jal ra, report_error
test_continue_17:

    #PASUB.B
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF7f700FF00000001 # expected result
    pasub.b s9, s6, s7
    bne s9, s8, test_fail_18
    j test_continue_18
test_fail_18:
    la a0, test_name_18
    jal ra, report_error
test_continue_18:

    #PASUB.H
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF777FFFF00000001 # expected result
    pasub.h s9, s6, s7
    bne s9, s8, test_fail_19
    j test_continue_19
test_fail_19:
    la a0, test_name_19
    jal ra, report_error
test_continue_19:

    #PASUBU.B
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x777700FF00008081 # expected result
    pasubu.b s9, s6, s7
    bne s9, s8, test_fail_20
    j test_continue_20
test_fail_20:
    la a0, test_name_20
    jal ra, report_error
test_continue_20:

    #PASUBU.H
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x7777FFFF00008001 # expected result
    pasubu.h s9, s6, s7
    bne s9, s8, test_fail_21
    j test_continue_21
test_fail_21:
    la a0, test_name_21
    jal ra, report_error
test_continue_21:

    #PSABS.B
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x00007F0101017F00 # expected result
    psabs.b s9, s6
    bne s9, s8, test_fail_22
    j test_continue_22
test_fail_22:
    la a0, test_name_22
    jal ra, report_error
test_continue_22:

    #PABDSUMU.B
    li s6, 0x0000000100000001 # rs1
    li s7, 0x0001000000010000 # rs2
    li s8, 0x0000000000000004 # expected result
    pabdsumu.b s9, s6, s7
    bne s9, s8, test_fail_23
    j test_continue_23
test_fail_23:
    la a0, test_name_23
    jal ra, report_error
test_continue_23:

    #PABDSUMAU.B
    li s6, 0x0000000100000001 # rs1
    li s7, 0x0001000000010000 # rs2
    li s9, 1 # rd
    li s8, 0x0000000000000005 # expected result
    pabdsumau.b s9, s6, s7
    bne s9, s8, test_fail_24
    j test_continue_24
test_fail_24:
    la a0, test_name_24
    jal ra, report_error
test_continue_24:

    #PAS.HX
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xfe460003ff12FFFF # expected result
    pas.hx s9, s6, s7
    bne s9, s8, test_fail_25
    j test_continue_25
test_fail_25:
    la a0, test_name_25
    jal ra, report_error
test_continue_25:

    #PSA.HX
    li s6, 0x7F120003FF780001 #rs1
    li s7, 0x7F340007FF9A0005 #rs2
    li s8, 0x7F0B7F37FF73FF9B #expected result
    psa.hx s9, s6, s7
    bne s9, s8, test_fail_26
    j test_continue_26
test_fail_26:
    la a0, test_name_26
    jal ra, report_error
test_continue_26:

    #PSAS.HX
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7fff0003ff127fff # expected result
    psas.hx s9, s6, s7
    bne s9, s8, test_fail_27
    j test_continue_27
test_fail_27:
    la a0, test_name_27
    jal ra, report_error
test_continue_27:

    #PSSA.HX
    li s6, 0x7F12000aFF787fff #rs1
    li s7, 0x00077F348000FF9a #rs2
    li s8, 0xFFDE0011FFDEFFFF #expected result
    pssa.hx s9, s6, s7
    bne s9, s8, test_fail_28
    j test_continue_28
test_fail_28:
    la a0, test_name_28
    jal ra, report_error
test_continue_28:

    #PAAS.HX
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7f230001ff897FFF # expected result
    paas.hx s9, s6, s7
    bne s9, s8, test_fail_29
    j test_continue_29
test_fail_29:
    la a0, test_name_29
    jal ra, report_error
test_continue_29:

    #PASA.HX
    li s6, 0x7F12000aFF787fff  # rs1
    li s7, 0x00077F348000FF9a  # rs2
    li s8, 0xFFEF0008FFEFFFFF  # expected result
    pasa.hx s9, s6, s7
    bne s9, s8, test_fail_30
    j test_continue_30
test_fail_30:
    la a0, test_name_30
    jal ra, report_error
test_continue_30:

    #PSABS.H
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x00007FFF00017FFF # rs1
    psabs.h s9, s6
    bne s9, s8, test_fail_31
    j test_continue_31
test_fail_31:
    la a0, test_name_31
    jal ra, report_error
test_continue_31:

    #PSH1ADD.H
    li s6, 0x7FFF8000000AFFFB  #rs1
    li s7, 0x0001FFFE00050005  #rs2
    li s8, 0xFFFFFFFE0019FFFB #expected result
    psh1add.h s9, s6, s7
    bne s9, s8, test_fail_32
    j test_continue_32
test_fail_32:
    la a0, test_name_32
    jal ra, report_error
test_continue_32:

    # PSSH1SADD.H
    li s6, 0xC000200040008000 #rs1
    li s7, 0x80007FFF00010001 #rs2
    li s8, 0x80007FFF7FFF8001 #expected result
    pssh1sadd.h s9, s6, s7
    bne s9, s8, test_fail_33
    j test_continue_33
test_fail_33:
    la a0, test_name_33
    jal ra, report_error
test_continue_33:

    #PABD.H
    li s6, 0x00010002FFFE7FFF #rs1
    li s7, 0x0002000100010001 #rs2
    li s8, 0x0001000100037FFE #expected result
    pabd.h s9, s6, s7
    bne s9, s8, test_fail_34
    j test_continue_34
test_fail_34:
    la a0, test_name_34
    jal ra, report_error
test_continue_34:

    #PABDU.H
    li s6, 0x00010002FFFE7FFF #rs1
    li s7, 0x0002000100010001 #rs2
    li s8, 0x00010001FFFD7FFE #expected result
    pabdu.h s9, s6, s7
    bne s9, s8, test_fail_35
    j test_continue_35
test_fail_35:
    la a0, test_name_35
    jal ra, report_error
test_continue_35:

    #PABD.B
    li s6, 0x807F0201807F0201 #rs1
    li s7, 0x018001FF7F80027F #rs2
    li s8, 0x81FF0102FFFF007E #expected result
    pabd.b s9, s6, s7
    bne s9, s8, test_fail_36
    j test_continue_36
test_fail_36:
    la a0, test_name_36
    jal ra, report_error
test_continue_36:

    #PABDU.B
    li s6, 0x807F0201807F0201 #rs1
    li s7, 0x018001FF7F80027F #rs2
    li s8, 0x7F0101FE0101007E #expected result
    pabdu.b s9, s6, s7
    bne s9, s8, test_fail_37
    j test_continue_37
test_fail_37:
    la a0, test_name_37
    jal ra, report_error
test_continue_37:

    #PREDSUM.HS
    li s6, 0x0003000400010002 #rs1
    li s7, 0x000000000000000A #rs2
    li s8, 0x0000000000000014 #expected result
    predsum.hs s9, s6, s7
    bne s9, s8, test_fail_38
    j test_continue_38
test_fail_38:
    la a0, test_name_38
    jal ra, report_error
test_continue_38:

    #PREDSUMU.HS
    li s6, 0x1000200030004000 #rs1
    li s7, 0x0000000000001000 #rs2
    li s8, 0x000000000000B000 #expected result
    predsumu.hs s9, s6, s7
    bne s9, s8, test_fail_39
    j test_continue_39
test_fail_39:
    la a0, test_name_39
    jal ra, report_error
test_continue_39:

    #PREDSUM.BS
    li s6, 0x807F02FE01807F02 #rs1
    li s7, 0x0000000000000064 #rs2
    li s8, 0x0000000000000065 #expected result
    predsum.bs s9, s6, s7
    bne s9, s8, test_fail_40
    j test_continue_40
test_fail_40:
    la a0, test_name_40
    jal ra, report_error
test_continue_40:

    #PREDSUMU.BS
    li s6, 0x807F02FF01807F02 #rs1
    li s7, 0x0000000000000064 #rs2
    li s8, 0x0000000000000366 #expected result
    predsumu.bs s9, s6, s7
    bne s9, s8, test_fail_41
    j test_continue_41
test_fail_41:
    la a0, test_name_41
    jal ra, report_error
test_continue_41:

    #PADD.WS
    li s6, 0x000000010007FFFF #rs1
    li s7, 0x0000000000A00000 #rs2
    li s8, 0x00A0000100A7FFFF #expected result
    padd.ws s9, s6, s7
    bne s9, s8, test_fail_42
    j test_continue_42
test_fail_42:
    la a0, test_name_42
    jal ra, report_error
test_continue_42:

    #PADD.W
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFFe46FFFFff12 # expected result
    padd.w s9, s6, s7
    bne s9, s8, test_fail_43
    j test_continue_43
test_fail_43:
    la a0, test_name_43
    jal ra, report_error
test_continue_43:

    #PSUB.W
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xffffffff00000002 # expected result
    psub.w s9, s6, s7
    bne s9, s8, test_fail_44
    j test_continue_44
test_fail_44:
    la a0, test_name_44
    jal ra, report_error
test_continue_44:

    #PSADD.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x800000007FFFFFFF # rs2
    li s8, 0x800000007FFFFFFF # expected result
    psadd.w s9, s6, s7
    bne s9, s8, test_fail_45
    j test_continue_45
test_fail_45:
    la a0, test_name_45
    jal ra, report_error
test_continue_45:

    #PSADDU.W
    li s6, 0xFFFFFFFF7FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFFFFFFFFFE # expected result
    psaddu.w s9, s6, s7
    bne s9, s8, test_fail_46
    j test_continue_46
test_fail_46:
    la a0, test_name_46
    jal ra, report_error
test_continue_46:

    #PSSUB.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x7fffffff00000002 # expected result
    pssub.w s9, s6, s7
    bne s9, s8, test_fail_47
    j test_continue_47
test_fail_47:
    la a0, test_name_47
    jal ra, report_error
test_continue_47:

    #PSSUBU.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x0000000000000000 # expected result
    pssubu.w s9, s6, s7
    bne s9, s8, test_fail_48
    j test_continue_48
test_fail_48:
    la a0, test_name_48
    jal ra, report_error
test_continue_48:

    #PAADD.W
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFff23FFFFff89 # expected result
    paadd.w s9, s6, s7
    bne s9, s8, test_fail_49
    j test_continue_49
test_fail_49:
    la a0, test_name_49
    jal ra, report_error
test_continue_49:

    #PAADDU.W
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFFf23FFFFFF89 # expected result
    paaddu.w s9, s6, s7
    bne s9, s8, test_fail_50
    j test_continue_50
test_fail_50:
    la a0, test_name_50
    jal ra, report_error
test_continue_50:

    #PASUB.W
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xFFFFFFFF00000001 # expected result
    pasub.w s9, s6, s7
    bne s9, s8, test_fail_51
    j test_continue_51
test_fail_51:
    la a0, test_name_51
    jal ra, report_error
test_continue_51:

    #PASUBU.W
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xFFFFFFFF80000001 # expected result
    pasubu.w s9, s6, s7
    bne s9, s8, test_fail_52
    j test_continue_52
test_fail_52:
    la a0, test_name_52
    jal ra, report_error
test_continue_52:

    #PSH1ADD.W
    li s6, 0x0000000A2000000F #rs1
    li s7, 0x0000000500000003 #rs2
    li s8, 0x0000001940000021 #expected result
    psh1add.w s9, s6, s7
    bne s9, s8, test_fail_53
    j test_continue_53
test_fail_53:
    la a0, test_name_53
    jal ra, report_error
test_continue_53:

    #PSSH1SADD.W
    li s6, 0x0000000200000001 #rs1
    li s7, 0x0000000300000004 #rs2
    li s8, 0x0000000700000006 #expected result
    pssh1sadd.w s9, s6, s7
    bne s9, s8, test_fail_54
    j test_continue_54
test_fail_54:
    la a0, test_name_54
    jal ra, report_error
test_continue_54:


    #PAS.WX
    li s6, 0xffffffff00000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000FFFFFFFF # expected result
    pas.wx s9, s6, s7
    bne s9, s8, test_fail_55
    j test_continue_55
test_fail_55:
    la a0, test_name_55
    jal ra, report_error
test_continue_55:

    #PSA.WX
    li s6, 0x00000000ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xFFFFFFFF00000000 # expected result
    psa.wx s9, s6, s7
    bne s9, s8, test_fail_56
    j test_continue_56
test_fail_56:
    la a0, test_name_56
    jal ra, report_error
test_continue_56:

    #PSAS.WX
    li s6, 0x7fffffff80000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x7fffffff80000000 # expected result
    psas.wx s9, s6, s7
    bne s9, s8, test_fail_57
    j test_continue_57
test_fail_57:
    la a0, test_name_57
    jal ra, report_error
test_continue_57:

    #PSSA.WX
    li s6, 0x800000007fffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x800000007fffffff # expected result
    pssa.wx s9, s6, s7
    bne s9, s8, test_fail_58
    j test_continue_58
test_fail_58:
    la a0, test_name_58
    jal ra, report_error
test_continue_58:

    #PAAS.WX
    li s6, 0xffffffff80000001 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000c0000000 # expected result
    paas.wx s9, s6, s7
    bne s9, s8, test_fail_59
    j test_continue_59
test_fail_59:
    la a0, test_name_59
    jal ra, report_error
test_continue_59:

    #PASA.WX
    li s6, 0x80000001ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xc000000000000000 # expected result
    pasa.wx s9, s6, s7
    bne s9, s8, test_fail_60
    j test_continue_60
test_fail_60:
    la a0, test_name_60
    jal ra, report_error
test_continue_60:

    #PREDSUM.WS
    li s6, 0x7FFFFFFF00000005 #rs1
    li s7, 0x0000000000001000 #rs2
    li s8, 0x0000000080001004 #expected result
    predsum.ws s9, s6, s7
    bne s9, s8, test_fail_61
    j test_continue_61
test_fail_61:
    la a0, test_name_61
    jal ra, report_error
test_continue_61:

    #PREDSUMU.WS
    li s6, 0xFFFFFFFF0000000A #rs1
    li s7, 0x0000000000001000 #rs2
    li s8, 0x0000000100001009 #expected result
    predsumu.ws s9, s6, s7
    bne s9, s8, test_fail_62
    j test_continue_62
test_fail_62:
    la a0, test_name_62
    jal ra, report_error
test_continue_62:

    #PSLLI.B
    li s6, 0xff88774433221100 # rs1
    li s8, 0xf840B82098108800 # expected result
    pslli.b s9, s6, 3
    bne s9, s8, test_fail_63
    j test_continue_63
test_fail_63:
    la a0, test_name_63
    jal ra, report_error
test_continue_63:

    #PSLL.BS
    li s6, 0x207F0201207F0201 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x80FC080480FC0804 #expected result
    psll.bs s9, s6, s7
    bne s9, s8, test_fail_64
    j test_continue_64
test_fail_64:
    la a0, test_name_64
    jal ra, report_error
test_continue_64:

    #PSRLI.B
    li s6, 0xff88774433221100 # rs1
    li s8, 0x1f110e0806040200 # expected result
    psrli.b s9, s6, 3
    bne s9, s8, test_fail_65
    j test_continue_65
test_fail_65:
    la a0, test_name_65
    jal ra, report_error
test_continue_65:

    #PSRL.BS
    li s6, 0x80FF4080FF400A05 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x203F10203F100201
    psrl.bs s9, s6, s7
    bne s9, s8, test_fail_66
    j test_continue_66
test_fail_66:
    la a0, test_name_66
    jal ra, report_error
test_continue_66:

    #PSRAI.B
    li s6, 0xff88774433221100 # rs1
    li s8, 0xfff10e0806040200 # expected result
    psrai.b s9, s6, 3
    bne s9, s8, test_fail_67
    j test_continue_67
test_fail_67:
    la a0, test_name_67
    jal ra, report_error
test_continue_67:

    #PSRA.BS
    li s6, 0x80FF4080FF400A85 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0xE0FF10E0FF1002E1 #expected result
    psra.bs s9, s6, s7
    bne s9, s8, test_fail_68
    j test_continue_68
test_fail_68:
    la a0, test_name_68
    jal ra, report_error
test_continue_68:

    #PMIN.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000001 # expected result
    pmin.b s8, s6, s7
    bne s10, s8, test_fail_69
    j test_continue_69
test_fail_69:
    la a0, test_name_69
    jal ra, report_error
test_continue_69:

    #PMINU.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000001 # expected result
    pminu.b s8, s6, s7
    bne s10, s8, test_fail_70
    j test_continue_70
test_fail_70:
    la a0, test_name_70
    jal ra, report_error
test_continue_70:

    #PMAX.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000002 # expected result
    pmax.b s8, s6, s7
    bne s10, s8, test_fail_71
    j test_continue_71
test_fail_71:
    la a0, test_name_71
    jal ra, report_error
test_continue_71:

    #PMAXU.B
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000002 # expected result
    pmaxu.b s8, s6, s7
    bne s10, s8, test_fail_72
    j test_continue_72
test_fail_72:
    la a0, test_name_72
    jal ra, report_error
test_continue_72:

    #PMSEQ.B
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFFFF00FFFF00FF # expected result
    pmseq.b s9, s6, s7
    bne s9, s8, test_fail_73
    j test_continue_73
test_fail_73:
    la a0, test_name_73
    jal ra, report_error
test_continue_73:

    #PMSLT.B
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    pmslt.b s9, s6, s7
    bne s9, s8, test_fail_74
    j test_continue_74
test_fail_74:
    la a0, test_name_74
    jal ra, report_error
test_continue_74:

    #PMSLTU.B
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    pmsltu.b s9, s6, s7
    bne s9, s8, test_fail_75
    j test_continue_75
test_fail_75:
    la a0, test_name_75
    jal ra, report_error
test_continue_75:

    #PSEXT.H.B
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0066FFF4FFF20000 # expected result
    psext.h.b s9, s6
    bne s9, s8, test_fail_76
    j test_continue_76
test_fail_76:
    la a0, test_name_76
    jal ra, report_error
test_continue_76:

    #PSATI.H
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000FFFF0000FFFF0 # expected result
    psati.h s9, s6, 4         # -16 - 15
    bne s9, s8, test_fail_77
    j test_continue_77
test_fail_77:
    la a0, test_name_77
    jal ra, report_error
test_continue_77:

    #PUSATI.H
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000F0000000F0000 # rs1
    pusati.h s9, s6, 4         # 0 - 15
    bne s9, s8, test_fail_78
    j test_continue_78
test_fail_78:
    la a0, test_name_78
    jal ra, report_error
test_continue_78:

    #PSLLI.H
    li s6, 0xe0007fff00001111 # rs1
    li s8, 0x0000fff800008888 # expected result
    pslli.h s9, s6, 3
    bne s9, s8, test_fail_79
    j test_continue_79
test_fail_79:
    la a0, test_name_79
    jal ra, report_error
test_continue_79:

    #PSLL.HS
    li s6, 0x80007FFF00010002 #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0x0000FFF800080010 #expectede result
    psll.hs s9, s6, s7
    bne s9, s8, test_fail_80
    j test_continue_80
test_fail_80:
    la a0, test_name_80
    jal ra, report_error
test_continue_80:


    #PSRLI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x10000fff00000222 # expected result
    psrli.h s9, s6, 3
    bne s9, s8, test_fail_81
    j test_continue_81
test_fail_81:
    la a0, test_name_81
    jal ra, report_error
test_continue_81:

    #PSRL.HS
    li s6, 0x80007FFF0010000F #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0x10000FFF00020001 #expected result
    psrl.hs s9, s6, s7
    bne s9, s8, test_fail_82
    j test_continue_82
test_fail_82:
    la a0, test_name_82
    jal ra, report_error
test_continue_82:

    #PSRAI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf0000fff00000222 # expected result
    psrai.h s9, s6, 3
    bne s9, s8, test_fail_83
    j test_continue_83
test_fail_83:
    la a0, test_name_83
    jal ra, report_error
test_continue_83:

    #PSRA.HS
    li s6, 0x8000FFF800100008 #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0xF000FFFF00020001 #expected result
    psra.hs s9, s6, s7
    bne s9, s8, test_fail_84
    j test_continue_84
test_fail_84:
    la a0, test_name_84
    jal ra, report_error
test_continue_84:

    #PSSLAI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x80007fff00007fff # expected result
    psslai.h s9, s6, 3
    bne s9, s8, test_fail_85
    j test_continue_85
test_fail_85:
    la a0, test_name_85
    jal ra, report_error
test_continue_85:

    #PSRARI.H
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf000100000000222 # expected result
    psrari.h s9, s6, 3
    bne s9, s8, test_fail_86
    j test_continue_86
test_fail_86:
    la a0, test_name_86
    jal ra, report_error
test_continue_86:

    #PSSHA.HS
    li s6, 0x80007FFF00010002 #rs1
    li s7, 0x0000000000000003 #rs2
    li s8, 0x80007FFF00080010 #expected result
    pssha.hs s9, s6, s7
    bne s9, s8, test_fail_87
    j test_continue_87
test_fail_87:
    la a0, test_name_87
    jal ra, report_error
test_continue_87:

    #PSSHAR.HS
    li s6, 0x0002000100007FFF #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x0008000400007FFF #expected result
    psshar.hs s9, s6, s7
    bne s9, s8, test_fail_88
    j test_continue_88
test_fail_88:
    la a0, test_name_88
    jal ra, report_error
test_continue_88:

    #PMIN.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    pmin.h s8, s6, s7
    bne s10, s8, test_fail_89
    j test_continue_89
test_fail_89:
    la a0, test_name_89
    jal ra, report_error
test_continue_89:

    #PMINU.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    pminu.h s8, s6, s7
    bne s10, s8, test_fail_90
    j test_continue_90
test_fail_90:
    la a0, test_name_90
    jal ra, report_error
test_continue_90:

    #PMAX.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    pmax.h s8, s6, s7
    bne s10, s8, test_fail_91
    j test_continue_91
test_fail_91:
    la a0, test_name_91
    jal ra, report_error
test_continue_91:

    #PMAXU.H
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    pmaxu.h s8, s6, s7
    bne s10, s8, test_fail_92
    j test_continue_92
test_fail_92:
    la a0, test_name_92
    jal ra, report_error
test_continue_92:

    #PMSEQ.H
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFF0000FFFF0000 # expected result
    pmseq.h s9, s6, s7
    bne s9, s8, test_fail_93
    j test_continue_93
test_fail_93:
    la a0, test_name_93
    jal ra, report_error
test_continue_93:

    #PMSLT.H
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    pmslt.h s9, s6, s7
    bne s9, s8, test_fail_94
    j test_continue_94
test_fail_94:
    la a0, test_name_94
    jal ra, report_error
test_continue_94:

    #PMSLTU.H
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    pmsltu.h s9, s6, s7
    bne s9, s8, test_fail_95
    j test_continue_95
test_fail_95:
    la a0, test_name_95
    jal ra, report_error
test_continue_95:

    #PSEXT.W.B
    li s6, 0x12347F805678ABCD #rs1
    li s8, 0xFFFFFF80FFFFFFCD #expected result
    psext.w.b s9, s6
    bne s9, s8, test_fail_96
    j test_continue_96
test_fail_96:
    la a0, test_name_96
    jal ra, report_error
test_continue_96:

    #PSEXT.W.H
    li s6, 0x12347F805678ABCD #rs1
    li s8, 0x00007F80FFFFABCD #expected result
    psext.w.h s9, s6
    bne s9, s8, test_fail_97
    j test_continue_97
test_fail_97:
    la a0, test_name_97
    jal ra, report_error
test_continue_97:

    #PSATI.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x0000000FFFFFFFF0 # rs1
    psati.w s9, s6, 4         # -16 - 15
    bne s9, s8, test_fail_98
    j test_continue_98
test_fail_98:
    la a0, test_name_98
    jal ra, report_error
test_continue_98:

    #PUSATI.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x0000000F00000000 # rs1
    pusati.w s9, s6, 4         # 0 - 15
    bne s9, s8, test_fail_99
    j test_continue_99
test_fail_99:
    la a0, test_name_99
    jal ra, report_error
test_continue_99:

    #PSLLI.W
    li s6, 0xE000000000000001 # rs1
    li s8, 0x0000000000000008 # expected result
    pslli.w s9, s6, 3
    bne s9, s8, test_fail_100
    j test_continue_100
test_fail_100:
    la a0, test_name_100
    jal ra, report_error
test_continue_100:

    #PSLL.WS
    li s6, 0xE000000000000001 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x0000000000000008 # expected result
    psll.ws s9, s6, s7
    bne s9, s8, test_fail_101
    j test_continue_101
test_fail_101:
    la a0, test_name_101
    jal ra, report_error
test_continue_101:

    #PSRLI.W
    li s6, 0x8000000000001111 # rs1
    li s8, 0x1000000000000222 # expected result
    psrli.w s9, s6, 3
    bne s9, s8, test_fail_102
    j test_continue_102
test_fail_102:
    la a0, test_name_102
    jal ra, report_error
test_continue_102:

    #PSRL.WS
    li s6, 0x8000000000001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x1000000000000222 # expected result
    psrl.ws s9, s6, s7
    bne s9, s8, test_fail_103
    j test_continue_103
test_fail_103:
    la a0, test_name_103
    jal ra, report_error
test_continue_103:

    #PSRAI.W
    li s6, 0x8000000000001111 # rs1
    li s8, 0xF000000000000222 # expected result
    psrai.w s9, s6, 3
    bne s9, s8, test_fail_104
    j test_continue_104
test_fail_104:
    la a0, test_name_104
    jal ra, report_error
test_continue_104:

    #PSRA.WS
    li s6, 0x8000000000001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0xF000000000000222 # expected result
    psra.ws s9, s6, s7
    bne s9, s8, test_fail_105
    j test_continue_105
test_fail_105:
    la a0, test_name_105
    jal ra, report_error
test_continue_105:

    #PSSLAI.W
    li s6, 0xE000000000000001 # rs1
    li s8, 0x8000000000000008 # expected result
    psslai.w s9, s6, 3
    bne s9, s8, test_fail_106
    j test_continue_106
test_fail_106:
    la a0, test_name_106
    jal ra, report_error
test_continue_106:

    #PSRARI.W
    li s6, 0x8000000080000004 # rs1
    li s8, 0xF0000000F0000001 # expected result
    psrari.w s9, s6, 3
    bne s9, s8, test_fail_107
    j test_continue_107
test_fail_107:
    la a0, test_name_107
    jal ra, report_error
test_continue_107:

    #PSSHA.WS
    li s6, 0x7FFFFFFF00000002 #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x7FFFFFFF00000008 #expected result
    pssha.ws s9, s6, s7
    bne s9, s8, test_fail_108
    j test_continue_108
test_fail_108:
    la a0, test_name_108
    jal ra, report_error
test_continue_108:

    #PSSHAR.WS
    li s6, 0x000000027FFFFFFF #rs1
    li s7, 0x0000000000000002 #rs2
    li s8, 0x000000087FFFFFFF #expected result
    psshar.ws s9, s6, s7
    bne s9, s8, test_fail_109
    j test_continue_109
test_fail_109:
    la a0, test_name_109
    jal ra, report_error
test_continue_109:

    #PMIN.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0xFFFFFFFF80000000 # expected result
    pmin.w s9, s6, s7
    bne s9, s8, test_fail_110
    j test_continue_110
test_fail_110:
    la a0, test_name_110
    jal ra, report_error
test_continue_110:

    #PMINU.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x7FFFFFFF80000000 # expected result
    pminu.w s9, s6, s7
    bne s9, s8, test_fail_111
    j test_continue_111
test_fail_111:
    la a0, test_name_111
    jal ra, report_error
test_continue_111:

    #PMAX.W
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x7FFFFFFF80000001 # expected result
    pmax.w s9, s6, s7
    bne s9, s8, test_fail_112
    j test_continue_112
test_fail_112:
    la a0, test_name_112
    jal ra, report_error
test_continue_112:

    #PMAXU.W
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x0000000180000000 #rs2
    li s8, 0x8000000080000000 #expected result
    pmaxu.w s9, s6, s7
    bne s9, s8, test_fail_113
    j test_continue_113
test_fail_113:
    la a0, test_name_113
    jal ra, report_error
test_continue_113:

    #PMSEQ.W
    li s6, 0x001214787FFFFFFF #rs1
    li s7, 0x156414137FFFFFFF #rs2
    li s8, 0x00000000FFFFFFFF #expected result
    pmseq.w s9, s6, s7
    bne s9, s8, test_fail_114
    j test_continue_114
test_fail_114:
    la a0, test_name_114
    jal ra, report_error
test_continue_114:

    #PMSLT.W
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x0000000100000000 #rs2
    li s8, 0xFFFFFFFF00000000 #expected result
    pmslt.w s9, s6, s7
    bne s9, s8, test_fail_115
    j test_continue_115
test_fail_115:
    la a0, test_name_115
    jal ra, report_error
test_continue_115:

    #PMSLTU.W
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x0000000180000000 #rs2
    li s8, 0x00000000FFFFFFFF #expected result
    pmsltu.w s9, s6, s7
    bne s9, s8, test_fail_116
    j test_continue_116
test_fail_116:
    la a0, test_name_116
    jal ra, report_error
test_continue_116:

    #SATI.64
    li s6, 0x0000005000000020 #rs1
    li s8, 0x000000000000007F #expected result
    sati s9, s6, 7
    bne s9, s8, test_fail_117
    j test_continue_117
test_fail_117:
    la a0, test_name_117
    jal ra, report_error
test_continue_117:

    #USATI_64
    li s6, 0x0000005000000020 #rs1
    li s8, 0x000000000000007F #expected result
    usati s9, s6, 7
    bne s9, s8, test_fail_118
    j test_continue_118
test_fail_118:
    la a0, test_name_118
    jal ra, report_error
test_continue_118:

    #SRARI_64
    li s6, 0x800000007FFFFFFF #rs1
    li s8, 0xFF00000001000000 #expected result
    srari s9, s6, 7
    bne s9, s8, test_fail_119
    j test_continue_119
test_fail_119:
    la a0, test_name_119
    jal ra, report_error
test_continue_119:

    #SHA
    li s6, 0xFFFFFFFFFFFFFFF0 #rs1
    li s7, 0xFFFFFFFFFFFFFFFE #rs2
    li s8, 0xFFFFFFFFFFFFFFFC #expected result
    sha s9, s6, s7
    bne s9, s8, test_fail_120
    j test_continue_120
test_fail_120:
    la a0, test_name_120
    jal ra, report_error
test_continue_120:

    #SHAR
    li s6, 0xFFFFFFFFFFFFFFF0 #rs1
    li s7, 0xFFFFFFFFFFFFFFFE #rs2
    li s8, 0xFFFFFFFFFFFFFFFC #expected result
    shar s9, s6, s7
    bne s9, s8, test_fail_121
    j test_continue_121
test_fail_121:
    la a0, test_name_121
    jal ra, report_error
test_continue_121:

    #PPAIRE.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x44BB66DD88FF0022 #expected result
    ppaire.b s9, s6, s7
    bne s9, s8, test_fail_122
    j test_continue_122
test_fail_122:
    la a0, test_name_122
    jal ra, report_error
test_continue_122:

    #PPAIREO.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x33BB55DD77FF9922 #expected result
    ppaireo.b s9, s6, s7
    bne s9, s8, test_fail_123
    j test_continue_123
test_fail_123:
    la a0, test_name_123
    jal ra, report_error
test_continue_123:

    #PPAIROE.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x44AA66CC88EE0011 #expected result
    ppairoe.b s9, s6, s7
    bne s9, s8, test_fail_124
    j test_continue_124
test_fail_124:
    la a0, test_name_124
    jal ra, report_error
test_continue_124:

    #PPAIRO.B
    li s6, 0xAABBCCDDEEFF1122 #rs1
    li s7, 0x3344556677889900 #rs2
    li s8, 0x33AA55CC77EE9911 #expected result
    ppairo.b s9, s6, s7
    bne s9, s8, test_fail_125
    j test_continue_125
test_fail_125:
    la a0, test_name_125
    jal ra, report_error
test_continue_125:

    #PPAIRE.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x7777333355551111 # expected result
    ppaire.h s9, s6, s7
    bne s9, s8, test_fail_126
    j test_continue_126
test_fail_126:
    la a0, test_name_126
    jal ra, report_error
test_continue_126:

    #PPAIREO.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x8888333366661111 # expected result
    ppaireo.h s9, s6, s7
    bne s9, s8, test_fail_127
    j test_continue_127
test_fail_127:
    la a0, test_name_127
    jal ra, report_error
test_continue_127:

    #PPAIROE.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x7777444455552222 # expected result
    ppairoe.h s9, s6, s7
    bne s9, s8, test_fail_128
    j test_continue_128
test_fail_128:
    la a0, test_name_128
    jal ra, report_error
test_continue_128:

    #PPAIRO.H
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x8888444466662222 # expected result
    ppairo.h s9, s6, s7
    bne s9, s8, test_fail_129
    j test_continue_129
test_fail_129:
    la a0, test_name_129
    jal ra, report_error
test_continue_129:

    #PPAIREO.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x8000000000000001 # expected result
    ppaireo.w s9, s6, s7
    bne s9, s8, test_fail_130
    j test_continue_130
test_fail_130:
    la a0, test_name_130
    jal ra, report_error
test_continue_130:

    #PPAIROE.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0xFFFFFFFF7fffffff # expected result
    ppairoe.w s9, s6, s7
    bne s9, s8, test_fail_131
    j test_continue_131
test_fail_131:
    la a0, test_name_131
    jal ra, report_error
test_continue_131:

    #PPAIRO.W
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x800000007fffffff # expected result
    ppairo.w s9, s6, s7
    bne s9, s8, test_fail_132
    j test_continue_132
test_fail_132:
    la a0, test_name_132
    jal ra, report_error
test_continue_132:

    #ZIP8P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xDD55EE66FF770088 #expected result
    zip8p s9, s6, s7
    bne s9, s8, test_fail_133
    j test_continue_133
test_fail_133:
    la a0, test_name_133
    jal ra, report_error
test_continue_133:

    #ZIP8HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x9911AA22BB33CC44 #expected result
    zip8hp s9, s6, s7
    bne s9, s8, test_fail_134
    j test_continue_134
test_fail_134:
    la a0, test_name_134
    jal ra, report_error
test_continue_134:

    #UNZIP8P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xAACCEE0022446688  #expected result
    unzip8p s9, s6, s7
    bne s9, s8, test_fail_135
    j test_continue_135
test_fail_135:
    la a0, test_name_135
    jal ra, report_error
test_continue_135:

    #UNZIP8HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x99BBDDFF11335577 #expected result
    unzip8hp s9, s6, s7
    bne s9, s8, test_fail_136
    j test_continue_136
test_fail_136:
    la a0, test_name_136
    jal ra, report_error
test_continue_136:

    #ZIP16P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xDDEE5566FF007788 #expected result
    zip16p s9, s6, s7
    bne s9, s8, test_fail_137
    j test_continue_137
test_fail_137:
    la a0, test_name_137
    jal ra, report_error
test_continue_137:

    #ZIP16HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x99AA1122BBCC3344 #expected result
    zip16hp s9, s6, s7
    bne s9, s8, test_fail_138
    j test_continue_138
test_fail_138:
    la a0, test_name_138
    jal ra, report_error
test_continue_138:

    #UNZIP16P
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0xBBCCFF0033447788 #expected result
    unzip16p s9, s6, s7
    bne s9, s8, test_fail_139
    j test_continue_139
test_fail_139:
    la a0, test_name_139
    jal ra, report_error
test_continue_139:

    #UNZIP16HP
    li s6, 0x1122334455667788 #rs1
    li s7, 0x99AABBCCDDEEFF00 #rs2
    li s8, 0x99AADDEE11225566 #expected result
    unzip16hp s9, s6, s7
    bne s9, s8, test_fail_140
    j test_continue_140
test_fail_140:
    la a0, test_name_140
    jal ra, report_error
test_continue_140:

    #ABS
    li s6, 0xFFFFFFFFFFFFFFFF #rs1
    li s8, 0x0000000000000001 #expected result
    abs s9, s6
    bne s9, s8, test_fail_141
    j test_continue_141
test_fail_141:
    la a0, test_name_141
    jal ra, report_error
test_continue_141:

    #CLS
    li s6, 0x1000000000000000 #rs1
    li s8, 0x0000000000000002 #rs2
    cls s9, s6
    bne s9, s8, test_fail_142
    j test_continue_142
test_fail_142:
    la a0, test_name_142
    jal ra, report_error
test_continue_142:

    #REV
    li s6, 0x123456789ABCDEF0 #rs1
    li s8, 0x0F7B3D591E6A2C48 #expected result
    rev s9, s6
    bne s9, s8, test_fail_143
    j test_continue_143
test_fail_143:
    la a0, test_name_143
    jal ra, report_error
test_continue_143:

    #REV16
    li s6, 0x123456789ABCDEF0 #rs1
    li s8, 0xDEF09ABC56781234 #expected result
    rev16 s9, s6
    bne s9, s8, test_fail_144
    j test_continue_144
test_fail_144:
    la a0, test_name_144
    jal ra, report_error
test_continue_144:

    #SLX
    li s6, 0x00000000000000FF #rs1
    li s7, 0x0000000000000008 #rs2
    li s9, 0x0000000000001234 #rd
    li s8, 0x0000000000123400 #expected result
    slx s9, s6, s7
    bne s9, s8, test_fail_145
    j test_continue_145
test_fail_145:
    la a0, test_name_145
    jal ra, report_error
test_continue_145:

    #SRX
    li s6, 0x00000000000000FF #rs1
    li s7, 0x0000000000000008 #rs2
    li s9, 0x0000000000123400 #rd
    li s8, 0xFF00000000001234 #expected result
    srx s9, s6, s7
    bne s9, s8, test_fail_146
    j test_continue_146
test_fail_146:
    la a0, test_name_146
    jal ra, report_error
test_continue_146:

    #MVM
    li s6, 0xAAAABBBBCCCCDDDD #rs1
    li s7, 0xFFFF0000FFFF0000 #rs2
    li s9, 0x123456789ABCDEF0 #rd
    li s8, 0xAAAA5678CCCCDEF0 #expected result
    mvm s9, s6, s7
    bne s9, s8, test_fail_147
    j test_continue_147
test_fail_147:
    la a0, test_name_147
    jal ra, report_error
test_continue_147:

    # MVMN
    li s6, 0xAAAABBBBCCCCDDDD #rs1
    li s7, 0xFFFF0000FFFF0000 #rs2
    li s9, 0x123456789ABCDEF0 #rd
    li s8, 0x1234BBBB9ABCDDDD #expected result
    mvmn s9, s6, s7
    bne s9, s8, test_fail_148
    j test_continue_148
test_fail_148:
    la a0, test_name_148
    jal ra, report_error
test_continue_148:

    #MERGE
    li s6, 0xAAAABBBBCCCCDDDD #rs1
    li s7, 0x123456789ABCDEF0 #rs2
    li s9, 0x0000FFFF0000FFFF #rd
    li s8, 0xAAAA5678CCCCDEF0 #expected result
    merge s9, s6, s7
    bne s9, s8, test_fail_149
    j test_continue_149
test_fail_149:
    la a0, test_name_149
    jal ra, report_error
test_continue_149:

    #ABSW
    li s6, 0x00000000FFFFFFFF #rs1
    li s8, 0x0000000000000001 #expected result
    absw s9, s6
    bne s9, s8, test_fail_150
    j test_continue_150
test_fail_150:
    la a0, test_name_150
    jal ra, report_error
test_continue_150:

    #CLSW
    li s6, 0x0000000030000000 #rs1
    li s7, 0x0000000000000001 #expected result
    clsw s9, s6
    bne s9, s8, test_fail_151
    j test_continue_151
test_fail_151:
    la a0, test_name_151
    jal ra, report_error
test_continue_151:

    #PMULH.H
    li s6, 0x7FFF00028000FFFE #rs1
    li s7, 0x7FFF00037FFF0001 #rs2
    li s8, 0x3FFF0000C000FFFF #expected result
    pmulh.h s9, s6, s7
    bne s9, s8, test_fail_152
    j test_continue_152
test_fail_152:
    la a0, test_name_152
    jal ra, report_error
test_continue_152:

    # PMULHR.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0x3FFF40000000C001 #expected result
    pmulhr.h s9, s6, s7
    bne s9, s8, test_fail_153
    j test_continue_153
test_fail_153:
    la a0, test_name_153
    jal ra, report_error
test_continue_153:

    #PMULHSU.H
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFEFFFF0000FFFF #expected result
    pmulhsu.h s9, s6, s7
    bne s9, s8, test_fail_154
    j test_continue_154
test_fail_154:
    la a0, test_name_154
    jal ra, report_error
test_continue_154:

    #PMULHRSU.H
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFF000000000000 #expected result
    pmulhrsu.h s9, s6, s7
    bne s9, s8, test_fail_155
    j test_continue_155
test_fail_155:
    la a0, test_name_155
    jal ra, report_error
test_continue_155:

    #PMULHU.H
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFF000180017FFF #rs2
    li s8, 0x3FFF000000017FFE #expected result
    pmulhu.h s9, s6, s7
    bne s9, s8, test_fail_156
    j test_continue_156
test_fail_156:
    la a0, test_name_156
    jal ra, report_error
test_continue_156:

    #PMULHRU.H
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFF000180017FFF #rs2
    li s8, 0x4000000100017FFE #expected result
    pmulhru.h s9, s6, s7
    bne s9, s8, test_fail_157
    j test_continue_157
test_fail_157:
    la a0, test_name_157
    jal ra, report_error
test_continue_157:

    #PMULQ.H
    li s6, 0x7FFF00017FFF0001 # rs1
    li s7, 0x8000FFFF8000FFFF # rs2
    li s10, 0x8001ffff8001ffff # expected result
    pmulq.h s8, s6, s7
    bne s10, s8, test_fail_158
    j test_continue_158
test_fail_158:
    la a0, test_name_158
    jal ra, report_error
test_continue_158:

    #PMULQR.H
    li s6, 0x80007FFF00020001 #rs1
    li s7, 0x80007FFFFFFEFFFF #rs2
    li s8, 0x7FFF7FFE00000000 #expected result
    pmulqr.h s9, s6, s7
    bne s9, s8, test_fail_159
    j test_continue_159
test_fail_159:
    la a0, test_name_159
    jal ra, report_error
test_continue_159:

    #PMHACC.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0x7FFF80010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x4000400100030003 #expected result
    pmhacc.h s9, s6, s7
    bne s9, s8, test_fail_160
    j test_continue_160
test_fail_160:
    la a0, test_name_160
    jal ra, report_error
test_continue_160:

    #PMHRACC.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0x7FFF80010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x4000400200030004 #expected result
    pmhracc.h s9, s6, s7
    bne s9, s8, test_fail_161
    j test_continue_161
test_fail_161:
    la a0, test_name_161
    jal ra, report_error
test_continue_161:

    #PMHACCSU.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x7FFF000100030005 #expected result
    pmhaccsu.h s9, s6, s7
    bne s9, s8, test_fail_162
    j test_continue_162
test_fail_162:
    la a0, test_name_162
    jal ra, report_error
test_continue_162:

    #PMHRACCSU.H
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x8000000200030006 #expected result
    pmhraccsu.h s9, s6, s7
    bne s9, s8, test_fail_163
    j test_continue_163
test_fail_163:
    la a0, test_name_163
    jal ra, report_error
test_continue_163:

    #PMHACCU.H
    li s6, 0xFFFF800000020003 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF000200030006 #expected result
    pmhaccu.h s9, s6, s7
    bne s9, s8, test_fail_164
    j test_continue_164
test_fail_164:
    la a0, test_name_164
    jal ra, report_error
test_continue_164:

    #PMHRACCU.H
    li s6, 0xFFFF800000020003 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF000300030007 #expected result
    pmhraccu.h s9, s6, s7
    bne s9, s8, test_fail_165
    j test_continue_165
test_fail_165:
    la a0, test_name_165
    jal ra, report_error
test_continue_165:

    #PMULH.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFF3FFFFFFF # expected result
    pmulh.w s9, s6, s7
    bne s9, s8, test_fail_166
    j test_continue_166
test_fail_166:
    la a0, test_name_166
    jal ra, report_error
test_continue_166:

    #PMULHR.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0x000000003FFFFFFF # expected result
    pmulhr.w s9, s6, s7
    bne s9, s8, test_fail_167
    j test_continue_167
test_fail_167:
    la a0, test_name_167
    jal ra, report_error
test_continue_167:

    #PMULHSU.W
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFF000000000009 #expected result
    pmulhsu.w s9, s6, s7
    bne s9, s8, test_fail_168
    j test_continue_168
test_fail_168:
    la a0, test_name_168
    jal ra, report_error
test_continue_168:

    #PMULHRSU.W
    li s6, 0x7FFF80000002FFFE #rs1
    li s7, 0xFFFF000100030004 #rs2
    li s8, 0x7FFF000100000009  #expected result
    pmulhrsu.w s9, s6, s7
    bne s9, s8, test_fail_169
    j test_continue_169
test_fail_169:
    la a0, test_name_169
    jal ra, report_error
test_continue_169:

    #PMULHU.W
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFF000180017FFF #rs2
    li s8, 0x3FFFFFFF00018003 #expected result
    pmulhu.w s9, s6, s7
    bne s9, s8, test_fail_170
    j test_continue_170
test_fail_170:
    la a0, test_name_170
    jal ra, report_error
test_continue_170:

    #PMULHRU.W
    li s6, 0x8000FFFF0002FFFE #rs1
    li s7, 0x7FFFFFFF80017FFF #rs2
    li s8, 0x40007FFF00018003 #expected result
    pmulhru.w s9, s6, s7
    bne s9, s8, test_fail_171
    j test_continue_171
test_fail_171:
    la a0, test_name_171
    jal ra, report_error
test_continue_171:

    #PMULQ.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFF7FFFFFFE # expected result
    pmulq.w s9, s6, s7
    bne s9, s8, test_fail_172
    j test_continue_172
test_fail_172:
    la a0, test_name_172
    jal ra, report_error
test_continue_172:

    #PMULQR.W
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0x000000007FFFFFFE # expected result
    pmulqr.w s9, s6, s7
    bne s9, s8, test_fail_173
    j test_continue_173
test_fail_173:
    la a0, test_name_173
    jal ra, report_error
test_continue_173:

    #PMHACC.W
    li s6, 0x0001000000010000 # rs1
    li s7, 0x0001000000010000 # rs2
    li s9, 0x7FFFFFFF00000064 # rd
    li s8, 0x8000000000000065 # expected result
    pmhacc.w s9, s6, s7
    bne s9, s8, test_fail_174
    j test_continue_174
test_fail_174:
    la a0, test_name_174
    jal ra, report_error
test_continue_174:

    # PMHRACC.W
    li s6, 0x000100017FFFFFFF # rs1
    li s7, 0x000100017FFFFFFF # rs2
    li s9, 0x7FFFFFFF00000001 # rd
    li s8, 0x8000000040000000 # expected result
    pmhracc.w s9, s6, s7
    bne s9, s8, test_fail_175
    j test_continue_175
test_fail_175:
    la a0, test_name_175
    jal ra, report_error
test_continue_175:

    #PMHACCSU.W
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x800000020003000C #expected result
    pmhaccsu.w s9, s6, s7
    bne s9, s8, test_fail_176
    j test_continue_176
test_fail_176:
    la a0, test_name_176
    jal ra, report_error
test_continue_176:

    #PMHRACCSU.W
    li s6, 0x7FFF800000020002 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0x800000030003000C #expected result
    pmhraccsu.w s9, s6, s7
    bne s9, s8, test_fail_177
    j test_continue_177
test_fail_177:
    la a0, test_name_177
    jal ra, report_error
test_continue_177:

    #PMHACCU.W
    li s6, 0xFFFF800000020003 #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF80030003000C #expected result
    pmhaccu.w s9, s6, s7
    bne s9, s8, test_fail_178
    j test_continue_178
test_fail_178:
    la a0, test_name_178
    jal ra, report_error
test_continue_178:

    #PMHRACCU.W
    li s6, 0xFFFF80000002FFFE #rs1
    li s7, 0xFFFF00010003FFFE #rs2
    li s9, 0x0001000200030004 #rd
    li s8, 0xFFFF800300030010 #expected result
    pmhraccu.w s9, s6, s7
    bne s9, s8, test_fail_179
    j test_continue_179
test_fail_179:
    la a0, test_name_179
    jal ra, report_error
test_continue_179:

    #PMQACC.W.H00
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x80017FFF00037FFF #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqacc.w.h00 s9, s6, s7
    bne s9, s8, test_fail_180
    j test_continue_180
test_fail_180:
    la a0, test_name_180
    jal ra, report_error
test_continue_180:

    #PMQACC.W.H01
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqacc.w.h01 s9, s6, s7
    bne s9, s8, test_fail_181
    j test_continue_181
test_fail_181:
    la a0, test_name_181
    jal ra, report_error
test_continue_181:

    #PMQACC.W.H11
    li s6, 0x7FFF800080000002 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqacc.w.h11 s9, s6, s7
    bne s9, s8, test_fail_182
    j test_continue_182
test_fail_182:
    la a0, test_name_182
    jal ra, report_error
test_continue_182:

    #PMQRACC.W.H00
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x80017FFF00037FFF #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqracc.w.h00 s9, s6, s7
    bne s9, s8, test_fail_183
    j test_continue_183
test_fail_183:
    la a0, test_name_183
    jal ra, report_error
test_continue_183:

    #PMQRACC.W.H01
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqracc.w.h01 s9, s6, s7
    bne s9, s8, test_fail_184
    j test_continue_184
test_fail_184:
    la a0, test_name_184
    jal ra, report_error
test_continue_184:

    #PMQRACC.W.H11
    li s6, 0x7FFF800080000002 #rs1
    li s7, 0x7FFF80017FFF0003 #rs2
    li s9, 0x0000000100000002 #rd
    li s8, 0x00007FFFFFFF8003 #expected result
    pmqracc.w.h11 s9, s6, s7
    bne s9, s8, test_fail_185
    j test_continue_185
test_fail_185:
    la a0, test_name_185
    jal ra, report_error
test_continue_185:

    #PMQ2ADD.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0x0000FFFDFFFF8001 #expected result
    pmq2add.h s9, s6, s7
    bne s9, s8, test_fail_186
    j test_continue_186
test_fail_186:
    la a0, test_name_186
    jal ra, report_error
test_continue_186:

    #PMQ2ADDA.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000200000002 #rd
    li s8, 0x0000FFFFFFFF8003 #expected result
    pmq2adda.h s9, s6, s7
    bne s9, s8, test_fail_187
    j test_continue_187
test_fail_187:
    la a0, test_name_187
    jal ra, report_error
test_continue_187:

    #PMQR2ADD.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0x0000FFFDFFFF8001 #expected result
    pmqr2add.h s9, s6, s7
    bne s9, s8, test_fail_188
    j test_continue_188
test_fail_188:
    la a0, test_name_188
    jal ra, report_error
test_continue_188:

    #PMQR2ADDA.H
    li s6, 0x7FFF800000028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000200000002 #rd
    li s8, 0x0000FFFFFFFF8003 #expected result
    pmqr2adda.h s9, s6, s7
    bne s9, s8, test_fail_189
    j test_continue_189
test_fail_189:
    la a0, test_name_189
    jal ra, report_error
test_continue_189:

    #MQACC.W00
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqacc.w00 s9, s6, s7
    bne s9, s8, test_fail_190
    j test_continue_190
test_fail_190:
    la a0, test_name_190
    jal ra, report_error
test_continue_190:

    #MQACC.W01
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x800000007FFFFFFF #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqacc.w01 s9, s6, s7
    bne s9, s8, test_fail_191
    j test_continue_191
test_fail_191:
    la a0, test_name_191
    jal ra, report_error
test_continue_191:

    #MQACC.W11
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqacc.w11 s9, s6, s7
    bne s9, s8, test_fail_192
    j test_continue_192
test_fail_192:
    la a0, test_name_192
    jal ra, report_error
test_continue_192:

    #MQRACC.W00
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqracc.w00 s9, s6, s7
    bne s9, s8, test_fail_193
    j test_continue_193
test_fail_193:
    la a0, test_name_193
    jal ra, report_error
test_continue_193:

    #MQRACC.W01
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x800000007FFFFFFF #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqracc.w01 s9, s6, s7
    bne s9, s8, test_fail_194
    j test_continue_194
test_fail_194:
    la a0, test_name_194
    jal ra, report_error
test_continue_194:

    #MQRACC.W11
    li s6, 0x800000007FFFFFFF #rs1
    li s7, 0x7FFFFFFF80000000 #rs2
    li s9, 0x0000000000001000 #rd
    li s8, 0xFFFFFFFF80001001 #expected result
    mqracc.w11 s9, s6, s7
    bne s9, s8, test_fail_195
    j test_continue_195
test_fail_195:
    la a0, test_name_195
    jal ra, report_error
test_continue_195:

    #PMQ2ADD.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0xFFFFFFFF8001000E #expected result
    pmq2add.w s9, s6, s7
    bne s9, s8, test_fail_196
    j test_continue_196
test_fail_196:
    la a0, test_name_196
    jal ra, report_error
test_continue_196:

    #PMQ2ADDA.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0xFFFFFFFF8001000F #expected result
    pmq2adda.w s9, s6, s7
    bne s9, s8, test_fail_197
    j test_continue_197
test_fail_197:
    la a0, test_name_197
    jal ra, report_error
test_continue_197:

    #PMQR2ADD.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s8, 0xFFFFFFFF8001000F #expected result
    pmqr2add.w s9, s6, s7
    bne s9, s8, test_fail_198
    j test_continue_198
test_fail_198:
    la a0, test_name_198
    jal ra, report_error
test_continue_198:

    #PMQR2ADDA.W
    li s6, 0x80007FFF00028000 #rs1
    li s7, 0x7FFF800100037FFF #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0xFFFFFFFF80010010 #expected result
    pmqr2adda.w s9, s6, s7
    bne s9, s8, test_fail_199
    j test_continue_199
test_fail_199:
    la a0, test_name_199
    jal ra, report_error
test_continue_199:

    #PMUL.H.B00
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x7F0180015E80007F #rs2
    li s8, 0xFF80007FFF00007F #expected result
    pmul.h.b00 s9, s6, s7
    bne s9, s8, test_fail_200
    j test_continue_200
test_fail_200:
    la a0, test_name_200
    jal ra, report_error
test_continue_200:

    #PMUL.H.B01
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x017F0180805E7F80 #rs2
    li s8, 0xFF80007FFF00007F #expected result
    pmul.h.b01 s9, s6, s7
    bne s9, s8, test_fail_201
    j test_continue_201
test_fail_201:
    la a0, test_name_201
    jal ra, report_error
test_continue_201:

    #PMUL.H.B11
    li s6, 0x80667F8802500101 #rs1
    li s7, 0x017F0180805E7F80 #rs2
    li s8, 0xFF80007FFF00007F #expected result
    pmul.h.b11 s9, s6, s7
    bne s9, s8, test_fail_202
    j test_continue_202
test_fail_202:
    la a0, test_name_202
    jal ra, report_error
test_continue_202:

    #PMULSU.H.B00
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x7F0180015E80007F #rs2
    li s8, 0xFF80007F0100007F #expected result
    pmulsu.h.b00 s9, s6, s7
    bne s9, s8, test_fail_203
    j test_continue_203
test_fail_203:
    la a0, test_name_203
    jal ra, report_error
test_continue_203:

    #PMULSU.H.B11
    li s6, 0x807F7F04027F017E #rs1
    li s7, 0x017F010880807F55 #rs2
    li s8, 0xFF80007F0100007F #expected result
    pmulsu.h.b11 s9, s6, s7
    bne s9, s8, test_fail_204
    j test_continue_204
test_fail_204:
    la a0, test_name_204
    jal ra, report_error
test_continue_204:

    # PMULU.H.B00
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x7F0180015E80007F #rs2
    li s8, 0x0080007F0100007F #expected result
    pmulu.h.b00 s9, s6, s7
    bne s9, s8, test_fail_205
    j test_continue_205
test_fail_205:
    la a0, test_name_205
    jal ra, report_error
test_continue_205:

    #PMULU.H.B01
    li s6, 0x7F80017F05027E01 #rs1
    li s7, 0x017F018080807F7F #rs2
    li s8, 0x0080007F0100007F #expected result
    pmulu.h.b01 s9, s6, s7
    bne s9, s8, test_fail_206
    j test_continue_206
test_fail_206:
    la a0, test_name_206
    jal ra, report_error
test_continue_206:

    #PMULU.H.B11
    li s6, 0x80807F7F02020101 #rs1
    li s7, 0x017F018080807F7F #rs2
    li s8, 0x0080007F0100007F #expected result
    pmulu.h.b11 s9, s6, s7
    bne s9, s8, test_fail_207
    j test_continue_207
test_fail_207:
    la a0, test_name_207
    jal ra, report_error
test_continue_207:

    #PMUL.W.H00
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0xFFFF7FFF0000FFFF # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    pmul.w.h00 s9, s6, s7
    bne s9, s8, test_fail_208
    j test_continue_208
test_fail_208:
    la a0, test_name_208
    jal ra, report_error
test_continue_208:

    #PMUL.W.H01
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    pmul.w.h01 s9, s6, s7
    bne s9, s8, test_fail_209
    j test_continue_209
test_fail_209:
    la a0, test_name_209
    jal ra, report_error
test_continue_209:

    #PMUL.W.H11
    li s6, 0x7FFFFFFF0001FFFF # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    pmul.w.h11 s9, s6, s7
    bne s9, s8, test_fail_210
    j test_continue_210
test_fail_210:
    la a0, test_name_210
    jal ra, report_error
test_continue_210:

    #PMULSU.W.H00
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0xFFFF7FFF0000FFFF # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulsu.w.h00 s9, s6, s7
    bne s9, s8, test_fail_211
    j test_continue_211
test_fail_211:
    la a0, test_name_211
    jal ra, report_error
test_continue_211:

    #PMULSU.W.H11
    li s6, 0x7FFFFFFF0001FFFF # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulsu.w.h11 s9, s6, s7
    bne s9, s8, test_fail_212
    j test_continue_212
test_fail_212:
    la a0, test_name_212
    jal ra, report_error
test_continue_212:

    #PMULU.W.H00
    li s6, 0xFFFF7FFFFFFFFFFF # rs1
    li s7, 0xFFFF7FFF00000001 # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulu.w.h00 s9, s6, s7
    bne s9, s8, test_fail_213
    j test_continue_213
test_fail_213:
    la a0, test_name_213
    jal ra, report_error
test_continue_213:

    #PMULU.W.H01
    li s6, 0xFFFF7FFFFFFFFFFF # rs1
    li s7, 0x7FFFFFFF000107FF # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulu.w.h01 s9, s6, s7
    bne s9, s8, test_fail_214
    j test_continue_214
test_fail_214:
    la a0, test_name_214
    jal ra, report_error
test_continue_214:

    #PMULU.W.H11
    li s6, 0x7FFFFFFFFFFFFFFF # rs1
    li s7, 0x7FFFFFFF000107FF # rs2
    li s8, 0x3FFF00010000FFFF # expected result
    pmulu.w.h11 s9, s6, s7
    bne s9, s8, test_fail_215
    j test_continue_215
test_fail_215:
    la a0, test_name_215
    jal ra, report_error
test_continue_215:

    # PMACC.W.H00
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF8000 # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFF40007FFF # expected result
    pmacc.w.h00 s9, s6, s7
    bne s9, s8, test_fail_216
    j test_continue_216
test_fail_216:
    la a0, test_name_216
    jal ra, report_error
test_continue_216:

    #PMACC.W.H01
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFF40007FFF # expected result
    pmacc.w.h01 s9, s6, s7
    bne s9, s8, test_fail_217
    j test_continue_217
test_fail_217:
    la a0, test_name_217
    jal ra, report_error
test_continue_217:

    #PMACC.W.H11
    li s6, 0x8000FFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFF40007FFF # expected result
    pmacc.w.h11 s9, s6, s7
    bne s9, s8, test_fail_218
    j test_continue_218
test_fail_218:
    la a0, test_name_218
    jal ra, report_error
test_continue_218:

    #PMACCSU.W.H00
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF8000 # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFFBFFF7FFF # expected result
    pmaccsu.w.h00 s9, s6, s7
    bne s9, s8, test_fail_219
    j test_continue_219
test_fail_219:
    la a0, test_name_219
    jal ra, report_error
test_continue_219:

    #PMACCSU.W.H11
    li s6, 0x8000FFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x40007FFFBFFF7FFF # expected result
    pmaccsu.w.h11 s9, s6, s7
    bne s9, s8, test_fail_220
    j test_continue_220
test_fail_220:
    la a0, test_name_220
    jal ra, report_error
test_continue_220:

    #PMACCU.W.H00
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF8000 # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0xBFFF7FFFBFFF7FFF # expected result
    pmaccu.w.h00 s9, s6, s7
    bne s9, s8, test_fail_221
    j test_continue_221
test_fail_221:
    la a0, test_name_221
    jal ra, report_error
test_continue_221:

    #PMACCU.W.H01
    li s6, 0xFFFF8000FFFF7FFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0xBFFF7FFFBFFF7FFF # expected result
    pmaccu.w.h01 s9, s6, s7
    bne s9, s8, test_fail_222
    j test_continue_222
test_fail_222:
    la a0, test_name_222
    jal ra, report_error
test_continue_222:

    #PMACCU.W.H11
    li s6, 0x8000FFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF8000FFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0xBFFF7FFFBFFF7FFF # expected result
    pmaccu.w.h11 s9, s6, s7
    bne s9, s8, test_fail_223
    j test_continue_223
test_fail_223:
    la a0, test_name_223
    jal ra, report_error
test_continue_223:

    #PM2ADD.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s8, 0x80000000FFFFFFFD # expected result
    pm2add.h s9, s6, s7
    bne s9, s8, test_fail_224
    j test_continue_224
test_fail_224:
    la a0, test_name_224
    jal ra, report_error
test_continue_224:

    #PM2ADDSU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s8, 0x800000000001FFFD # expected result
    pm2addsu.h s9, s6, s7
    bne s9, s8, test_fail_225
    j test_continue_225
test_fail_225:
    la a0, test_name_225
    jal ra, report_error
test_continue_225:

    #PM2ADDU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s8, 0x800000000002FFFD # expected result
    pm2addu.h s9, s6, s7
    bne s9, s8, test_fail_226
    j test_continue_226
test_fail_226:
    la a0, test_name_226
    jal ra, report_error
test_continue_226:

    #PM2ADD.HX
    li s6, 0x8000800000010001 # rs1
    li s7, 0x8000800000010001 # rs2
    li s8, 0x8000000000000002 # expected result
    pm2add.hx s9, s6, s7
    bne s9, s8, test_fail_227
    j test_continue_227
test_fail_227:
    la a0, test_name_227
    jal ra, report_error
test_continue_227:

    #PM2SADD.H
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x3FFF000200000000 # expected result
    pm2sadd.h s9, s6, s7
    bne s9, s8, test_fail_228
    j test_continue_228
test_fail_228:
    la a0, test_name_228
    jal ra, report_error
test_continue_228:

    #PM2SADD.HX
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x3FFF000200000000 # expected result
    pm2sadd.hx s9, s6, s7
    bne s9, s8, test_fail_229
    j test_continue_229
test_fail_229:
    la a0, test_name_229
    jal ra, report_error
test_continue_229:

    #PM2SUB.H
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s8, 0x0000000000000002 # expected result
    pm2sub.h s9, s6, s7
    bne s9, s8, test_fail_230
    j test_continue_230
test_fail_230:
    la a0, test_name_230
    jal ra, report_error
test_continue_230:

    #PM2SUB.HX
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s8, 0x0000000000000002 # expected result
    pm2sub.hx s9, s6, s7
    bne s9, s8, test_fail_231
    j test_continue_231
test_fail_231:
    la a0, test_name_231
    jal ra, report_error
test_continue_231:

    #PM2ADDA.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s9, 0x0000000100000001 #rd
    li s8, 0x80000001FFFFFFFE # expected result
    pm2adda.h s9, s6, s7
    bne s9, s8, test_fail_232
    j test_continue_232
test_fail_232:
    la a0, test_name_232
    jal ra, report_error
test_continue_232:

    #PM2ADDASU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s9, 0x0000000100000001 #rd
    li s8, 0x800000010001FFFE # expected result
    pm2addasu.h s9, s6, s7
    bne s9, s8, test_fail_233
    j test_continue_233
test_fail_233:
    la a0, test_name_233
    jal ra, report_error
test_continue_233:

    #PM2ADDAU.H
    li s6, 0x80008000FFFF0002 # rs1
    li s7, 0x800080000001FFFF # rs2
    li s9, 0x0000001000000001 # rd
    li s8, 0x800000100002FFFE # expected result
    pm2addau.h s9, s6, s7
    bne s9, s8, test_fail_234
    j test_continue_234
test_fail_234:
    la a0, test_name_234
    jal ra, report_error
test_continue_234:

    #PM2ADDA.HX
    li s6, 0x8000800000010001 # rs1
    li s7, 0x8000800000010001 # rs2
    li s9, 0x0000000100000002 # rd
    li s8, 0x8000000100000004 # expected result
    pm2adda.hx s9, s6, s7
    bne s9, s8, test_fail_235
    j test_continue_235
test_fail_235:
    la a0, test_name_235
    jal ra, report_error
test_continue_235:

    #PM2SUBA.H
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s9, 0x0000000100000004 #rd
    li s8, 0x0000000100000006 # expected result
    pm2suba.h s9, s6, s7
    bne s9, s8, test_fail_236
    j test_continue_236
test_fail_236:
    la a0, test_name_236
    jal ra, report_error
test_continue_236:

    #PM2SUBA.HX
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s9, 0x0000000100000005 # rd
    li s8, 0x0000000100000007 # expected result
    pm2suba.hx s9, s6, s7
    bne s9, s8, test_fail_237
    j test_continue_237
test_fail_237:
    la a0, test_name_237
    jal ra, report_error
test_continue_237:

    #MUL.W00
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x80000001FFFFFFFF # rs2
    li s8, 0x0000000080000000 # expected result
    mul.w00 s9, s6, s7
    bne s9, s8, test_fail_238
    j test_continue_238
test_fail_238:
    la a0, test_name_238
    jal ra, report_error
test_continue_238:

    #MUL.W01
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x0000000080000000 # expected result
    mul.w01 s9, s6, s7
    bne s9, s8, test_fail_239
    j test_continue_239
test_fail_239:
    la a0, test_name_239
    jal ra, report_error
test_continue_239:

    #MUL.W11
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0xFFFFFFFF80000001 # expected result
    mul.w11 s9, s6, s7
    bne s9, s8, test_fail_240
    j test_continue_240
test_fail_240:
    la a0, test_name_240
    jal ra, report_error
test_continue_240:

    #MULSU.W00
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x8000000180000000 # rs2
    li s8, 0x3FFFFFFF80000000 # expected result
    mulsu.w00 s9, s6, s7
    bne s9, s8, test_fail_241
    j test_continue_241
test_fail_241:
    la a0, test_name_241
    jal ra, report_error
test_continue_241:

    #MULSU.W11
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000001 # rs2
    li s8, 0xC000000080000000 # expected result
    mulsu.w11 s9, s6, s7
    bne s9, s8, test_fail_242
    j test_continue_242
test_fail_242:
    la a0, test_name_242
    jal ra, report_error
test_continue_242:

    #MULU.W00
    li s6, 0x000000007fffffff #rs1
    li s7, 0x0000000080000000 #rs2
    li s8, 0x3FFFFFFF80000000 # expected result
    mulu.w00 s10, s6, s7
    bne s10, s8, test_fail_243
    j test_continue_243
test_fail_243:
    la a0, test_name_243
    jal ra, report_error
test_continue_243:

    #MULU.W01
    li s6, 0x000000007fffffff
    li s7, 0x8000000000000000
    li s8, 0x3FFFFFFF80000000
    mulu.w01 s10, s6, s7
    bne s10, s8, test_fail_244
    j test_continue_244
test_fail_244:
    la a0, test_name_244
    jal ra, report_error
test_continue_244:

    #MULU.W11
    li s6, 0x7fffffff00000000
    li s7, 0x8000000000000000
    li s8, 0x3FFFFFFF80000000
    mulu.w11 s10, s6, s7
    bne s10, s8, test_fail_245
    j test_continue_245
test_fail_245:
    la a0, test_name_245
    jal ra, report_error
test_continue_245:

    # MACC.W00
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x80000001FFFFFFFF # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    macc.w00 s9, s6, s7
    bne s9, s8, test_fail_246
    j test_continue_246
test_fail_246:
    la a0, test_name_246
    jal ra, report_error
test_continue_246:

    #MACC.W01
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    macc.w01 s9, s6, s7
    bne s9, s8, test_fail_247
    j test_continue_247
test_fail_247:
    la a0, test_name_247
    jal ra, report_error
test_continue_247:

    #MACC.W11
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    macc.w11 s9, s6, s7
    bne s9, s8, test_fail_248
    j test_continue_248
test_fail_248:
    la a0, test_name_248
    jal ra, report_error
test_continue_248:

    #MACCSU.W00
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x8000000180000000 # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccsu.w00 s9, s6, s7
    bne s9, s8, test_fail_249
    j test_continue_249
test_fail_249:
    la a0, test_name_249
    jal ra, report_error
test_continue_249:

    #MACCSU.W11
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x8000000080000001 # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccsu.w11 s9, s6, s7
    bne s9, s8, test_fail_250
    j test_continue_250
test_fail_250:
    la a0, test_name_250
    jal ra, report_error
test_continue_250:

    #MACCU.W00
    li s6, 0x000000007fffffff #rs1
    li s7, 0x0000000080000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccu.w00 s9, s6, s7
    bne s9, s8, test_fail_251
    j test_continue_251
test_fail_251:
    la a0, test_name_251
    jal ra, report_error
test_continue_251:

    #MACCU.W01
    li s6, 0x000000007fffffff #rs1
    li s7, 0x8000000000000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccu.w01 s9, s6, s7
    bne s9, s8, test_fail_252
    j test_continue_252
test_fail_252:
    la a0, test_name_252
    jal ra, report_error
test_continue_252:

    #MACCU.W11
    li s6, 0x7fffffff00000000 #rs1
    li s7, 0x8000000000000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x3FFFFFFF80000001 # expected result
    maccu.w11 s9, s6, s7
    bne s9, s8, test_fail_253
    j test_continue_253
test_fail_253:
    la a0, test_name_253
    jal ra, report_error
test_continue_253:

    #PM2ADD.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000000 # rs2
    li s8, 0x8000000100000000 # expected result
    pm2add.w s9, s6, s7
    bne s9, s8, test_fail_254
    j test_continue_254
test_fail_254:
    la a0, test_name_254
    jal ra, report_error
test_continue_254:

    #PM2ADDSU.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000000 # rs2
    li s8, 0x0000000000000000 # expected result
    pm2addsu.w s9, s6, s7
    bne s9, s8, test_fail_255
    j test_continue_255
test_fail_255:
    la a0, test_name_255
    jal ra, report_error
test_continue_255:

    #PM2ADDU.W
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x7FFFFFFF80000000 # rs2
    li s8, 0x7FFFFFFF00000000 # expected result
    pm2addu.w s9, s6, s7
    bne s9, s8, test_fail_256
    j test_continue_256
test_fail_256:
    la a0, test_name_256
    jal ra, report_error
test_continue_256:

    #PM2ADD.WX
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x800000007FFFFFFF # rs2
    li s8, 0x8000000100000000 # expected result
    pm2add.wx s9, s6, s7
    bne s9, s8, test_fail_257
    j test_continue_257
test_fail_257:
    la a0, test_name_257
    jal ra, report_error
test_continue_257:

    #PM2SUB.W
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s8, 0xFFFFFFFFFFFFFFFE # expected result
    pm2sub.w s9, s6, s7
    bne s9, s8, test_fail_258
    j test_continue_258
test_fail_258:
    la a0, test_name_258
    jal ra, report_error
test_continue_258:

    #PM2SUB.WX
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s8, 0x0000000000000002 # expected result
    pm2sub.wx s9, s6, s7
    bne s9, s8, test_fail_259
    j test_continue_259
test_fail_259:
    la a0, test_name_259
    jal ra, report_error
test_continue_259:

    #PM2ADDA.W
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x1111111111111111
    li s8, 0x1111111111111116
    pm2adda.w s9, s6, s7
    bne s9, s8, test_fail_260
    j test_continue_260
test_fail_260:
    la a0, test_name_260
    jal ra, report_error
test_continue_260:

    #PM2ADDASU.W
    li s6, 0x0000000200000001 #rs1
    li s7, 0x0000000280000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x0000000080000005 #expected result
    pm2addasu.w s9, s6, s7
    bne s9, s8, test_fail_261
    j test_continue_261
test_fail_261:
    la a0, test_name_261
    jal ra, report_error
test_continue_261:

    #PM2ADDAU.W
    li s6, 0x8000000000000001 #rs1
    li s7, 0x0000000280000000 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0x0000000180000001 #expected result
    pm2addau.w s9, s6, s7
    bne s9, s8, test_fail_262
    j test_continue_262
test_fail_262:
    la a0, test_name_262
    jal ra, report_error
test_continue_262:

    #PM2ADDA.WX
    li s6, 0x0000000200000001 #rs1
    li s7, 0x0000000100000002 #rs2
    li s9, 0x1111111111111111 #rd
    li s8, 0x1111111111111116 #expected result
    pm2adda.wx s9, s6, s7
    bne s9, s8, test_fail_263
    j test_continue_263
test_fail_263:
    la a0, test_name_263
    jal ra, report_error
test_continue_263:

    #PM2SUBA.W
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0xFFFFFFFFFFFFFFFF # expected result
    pm2suba.w s9, s6, s7
    bne s9, s8, test_fail_264
    j test_continue_264
test_fail_264:
    la a0, test_name_264
    jal ra, report_error
test_continue_264:

    #PM2SUBA.WX
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0xFFFFFFFFFFFFFFFF # expected result
    pm2suba.wx s9, s6, s7
    bne s9, s8, test_fail_265
    j test_continue_265
test_fail_265:
    la a0, test_name_265
    jal ra, report_error
test_continue_265:

    #PM4ADD.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s8, 0xFFFFFF8E0000001E # expected result
    pm4add.b s9, s6, s7
    bne s9, s8, test_fail_266
    j test_continue_266
test_fail_266:
    la a0, test_name_266
    jal ra, report_error
test_continue_266:

    #PM4ADDSU.B
    li s6, 0x0103020104030201 # rs1
    li s7, 0x8003020104030201 # rs2
    li s8, 0x0000008E0000001E # expected result
    pm4addsu.b s9, s6, s7
    bne s9, s8, test_fail_267
    j test_continue_267
test_fail_267:
    la a0, test_name_267
    jal ra, report_error
test_continue_267:

    #PM4ADDU.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s8, 0x0000008E0000001E # expected result
    pm4addu.b s9, s6, s7
    bne s9, s8, test_fail_268
    j test_continue_268
test_fail_268:
    la a0, test_name_268
    jal ra, report_error
test_continue_268:

    #PM4ADDA.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0xFFFFFF8F0000001F # expected result
    pm4adda.b s9, s6, s7
    bne s9, s8, test_fail_269
    j test_continue_269
test_fail_269:
    la a0, test_name_269
    jal ra, report_error
test_continue_269:

    #PM4ADDASU.B
    li s6, 0x0103020104030201 # rs1
    li s7, 0x8003020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000008F0000001F # expected result
    pm4addasu.b s9, s6, s7
    bne s9, s8, test_fail_270
    j test_continue_270
test_fail_270:
    la a0, test_name_270
    jal ra, report_error
test_continue_270:

    #PM4ADDAU.B
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000008F0000001F # expected result
    pm4addau.b s9, s6, s7
    bne s9, s8, test_fail_271
    j test_continue_271
test_fail_271:
    la a0, test_name_271
    jal ra, report_error
test_continue_271:

    #PM4ADD.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s8, 0xFFFFFFFF80010001 #expected result
    pm4add.h s9, s6, s7
    bne s9, s8, test_fail_272
    j test_continue_272
test_fail_272:
    la a0, test_name_272
    jal ra, report_error
test_continue_272:

    #PM4ADDSU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s8, 0x0000000000000001 #expected result
    pm4addsu.h s9, s6, s7
    bne s9, s8, test_fail_273
    j test_continue_273
test_fail_273:
    la a0, test_name_273
    jal ra, report_error
test_continue_273:

    #PM4ADDU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s8, 0x0000000080000001 #expected result
    pm4addu.h s9, s6, s7
    bne s9, s8, test_fail_274
    j test_continue_274
test_fail_274:
    la a0, test_name_274
    jal ra, report_error
test_continue_274:

    #PM4ADDA.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s9, 0x0000000000000001 #rd
    li s8, 0xFFFFFFFF80010002 #expected result
    pm4adda.h s9, s6, s7
    bne s9, s8, test_fail_275
    j test_continue_275
test_fail_275:
    la a0, test_name_275
    jal ra, report_error
test_continue_275:

    #PM4ADDASU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x0000000000000002 #expected result
    pm4addasu.h s9, s6, s7
    bne s9, s8, test_fail_276
    j test_continue_276
test_fail_276:
    la a0, test_name_276
    jal ra, report_error
test_continue_276:

    #PM4ADDAU.H
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x80007FFF00020001 #rs2
    li s9, 0x0000000000000001 # rd
    li s8, 0x0000000080000002 #expected result
    pm4addau.h s9, s6, s7
    bne s9, s8, test_fail_277
    j test_continue_277
test_fail_277:
    la a0, test_name_277
    jal ra, report_error
test_continue_277:

    #PMULH.H.B0
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F80010001 #rs2
    li s8, 0x007FC0800000FFFF #expected result
    pmulh.h.b0 s9, s6, s7
    bne s9, s8, test_fail_278
    j test_continue_278
test_fail_278:
    la a0, test_name_278
    jal ra, report_error
test_continue_278:

    #PMULH.H.B1
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F01800100 #rs2
    li s8, 0x007FC0800000FFFF #expected result
    pmulh.h.b1 s9, s6, s7
    bne s9, s8, test_fail_279
    j test_continue_279
test_fail_279:
    la a0, test_name_279
    jal ra, report_error
test_continue_279:

    #PMULHSU.H.B0
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F01800001 #rs2
    li s8, 0x007FC0800008FFFF #expected result
    pmulhsu.h.b0 s9, s6, s7
    bne s9, s8, test_fail_280
    j test_continue_280
test_fail_280:
    la a0, test_name_280
    jal ra, report_error
test_continue_280:

    #PMULHSU.H.B1
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F8001017F #rs2
    li s8, 0x007FC0800008FFFF #expected result
    pmulhsu.h.b1 s9, s6, s7
    bne s9, s8, test_fail_281
    j test_continue_281
test_fail_281:
    la a0, test_name_281
    jal ra, report_error
test_continue_281:

    #PMHACC.H.B0
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F80010001 #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100010000 #expected result
    pmhacc.h.b0 s9, s6, s7
    bne s9, s8, test_fail_282
    j test_continue_282
test_fail_282:
    la a0, test_name_282
    jal ra, report_error
test_continue_282:

    #PMHACC.H.B1
    li s6, 0x7FFF80000001FFFF #rs1
    li s7, 0x01017F7F01000180 #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100010000 #expected result
    pmhacc.h.b1 s9, s6, s7
    bne s9, s8, test_fail_283
    j test_continue_283
test_fail_283:
    la a0, test_name_283
    jal ra, report_error
test_continue_283:

    #PMHACCSU.H.B0
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F01800001 #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100090000 #expected result
    pmhaccsu.h.b0 s9, s6, s7
    bne s9, s8, test_fail_284
    j test_continue_284
test_fail_284:
    la a0, test_name_284
    jal ra, report_error
test_continue_284:

    #PMHACCSU.H.B1
    li s6, 0x7FFF80000010FFFF #rs1
    li s7, 0x01017F7F8000017F #rs2
    li s9, 0x0001000100010001 #rd
    li s8, 0x0080C08100090000 #expected result
    pmhaccsu.h.b1 s9, s6, s7
    bne s9, s8, test_fail_285
    j test_continue_285
test_fail_285:
    la a0, test_name_285
    jal ra, report_error
test_continue_285:

    # PMULH.W.H0`
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    pmulh.w.h0 s9, s6, s7
    bne s9, s8, test_fail_286
    j test_continue_286
test_fail_286:
    la a0, test_name_286
    jal ra, report_error
test_continue_286:

    #PMULH.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    pmulh.w.h1 s9, s6, s7
    bne s9, s8, test_fail_287
    j test_continue_287
test_fail_287:
    la a0, test_name_287
    jal ra, report_error
test_continue_287:

    #PMULHSU.W.H0
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s8, 0x000000003FFF7FFF # expected result
    pmulhsu.w.h0 s9, s6, s7
    bne s9, s8, test_fail_288
    j test_continue_288
test_fail_288:
    la a0, test_name_288
    jal ra, report_error
test_continue_288:

    #PMULHSU.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s8, 0x000000003FFF7FFF # expected result
    pmulhsu.w.h1 s9, s6, s7
    bne s9, s8, test_fail_289
    j test_continue_289
test_fail_289:
    la a0, test_name_289
    jal ra, report_error
test_continue_289:

    ##PMHACC.W.H0
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s9, 0x0000000000000000 # rd
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    pmhacc.w.h0 s9, s6, s7
    bne s9, s8, test_fail_290
    j test_continue_290
test_fail_290:
    la a0, test_name_290
    jal ra, report_error
test_continue_290:

    #PMHACC.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000003FFF8000 # expected result
    pmhacc.w.h1 s9, s6, s7
    bne s9, s8, test_fail_291
    j test_continue_291
test_fail_291:
    la a0, test_name_291
    jal ra, report_error
test_continue_291:

    #PMHACCSU.W.H0
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000013FFF8000 # expected result
    pmhaccsu.w.h0 s9, s6, s7
    bne s9, s8, test_fail_292
    j test_continue_292
test_fail_292:
    la a0, test_name_292
    jal ra, report_error
test_continue_292:

    #PMHACCSU.W.H1
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000013FFF8000 # expected result
    pmhaccsu.w.h1 s9, s6, s7
    bne s9, s8, test_fail_293
    j test_continue_293
test_fail_293:
    la a0, test_name_293
    jal ra, report_error
test_continue_293:

    #PSSHL.HS
    li s6, 0xF23412347FFF0001 # rs1
    li s7, 0xFFFFFFFFFFFFFFFC # rs2
    li s8, 0x0F23012307FF0000 # expected result
    psshl.hs s9, s6, s7
    bne s9, s8, test_fail_294
    j test_continue_294
test_fail_294:
    la a0, test_name_294
    jal ra, report_error
test_continue_294:

    #PSSHLR.HS
    li s6, 0xF23912397FFF0009 # rs1
    li s7, 0xFFFFFFFFFFFFFFFC # rs2
    li s8, 0x0F24012408000001 # expected result
    psshlr.hs s9, s6, s7
    bne s9, s8, test_fail_295
    j test_continue_295
test_fail_295:
    la a0, test_name_295
    jal ra, report_error
test_continue_295:

    #PSSHL.WS
    li s6, 0x8000000912345678 # rs1
    li s7, 0xFFFFFFFFFFFFFFFC # rs2
    li s8, 0x0800000001234567 # expected result
    psshl.ws s9, s6, s7
    bne s9, s8, test_fail_296
    j test_continue_296
test_fail_296:
    la a0, test_name_296
    jal ra, report_error
test_continue_296:

    #PSSHLR.WS
    li s6, 0x8000000912345679 # rs1
    li s7, 0xFFFFFFFFFFFFFFFC # rs2
    li s8, 0x0800000101234568 # expected result
    psshlr.ws s9, s6, s7
    bne s9, s8, test_fail_297
    j test_continue_297
test_fail_297:
    la a0, test_name_297
    jal ra, report_error
test_continue_297:

    #SHL
    li s6, 0x123456789ABCDEF0 # rs1
    li s7, 0xFFFFFFFFFFFFFFFC # rs2
    li s8, 0x0123456789ABCDEF # expected result
    shl s9, s6, s7
    bne s9, s8, test_fail_298
    j test_continue_298
test_fail_298:
    la a0, test_name_298
    jal ra, report_error
test_continue_298:

    #SHLR
    li s6, 0x123456789ABCDEF8 # rs1
    li s7, 0xFFFFFFFFFFFFFFFC # rs2
    li s8, 0x0123456789ABCDF0 # expected result
    shlr s9, s6, s7
    bne s9, s8, test_fail_299
    j test_continue_299
test_fail_299:
    la a0, test_name_299
    jal ra, report_error
test_continue_299:

    #PNCLIPP.B
    li s6, 0xFF80FF7F0080007F # rs1
    li s7, 0x12348000FF7F00AA # rs2
    li s8, 0x7F80807F80807F7F # expected result
    pnclipp.b s9, s6, s7
    bne s9, s8, test_fail_300
    j test_continue_300
test_fail_300:
    la a0, test_name_300
    jal ra, report_error
test_continue_300:

    #PNCLIPUP.B
    li s6, 0x1FF000FF01000000 # rs1
    li s7, 0x00AA123400010100 # rs2
    li s8, 0xAAFF01FFFFFFFF00 # expected result
    pnclipup.b s9, s6, s7
    bne s9, s8, test_fail_301
    j test_continue_301
test_fail_301:
    la a0, test_name_301
    jal ra, report_error
test_continue_301:

    #PNCLIPP.H
    li s6, 0xFFFF800000007FFF # rs1
    li s7, 0x1234567880008000 # rs2
    li s8, 0x7FFF800080007FFF # expected result
    pnclipp.h s9, s6, s7
    bne s9, s8, test_fail_302
    j test_continue_302
test_fail_302:
    la a0, test_name_302
    jal ra, report_error
test_continue_302:

    #PNCLIPUP.H
    li s6, 0x0001FFFF00000001 # rs1
    li s7, 0x1234567800008000 # rs2
    li s8, 0xFFFF8000FFFF0001 # expected result
    pnclipup.h s9, s6, s7
    bne s9, s8, test_fail_303
    j test_continue_303
test_fail_303:
    la a0, test_name_303
    jal ra, report_error
test_continue_303:

    #PNCLIPP.W
    li s6, 0xFFFFFFFF80000000 # rs1
    li s7, 0x000000007FFFFFFF # rs2
    li s8, 0x7FFFFFFF80000000 # expected result
    pnclipp.w s9, s6, s7
    bne s9, s8, test_fail_304
    j test_continue_304
test_fail_304:
    la a0, test_name_304
    jal ra, report_error
test_continue_304:

    #PNCLIPUP.W
    li s6, 0x00000001FFFFFFFF # rs1
    li s7, 0x0000000000000001 # rs2
    li s8, 0x00000001FFFFFFFF # expected result
    pnclipup.w s9, s6, s7
    bne s9, s8, test_fail_305
    j test_continue_305
test_fail_305:
    la a0, test_name_305
    jal ra, report_error
test_continue_305:

    # prepare final status output
    beqz    s5, print_pass
    j       print_summary_fail

print_pass:
    li      s1, 0x10000000  # UART output register
    la      s2, pass
    addi    s3, s2, 8
    jal     ra, write_range
    j       forever
print_summary_fail:
    li      s1, 0x10000000  # UART output register
    la      s2, summary_fail
    addi    s3, s2, 16
    jal     ra, write_range
    j       forever
print_error:
    li      s1, 0x10000000  # UART output register
    la      s2, error
    addi    s3, s2, 7
    jal     ra, write_range
    j       forever

report_error:
    addi    sp, sp, -24
    sd      ra, 16(sp)
    sd      a0, 8(sp)
    addi    s5, s5, 1
    li      s1, 0x10000000  # UART output register
    la      s2, error_prefix
    addi    s3, s2, 6
    jal     ra, write_range
    ld      s2, 8(sp)
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
    ld      ra, 16(sp)
    addi    sp, sp, 24
    ret
write_range:
    lb      s4, 0(s2)       # load next byte at s2 into s4
    sb      s4, 0(s1)       # write byte to UART register
    addi    s2, s2, 1       # increase s2
    blt     s2, s3, write_range
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
  .string "PADD.H"

test_name_1:
  .string "PADD.HS"

test_name_2:
  .string "PADD.B"

test_name_3:
  .string "PADD.BS"

test_name_4:
  .string "PSUB.B"

test_name_5:
  .string "PSUB.H"

test_name_6:
  .string "PSADD.B"

test_name_7:
  .string "PSADD.H"

test_name_8:
  .string "PSADDU.B"

test_name_9:
  .string "PSADDU.H"

test_name_10:
  .string "PSSUB.B"

test_name_11:
  .string "PSSUB.H"

test_name_12:
  .string "PSSUBU.B"

test_name_13:
  .string "PSSUBU.H"

test_name_14:
  .string "PAADD.B"

test_name_15:
  .string "PAADD.H"

test_name_16:
  .string "PAADDU.B"

test_name_17:
  .string "PAADDU.H"

test_name_18:
  .string "PASUB.B"

test_name_19:
  .string "PASUB.H"

test_name_20:
  .string "PASUBU.B"

test_name_21:
  .string "PASUBU.H"

test_name_22:
  .string "PSABS.B"

test_name_23:
  .string "PABDSUMU.B"

test_name_24:
  .string "PABDSUMAU.B"

test_name_25:
  .string "PAS.HX"

test_name_26:
  .string "PSA.HX"

test_name_27:
  .string "PSAS.HX"

test_name_28:
  .string "PSSA.HX"

test_name_29:
  .string "PAAS.HX"

test_name_30:
  .string "PASA.HX"

test_name_31:
  .string "PSABS.H"

test_name_32:
  .string "PSH1ADD.H"

test_name_33:
  .string "PSSH1SADD.H"

test_name_34:
  .string "PABD.H"

test_name_35:
  .string "PABDU.H"

test_name_36:
  .string "PABD.B"

test_name_37:
  .string "PABDU.B"

test_name_38:
  .string "PREDSUM.HS"

test_name_39:
  .string "PREDSUMU.HS"

test_name_40:
  .string "PREDSUM.BS"

test_name_41:
  .string "PREDSUMU.BS"

test_name_42:
  .string "PADD.WS"

test_name_43:
  .string "PADD.W"

test_name_44:
  .string "PSUB.W"

test_name_45:
  .string "PSADD.W"

test_name_46:
  .string "PSADDU.W"

test_name_47:
  .string "PSSUB.W"

test_name_48:
  .string "PSSUBU.W"

test_name_49:
  .string "PAADD.W"

test_name_50:
  .string "PAADDU.W"

test_name_51:
  .string "PASUB.W"

test_name_52:
  .string "PASUBU.W"

test_name_53:
  .string "PSH1ADD.W"

test_name_54:
  .string "PSSH1SADD.W"

test_name_55:
  .string "PAS.WX"

test_name_56:
  .string "PSA.WX"

test_name_57:
  .string "PSAS.WX"

test_name_58:
  .string "PSSA.WX"

test_name_59:
  .string "PAAS.WX"

test_name_60:
  .string "PASA.WX"

test_name_61:
  .string "PREDSUM.WS"

test_name_62:
  .string "PREDSUMU.WS"

test_name_63:
  .string "PSLLI.B"

test_name_64:
  .string "PSLL.BS"

test_name_65:
  .string "PSRLI.B"

test_name_66:
  .string "PSRL.BS"

test_name_67:
  .string "PSRAI.B"

test_name_68:
  .string "PSRA.BS"

test_name_69:
  .string "PMIN.B"

test_name_70:
  .string "PMINU.B"

test_name_71:
  .string "PMAX.B"

test_name_72:
  .string "PMAXU.B"

test_name_73:
  .string "PMSEQ.B"

test_name_74:
  .string "PMSLT.B"

test_name_75:
  .string "PMSLTU.B"

test_name_76:
  .string "PSEXT.H.B"

test_name_77:
  .string "PSATI.H"

test_name_78:
  .string "PUSATI.H"

test_name_79:
  .string "PSLLI.H"

test_name_80:
  .string "PSLL.HS"

test_name_81:
  .string "PSRLI.H"

test_name_82:
  .string "PSRL.HS"

test_name_83:
  .string "PSRAI.H"

test_name_84:
  .string "PSRA.HS"

test_name_85:
  .string "PSSLAI.H"

test_name_86:
  .string "PSRARI.H"

test_name_87:
  .string "PSSHA.HS"

test_name_88:
  .string "PSSHAR.HS"

test_name_89:
  .string "PMIN.H"

test_name_90:
  .string "PMINU.H"

test_name_91:
  .string "PMAX.H"

test_name_92:
  .string "PMAXU.H"

test_name_93:
  .string "PMSEQ.H"

test_name_94:
  .string "PMSLT.H"

test_name_95:
  .string "PMSLTU.H"

test_name_96:
  .string "PSEXT.W.B"

test_name_97:
  .string "PSEXT.W.H"

test_name_98:
  .string "PSATI.W"

test_name_99:
  .string "PUSATI.W"

test_name_100:
  .string "PSLLI.W"

test_name_101:
  .string "PSLL.WS"

test_name_102:
  .string "PSRLI.W"

test_name_103:
  .string "PSRL.WS"

test_name_104:
  .string "PSRAI.W"

test_name_105:
  .string "PSRA.WS"

test_name_106:
  .string "PSSLAI.W"

test_name_107:
  .string "PSRARI.W"

test_name_108:
  .string "PSSHA.WS"

test_name_109:
  .string "PSSHAR.WS"

test_name_110:
  .string "PMIN.W"

test_name_111:
  .string "PMINU.W"

test_name_112:
  .string "PMAX.W"

test_name_113:
  .string "PMAXU.W"

test_name_114:
  .string "PMSEQ.W"

test_name_115:
  .string "PMSLT.W"

test_name_116:
  .string "PMSLTU.W"

test_name_117:
  .string "SATI.64"

test_name_118:
  .string "USATI_64"

test_name_119:
  .string "SRARI_64"

test_name_120:
  .string "SHA"

test_name_121:
  .string "SHAR"

test_name_122:
  .string "PPAIRE.B"

test_name_123:
  .string "PPAIREO.B"

test_name_124:
  .string "PPAIROE.B"

test_name_125:
  .string "PPAIRO.B"

test_name_126:
  .string "PPAIRE.H"

test_name_127:
  .string "PPAIREO.H"

test_name_128:
  .string "PPAIROE.H"

test_name_129:
  .string "PPAIRO.H"

test_name_130:
  .string "PPAIREO.W"

test_name_131:
  .string "PPAIROE.W"

test_name_132:
  .string "PPAIRO.W"

test_name_133:
  .string "ZIP8P"

test_name_134:
  .string "ZIP8HP"

test_name_135:
  .string "UNZIP8P"

test_name_136:
  .string "UNZIP8HP"

test_name_137:
  .string "ZIP16P"

test_name_138:
  .string "ZIP16HP"

test_name_139:
  .string "UNZIP16P"

test_name_140:
  .string "UNZIP16HP"

test_name_141:
  .string "ABS"

test_name_142:
  .string "CLS"

test_name_143:
  .string "REV"

test_name_144:
  .string "REV16"

test_name_145:
  .string "SLX"

test_name_146:
  .string "SRX"

test_name_147:
  .string "MVM"

test_name_148:
  .string "MVMN"

test_name_149:
  .string "MERGE"

test_name_150:
  .string "ABSW"

test_name_151:
  .string "CLSW"

test_name_152:
  .string "PMULH.H"

test_name_153:
  .string "PMULHR.H"

test_name_154:
  .string "PMULHSU.H"

test_name_155:
  .string "PMULHRSU.H"

test_name_156:
  .string "PMULHU.H"

test_name_157:
  .string "PMULHRU.H"

test_name_158:
  .string "PMULQ.H"

test_name_159:
  .string "PMULQR.H"

test_name_160:
  .string "PMHACC.H"

test_name_161:
  .string "PMHRACC.H"

test_name_162:
  .string "PMHACCSU.H"

test_name_163:
  .string "PMHRACCSU.H"

test_name_164:
  .string "PMHACCU.H"

test_name_165:
  .string "PMHRACCU.H"

test_name_166:
  .string "PMULH.W"

test_name_167:
  .string "PMULHR.W"

test_name_168:
  .string "PMULHSU.W"

test_name_169:
  .string "PMULHRSU.W"

test_name_170:
  .string "PMULHU.W"

test_name_171:
  .string "PMULHRU.W"

test_name_172:
  .string "PMULQ.W"

test_name_173:
  .string "PMULQR.W"

test_name_174:
  .string "PMHACC.W"

test_name_175:
  .string "PMHRACC.W"

test_name_176:
  .string "PMHACCSU.W"

test_name_177:
  .string "PMHRACCSU.W"

test_name_178:
  .string "PMHACCU.W"

test_name_179:
  .string "PMHRACCU.W"

test_name_180:
  .string "PMQACC.W.H00"

test_name_181:
  .string "PMQACC.W.H01"

test_name_182:
  .string "PMQACC.W.H11"

test_name_183:
  .string "PMQRACC.W.H00"

test_name_184:
  .string "PMQRACC.W.H01"

test_name_185:
  .string "PMQRACC.W.H11"

test_name_186:
  .string "PMQ2ADD.H"

test_name_187:
  .string "PMQ2ADDA.H"

test_name_188:
  .string "PMQR2ADD.H"

test_name_189:
  .string "PMQR2ADDA.H"

test_name_190:
  .string "MQACC.W00"

test_name_191:
  .string "MQACC.W01"

test_name_192:
  .string "MQACC.W11"

test_name_193:
  .string "MQRACC.W00"

test_name_194:
  .string "MQRACC.W01"

test_name_195:
  .string "MQRACC.W11"

test_name_196:
  .string "PMQ2ADD.W"

test_name_197:
  .string "PMQ2ADDA.W"

test_name_198:
  .string "PMQR2ADD.W"

test_name_199:
  .string "PMQR2ADDA.W"

test_name_200:
  .string "PMUL.H.B00"

test_name_201:
  .string "PMUL.H.B01"

test_name_202:
  .string "PMUL.H.B11"

test_name_203:
  .string "PMULSU.H.B00"

test_name_204:
  .string "PMULSU.H.B11"

test_name_205:
  .string "PMULU.H.B00"

test_name_206:
  .string "PMULU.H.B01"

test_name_207:
  .string "PMULU.H.B11"

test_name_208:
  .string "PMUL.W.H00"

test_name_209:
  .string "PMUL.W.H01"

test_name_210:
  .string "PMUL.W.H11"

test_name_211:
  .string "PMULSU.W.H00"

test_name_212:
  .string "PMULSU.W.H11"

test_name_213:
  .string "PMULU.W.H00"

test_name_214:
  .string "PMULU.W.H01"

test_name_215:
  .string "PMULU.W.H11"

test_name_216:
  .string "PMACC.W.H00"

test_name_217:
  .string "PMACC.W.H01"

test_name_218:
  .string "PMACC.W.H11"

test_name_219:
  .string "PMACCSU.W.H00"

test_name_220:
  .string "PMACCSU.W.H11"

test_name_221:
  .string "PMACCU.W.H00"

test_name_222:
  .string "PMACCU.W.H01"

test_name_223:
  .string "PMACCU.W.H11"

test_name_224:
  .string "PM2ADD.H"

test_name_225:
  .string "PM2ADDSU.H"

test_name_226:
  .string "PM2ADDU.H"

test_name_227:
  .string "PM2ADD.HX"

test_name_228:
  .string "PM2SADD.H"

test_name_229:
  .string "PM2SADD.HX"

test_name_230:
  .string "PM2SUB.H"

test_name_231:
  .string "PM2SUB.HX"

test_name_232:
  .string "PM2ADDA.H"

test_name_233:
  .string "PM2ADDASU.H"

test_name_234:
  .string "PM2ADDAU.H"

test_name_235:
  .string "PM2ADDA.HX"

test_name_236:
  .string "PM2SUBA.H"

test_name_237:
  .string "PM2SUBA.HX"

test_name_238:
  .string "MUL.W00"

test_name_239:
  .string "MUL.W01"

test_name_240:
  .string "MUL.W11"

test_name_241:
  .string "MULSU.W00"

test_name_242:
  .string "MULSU.W11"

test_name_243:
  .string "MULU.W00"

test_name_244:
  .string "MULU.W01"

test_name_245:
  .string "MULU.W11"

test_name_246:
  .string "MACC.W00"

test_name_247:
  .string "MACC.W01"

test_name_248:
  .string "MACC.W11"

test_name_249:
  .string "MACCSU.W00"

test_name_250:
  .string "MACCSU.W11"

test_name_251:
  .string "MACCU.W00"

test_name_252:
  .string "MACCU.W01"

test_name_253:
  .string "MACCU.W11"

test_name_254:
  .string "PM2ADD.W"

test_name_255:
  .string "PM2ADDSU.W"

test_name_256:
  .string "PM2ADDU.W"

test_name_257:
  .string "PM2ADD.WX"

test_name_258:
  .string "PM2SUB.W"

test_name_259:
  .string "PM2SUB.WX"

test_name_260:
  .string "PM2ADDA.W"

test_name_261:
  .string "PM2ADDASU.W"

test_name_262:
  .string "PM2ADDAU.W"

test_name_263:
  .string "PM2ADDA.WX"

test_name_264:
  .string "PM2SUBA.W"

test_name_265:
  .string "PM2SUBA.WX"

test_name_266:
  .string "PM4ADD.B"

test_name_267:
  .string "PM4ADDSU.B"

test_name_268:
  .string "PM4ADDU.B"

test_name_269:
  .string "PM4ADDA.B"

test_name_270:
  .string "PM4ADDASU.B"

test_name_271:
  .string "PM4ADDAU.B"

test_name_272:
  .string "PM4ADD.H"

test_name_273:
  .string "PM4ADDSU.H"

test_name_274:
  .string "PM4ADDU.H"

test_name_275:
  .string "PM4ADDA.H"

test_name_276:
  .string "PM4ADDASU.H"

test_name_277:
  .string "PM4ADDAU.H"

test_name_278:
  .string "PMULH.H.B0"

test_name_279:
  .string "PMULH.H.B1"

test_name_280:
  .string "PMULHSU.H.B0"

test_name_281:
  .string "PMULHSU.H.B1"

test_name_282:
  .string "PMHACC.H.B0"

test_name_283:
  .string "PMHACC.H.B1"

test_name_284:
  .string "PMHACCSU.H.B0"

test_name_285:
  .string "PMHACCSU.H.B1"

test_name_286:
  .string "PMULH.W.H0`"

test_name_287:
  .string "PMULH.W.H1"

test_name_288:
  .string "PMULHSU.W.H0"

test_name_289:
  .string "PMULHSU.W.H1"

test_name_290:
  .string "#PMHACC.W.H0"

test_name_291:
  .string "PMHACC.W.H1"

test_name_292:
  .string "PMHACCSU.W.H0"

test_name_293:
  .string "PMHACCSU.W.H1"

test_name_294:
  .string "PSSHL.HS"

test_name_295:
  .string "PSSHLR.HS"

test_name_296:
  .string "PSSHL.WS"

test_name_297:
  .string "PSSHLR.WS"

test_name_298:
  .string "SHL"

test_name_299:
  .string "SHLR"

test_name_300:
  .string "PNCLIPP.B"

test_name_301:
  .string "PNCLIPUP.B"

test_name_302:
  .string "PNCLIPP.H"

test_name_303:
  .string "PNCLIPUP.H"

test_name_304:
  .string "PNCLIPP.W"

test_name_305:
  .string "PNCLIPUP.W"

pass:
  .string "passed!\n"
error:
  .string "error!\n"
