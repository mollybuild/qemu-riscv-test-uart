.global _start

_start:
    # add16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xfe46000aff120006 # expected result
    add16 s9, s6, s7
    bne s9, s8, print_error

    # radd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7F230005ff890003# expected result
    radd16 s9, s6, s7
    bne s9, s8, print_error 

    # uradd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f230005Ff890003# expected result
    uradd16 s9, s6, s7
    bne s9, s8, print_error

    # kadd16
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7FFF000aFF128000 # expected result
    kadd16 s9, s6, s7
    bne s9, s8, print_error

    # ukadd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    ukadd16 s9, s6, s7
    bne s9, s8, print_error

    # sub16
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeeeffff00000002 # expected result
    sub16 s9, s6, s7
    bne s9, s8, print_error

    # rsub16
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF777FFFF00000001 # expected result
    rsub16 s9, s6, s7
    bne s9, s8, print_error

    # ursub16
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x7777FFFF00008001 # expected result
    ursub16 s9, s6, s7
    bne s9, s8, print_error

    # ksub16
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80007fff00000002 # expected result
    ksub16 s9, s6, s7
    bne s9, s8, print_error

    # uksub16
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x0001ffff0000ffff # expected result
    uksub16 s9, s6, s7
    bne s9, s8, print_error

    # cras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xfe460003ff12FFFF # expected result
    cras16 s9, s6, s7
    bne s9, s8, print_error

    # rcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7f230001ff897FFF # expected result
    rcras16 s9, s6, s7
    bne s9, s8, print_error

    # urcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7f230001ff89FFFF # expected result
    urcras16 s9, s6, s7
    bne s9, s8, print_error

    # kcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7fff0003ff127fff # expected result
    kcras16 s9, s6, s7
    bne s9, s8, print_error

    # ukcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xfe460003ffffffff # expected result
    ukcras16 s9, s6, s7
    bne s9, s8, print_error

    # add8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFE120006 # expected result
    add8 s9, s6, s7
    bne s9, s8, print_error
    
    # radd8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7F230005ff090003 # expected result
    radd8 s9, s6, s7
    bne s9, s8, print_error 

    # uradd8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f230005FF890003 # expected result
    uradd8 s9, s6, s7
    bne s9, s8, print_error

    # kadd8
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7F46000aFE128006 # expected result
    kadd8 s9, s6, s7
    bne s9, s8, print_error

    # ukadd8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    ukadd8 s9, s6, s7
    bne s9, s8, print_error

    # sub8
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeee00ff00000102 # expected result
    sub8 s9, s6, s7
    bne s9, s8, print_error

    # rsub8
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF7f700FF00000001 # expected result
    rsub8 s9, s6, s7
    bne s9, s8, print_error

    # ursub8
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x777700FF00008081 # expected result
    ursub8 s9, s6, s7
    bne s9, s8, print_error

    # ksub8
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80017fff00000102 # expected result
    ksub8 s9, s6, s7
    bne s9, s8, print_error

    # uksub8
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x01ffffff0000ffff # expected result
    uksub8 s9, s6, s7
    bne s9, s8, print_error

    # sra16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf0000fff00000222 # expected result
    sra16 s9, s6, s7
    bne s9, s8, print_error

    # srai16
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf0000fff00000222 # expected result
    srai16 s9, s6, 3
    bne s9, s8, print_error

    # sra16.u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf000100000000222 # expected result
    sra16.u s9, s6, s7
    bne s9, s8, print_error

    # srai16.u
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf000100000000222 # expected result
    srai16.u s9, s6, 3
    bne s9, s8, print_error

    # srl16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x10000fff00000222 # expected result
    srl16 s9, s6, s7
    bne s9, s8, print_error

    # srli16
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x10000fff00000222 # expected result
    srli16 s9, s6, 3
    bne s9, s8, print_error

    # srl16.u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x1000100000000222 # expected result
    srl16.u s9, s6, s7
    bne s9, s8, print_error

    # srli16.u
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x1000100000000222 # expected result
    srli16.u s9, s6, 3
    bne s9, s8, print_error

    # sll16
    li s6, 0xe0007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x0000fff800008888 # expected result
    sll16 s9, s6, s7
    bne s9, s8, print_error

    # slli16
    li s6, 0xe0007fff00001111 # rs1
    li s8, 0x0000fff800008888 # expected result
    slli16 s9, s6, 3
    bne s9, s8, print_error

    # ksll16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x80007fff00007fff # expected result
    ksll16 s9, s6, s7
    bne s9, s8, print_error

    # slli16
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x80007fff00007fff # expected result
    kslli16 s9, s6, 3
    bne s9, s8, print_error

    # kslra16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFe3 # rs2
    li s8, 0x80007fff00007fff # expected result
    kslra16 s9, s6, s7
    bne s9, s8, print_error

    # kslra16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0xf0000fff00000222 # expected result
    kslra16 s9, s6, s7
    bne s9, s8, print_error

    # kslra16_u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFe3 # rs2
    li s8, 0x80007fff00007fff # expected result
    kslra16.u s9, s6, s7
    bne s9, s8, print_error

    # kslra16_u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0xf000100000000222 # expected result
    kslra16.u s9, s6, s7
    bne s9, s8, print_error

    # sra8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0xfff10e0806040200 # expected result
    sra8 s9, s6, s7
    bne s9, s8, print_error

    # srai8
    li s6, 0xff88774433221100 # rs1
    li s8, 0xfff10e0806040200 # expected result
    srai8 s9, s6, 3
    bne s9, s8, print_error

    # sra8.u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0x00f10f0906040200 # expected result
    sra8.u s9, s6, s7
    bne s9, s8, print_error

    # srai8.u
    li s6, 0xff88774433221100 # rs1
    li s8, 0x00f10f0906040200 # expected result
    srai8.u s9, s6, 3
    bne s9, s8, print_error

    # srl8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0x1f110e0806040200 # expected result
    srl8 s9, s6, s7
    bne s9, s8, print_error

    # srli8
    li s6, 0xff88774433221100 # rs1
    li s8, 0x1f110e0806040200 # expected result
    srli8 s9, s6, 3
    bne s9, s8, print_error

    # srl8.u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0x20110f0906040200 # expected result
    srl8.u s9, s6, s7
    bne s9, s8, print_error

    # srli8.u
    li s6, 0xff88774433221100 # rs1
    li s8, 0x20110f0906040200 # expected result
    srli8.u s9, s6, 3
    bne s9, s8, print_error

    # sll8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0xf840B82098108800 # expected result
    sll8 s9, s6, s7
    bne s9, s8, print_error

    # slli8
    li s6, 0xff88774433221100 # rs1
    li s8, 0xf840B82098108800 # expected result
    slli8 s9, s6, 3
    bne s9, s8, print_error

    # ksll8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0xf8807f7f7f7f7f00 # expected result
    ksll8 s9, s6, s7
    bne s9, s8, print_error

    # kslli8
    li s6, 0xff88774433221100 # rs1
    li s8, 0xf8807f7f7f7f7f00 # expected result
    kslli8 s9, s6, 3
    bne s9, s8, print_error

    # kslra8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf8807f7f7f7f7f00 # expected result
    kslra8 s9, s6, s7
    bne s9, s8, print_error

    # kslra8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0xfff10e0806040200 # expected result
    kslra8 s9, s6, s7
    bne s9, s8, print_error

    # kslra8_u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf8807f7f7f7f7f00 # expected result
    kslra8.u s9, s6, s7
    bne s9, s8, print_error

    # kslra8_u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0x00f10f0906040200 # expected result
    kslra8.u s9, s6, s7
    bne s9, s8, print_error

    # cmpeq16
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFF0000FFFF0000 # expected result
    cmpeq16 s9, s6, s7
    bne s9, s8, print_error

    # scmplt16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    scmplt16 s9, s6, s7
    bne s9, s8, print_error

    # scmple16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFFFFFFFFFF # expected result
    scmple16 s9, s6, s7
    bne s9, s8, print_error

    # ucmplt16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    scmplt16 s9, s6, s7
    bne s9, s8, print_error

    # ucmple16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFFFFFFFFFF # expected result
    scmple16 s9, s6, s7
    bne s9, s8, print_error

    # cmpeq8
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFFFF00FFFF00FF # expected result
    cmpeq8 s9, s6, s7
    bne s9, s8, print_error

    # scmplt8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    scmplt8 s9, s6, s7
    bne s9, s8, print_error

    # scmple8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0xFF00FFFFFFFFFFFF # expected result
    scmple8 s9, s6, s7
    bne s9, s8, print_error

    # ucmplt8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    scmplt8 s9, s6, s7
    bne s9, s8, print_error

    # ucmple8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0xFF00FFFFFFFFFFFF # expected result
    scmple8 s9, s6, s7
    bne s9, s8, print_error

    # smul16
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x014b5a90FFFFFFFF # expected result
    smul16 s10, s6, s7
    bne s10, s8, print_error

    # smulx16
    li s6, 0xFFFFFFFF1234FFFF # rs1
    li s7, 0xFFFFFFFF00011234 # rs2
    li s8, 0x014b5a90FFFFFFFF # expected result
    smulx16 s10, s6, s7
    bne s10, s8, print_error

    # umul16
    li s6, 0xFFFFFFFF1234FFFF # rs1
    li s7, 0xFFFFFFFF12340001 # rs2
    li s10, 0x014b5a900000FFFF # expected result
    umul16 s8, s6, s7
    bne s10, s8, print_error

    # umulx16
    li s6, 0xFFFFFFFF1234FFFF # rs1
    li s7, 0xFFFFFFFF00011234 # rs2
    li s10, 0x014b5a900000FFFF # expected result
    umulx16 s8, s6, s7
    bne s10, s8, print_error

    # khm16
    li s6, 0x7FFF00017FFF0001 # rs1
    li s7, 0x8000FFFF8000FFFF # rs2
    li s10, 0x8001ffff8001ffff # expected result
    khm16 s8, s6, s7
    bne s10, s8, print_error

    # khmx16
    li s6, 0x7FFF00017FFF0001 # rs1
    li s7, 0xFFFF8000FFFF8000 # rs2
    li s10, 0x8001ffff8001ffff # expected result
    khmx16 s8, s6, s7
    bne s10, s8, print_error

    # smul8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x01440a900000FFFF # expected result
    smul8 s10, s6, s7
    bne s10, s8, print_error

    # smulx8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF34120100 # rs2
    li s8, 0x01440a900000FFFF # expected result
    smulx8 s10, s6, s7
    bne s10, s8, print_error

    # umul8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x01440a90000000FF # expected result
    umul8 s10, s6, s7
    bne s10, s8, print_error

    # umulx8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF34120100 # rs2
    li s8, 0x01440a90000000FF # expected result
    umulx8 s10, s6, s7
    bne s10, s8, print_error

    # khm8
    li s6, 0x807F0001807F0001 # rs1
    li s7, 0x8080FFFF8080FFFF # rs2
    li s10, 0x7F8100ff7F8100ff # expected result
    khm8 s8, s6, s7
    bne s10, s8, print_error

    # smin16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    smin16 s8, s6, s7
    bne s10, s8, print_error

    # umin16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    umin16 s8, s6, s7
    bne s10, s8, print_error

    # smax16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    smax16 s8, s6, s7
    bne s10, s8, print_error

    # umax16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    umax16 s8, s6, s7
    bne s10, s8, print_error

    # sclip16
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000FFFF0000FFFF0 # rs1
    sclip16 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip16
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000F0000000F0000 # rs1
    uclip16 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs16
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x00007FFF00017FFF # rs1
    kabs16 s9, s6
    bne s9, s8, print_error

    # clrs16
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x000B0000000F0000 # rs1
    clrs16 s9, s6
    bne s9, s8, print_error

    # clz16
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x000C000100000000 # rs1
    clz16 s9, s6
    bne s9, s8, print_error

    # smin8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000001 # expected result
    smin8 s8, s6, s7
    bne s10, s8, print_error

    # umin8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000001 # expected result
    umin8 s8, s6, s7
    bne s10, s8, print_error

    # smax8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000002 # expected result
    smax8 s8, s6, s7
    bne s10, s8, print_error

    # umax8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000002 # expected result
    umax8 s8, s6, s7
    bne s10, s8, print_error

    # sclip8
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000FFFF00FFFF000 # expected result
    sclip8 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip8
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000F00000F000000 # expected result
    uclip8 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs8
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x00007F0101017F00 # expected result
    kabs8 s9, s6
    bne s9, s8, print_error

    # clrs8
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x0703000707070007 # expected result
    clrs8 s9, s6
    bne s9, s8, print_error

    # clz8
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x0804010000000008 # expected result
    clz8 s9, s6
    bne s9, s8, print_error

    # sunpkd810
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0xFFF5FFF4FFF10000 # expected result
    sunpkd810 s9, s6
    bne s9, s8, print_error

    # sunpkd820
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0066FFF4FFF20000 # expected result
    sunpkd820 s9, s6
    bne s9, s8, print_error

    # sunpkd830
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0077FFF400330000 # expected result
    sunpkd830 s9, s6
    bne s9, s8, print_error

    # sunpkd831
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0077FFF50033FFF1 # expected result
    sunpkd831 s9, s6
    bne s9, s8, print_error

    # sunpkd832
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x007700660033FFF2 # expected result
    sunpkd832 s9, s6
    bne s9, s8, print_error

    # zunpkd810
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x00F500F400F10000 # expected result
    zunpkd810 s9, s6
    bne s9, s8, print_error

    # zunpkd820
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x006600F400F20000 # expected result
    zunpkd820 s9, s6
    bne s9, s8, print_error

    # zunpkd830
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x007700F400330000 # expected result
    zunpkd830 s9, s6
    bne s9, s8, print_error

    # zunpkd831
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x007700F5003300F1 # expected result
    zunpkd831 s9, s6
    bne s9, s8, print_error

    # zunpkd832
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x00770066003300F2 # expected result
    zunpkd832 s9, s6
    bne s9, s8, print_error  

    # pkbb16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x3333777711115555 # expected result
    pkbb16 s9, s6, s7
    bne s9, s8, print_error

    # pkbt16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x3333888811116666 # expected result
    pkbt16 s9, s6, s7
    bne s9, s8, print_error

    # pktb16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x4444777722225555 # expected result
    pktb16 s9, s6, s7
    bne s9, s8, print_error

    # pktt16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs2
    li s8, 0x4444888822226666 # expected result
    pktt16 s9, s6, s7
    bne s9, s8, print_error

    # smmul
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFF3FFFFFFF # expected result
    smmul s9, s6, s7
    bne s9, s8, print_error

    # smmul_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0x000000003FFFFFFF # expected result
    smmul.u s9, s6, s7
    bne s9, s8, print_error

    # kmmac
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7FFFFFFF40000000 # expected result
    kmmac s9, s6, s7
    bne s9, s8, print_error

    # kmmac_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000000140000000 # expected result
    kmmac.u s9, s6, s7
    bne s9, s8, print_error

    # kwmmul
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFF7FFFFFFE # expected result
    kwmmul s9, s6, s7
    bne s9, s8, print_error

    # kwmmul_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0x000000007FFFFFFE # expected result
    kwmmul.u s9, s6, s7
    bne s9, s8, print_error

    # smmwb
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    smmwb s9, s6, s7
    bne s9, s8, print_error

    # smmwb_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s8, 0x000000003FFF8000 # expected result
    smmwb.u s9, s6, s7
    bne s9, s8, print_error

    # smmwt
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s8, 0xFFFFFFFF3FFF7FFF # expected result
    smmwt s9, s6, s7
    bne s9, s8, print_error

    # smmwt_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s8, 0x000000003FFF8000 # expected result
    smmwt.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawb
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7FFFFFFF3FFF8000 # expected result
    kmmawb s9, s6, s7
    bne s9, s8, print_error

    # kmmawb_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0x0000FFFF00007FFF # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000013FFF8001 # expected result
    kmmawb.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawt
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7FFFFFFF3FFF8000 # expected result
    kmmawt s9, s6, s7
    bne s9, s8, print_error

    # kmmawt_u
    li s6, 0x000000017FFFFFFF # rs1
    li s7, 0xFFFF00007FFF0000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x000000013FFF8001 # expected result
    kmmawt.u s9, s6, s7
    bne s9, s8, print_error

    # kmmwb2
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x00007FFF00008000 # rs2
    li s8, 0x7ffeffff7fffffff # expected result
    kmmwb2 s9, s6, s7
    bne s9, s8, print_error

    # kmmwb2_u
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x00007FFF00008000 # rs2
    li s8, 0x7ffeffff7fffffff # expected result
    kmmwb2.u s9, s6, s7
    bne s9, s8, print_error

    # kmmwt2
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x7FFF000080000000 # rs2
    li s8, 0x7ffeffff7fffffff # expected result
    kmmwt2 s9, s6, s7
    bne s9, s8, print_error

    # kmmwt2_u
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x7FFF000080000000 # rs2
    li s8, 0x7ffeffff7fffffff # expected result
    kmmwt2.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawb2
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x00007FFF00008000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7fff00007fffffff # expected result
    kmmawb2 s9, s6, s7
    bne s9, s8, print_error

    # kmmawb2_u
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x00007FFF00008000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7fff00007fffffff # expected result
    kmmawb2.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawt2
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x7FFF000080000000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7fff00007fffffff # expected result
    kmmawt2 s9, s6, s7
    bne s9, s8, print_error

    # kmmawt2_u
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0x7FFF000080000000 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x7fff00007fffffff # expected result
    kmmawt2.u s9, s6, s7
    bne s9, s8, print_error

    # smbb16
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0xFFFF7FFF0000FFFF # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    smbb16 s9, s6, s7
    bne s9, s8, print_error

    # smbt16
    li s6, 0xFFFF7FFFFFFF0001 # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    smbt16 s9, s6, s7
    bne s9, s8, print_error

    # smtt16
    li s6, 0x7FFFFFFF0001FFFF # rs1
    li s7, 0x7FFFFFFFFFFF0000 # rs2
    li s8, 0x3FFF0001FFFFFFFF # expected result
    smtt16 s9, s6, s7
    bne s9, s8, print_error

    # kmda
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x3FFF000200000000 # expected result
    kmda s9, s6, s7
    bne s9, s8, print_error

    # kmxda
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x3FFF000200000000 # expected result
    kmxda s9, s6, s7
    bne s9, s8, print_error

    # smds
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x00017FFF0001FFFF # rs2
    li s8, 0x0000000000000002 # expected result
    smds s9, s6, s7
    bne s9, s8, print_error

    # smdrs
    li s6, 0x00017FFF00010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s8, 0x0000000000000002 # expected result
    smdrs s9, s6, s7
    bne s9, s8, print_error

    # smxds
    li s6, 0x7FFF000100010001 # rs1
    li s7, 0x7FFF0001FFFF0001 # rs2
    li s8, 0x0000000000000002 # expected result
    smxds s9, s6, s7
    bne s9, s8, print_error

    # kmabb
    li s6, 0xFFFF7FFFFFFF7FFF # rs1
    li s7, 0xFFFF7FFFFFFF7FFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x7FFFFFFF7FFFFFFF # expected result
    kmabb s9, s6, s7
    bne s9, s8, print_error

    # kmabb
    li s6, 0xFFFF7FFFFFFF7FFF # rs1
    li s7, 0xFFFF8000FFFF8000 # rs2
    li s9, 0x8000000080000000 # rd
    li s8, 0x8000000080000000 # expected result
    kmabb s9, s6, s7
    bne s9, s8, print_error

    # kmabt
    li s6, 0xFFFF7FFFFFFF7FFF # rs1
    li s7, 0x7FFFFFFF7FFFFFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x7FFFFFFF7FFFFFFF # expected result
    kmabt s9, s6, s7
    bne s9, s8, print_error

    # kmatt
    li s6, 0x7FFFFFFF7FFFFFFF # rs1
    li s7, 0x7FFFFFFF7FFFFFFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x7FFFFFFF7FFFFFFF # expected result
    kmatt s9, s6, s7
    bne s9, s8, print_error

    # kmada
    li s6, 0x7FFF7FFF7FFF7FFF # rs1
    li s7, 0x7FFF7FFF7FFF7FFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x7FFFFFFF7FFFFFFF # expected result
    kmada s9, s6, s7
    bne s9, s8, print_error

    # kmaxda
    li s6, 0x7FFF7FFF7FFF7FFF # rs1
    li s7, 0x7FFF7FFF7FFF7FFF # rs2
    li s9, 0x7FFFFFFF7FFFFFFF # rd
    li s8, 0x7FFFFFFF7FFFFFFF # expected result
    kmaxda s9, s6, s7
    bne s9, s8, print_error

    # smal
    li s6, 0x0000000000000001 # rs1
    li s7, 0x0004000300020001 # rs2
    li s8, 0x000000000000000F # rsd
    smal s9, s6, s7
    bne s9, s8, print_error

    # stas16
    li s6, 0x0008000700060000 # rs2
    li s7, 0x0004000300020001 # rs1
    li s8, 0x000c00040008ffff # rsd
    stas16 s9, s6, s7
    bne s9, s8, print_error

    # stsa16
    li s6, 0x0007000800000006 # rs2
    li s7, 0x0003000400010002 # rs1
    li s8, 0x0004000cffff0008 # rsd
    stsa16 s9, s6, s7
    bne s9, s8, print_error

    # sclip32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x0000000FFFFFFFF0 # rs1
    sclip32 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x0000000F00000000 # rs1
    uclip32 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # clrs32
    li s6, 0x000FFFFFFFFF8000 # rs1
    li s8, 0x0000000B00000010 # expected result
    clrs32 s9, s6
    bne s9, s8, print_error

    # clz32
    li s6, 0x000FFFFFFFFF8000 # rs1
    li s8, 0x0000000C00000000 # expected result
    clz32 s9, s6
    bne s9, s8, print_error

    # pbsad
    li s6, 0x0000000100000001 # rs1
    li s7, 0x0001000000010000 # rs2
    li s8, 0x0000000000000004 # expected result
    pbsad s9, s6, s7
    bne s9, s8, print_error

    # pbsada
    li s6, 0x0000000100000001 # rs1
    li s7, 0x0001000000010000 # rs2
    li s9, 1 # rd
    li s8, 0x0000000000000005 # expected result
    pbsada s9, s6, s7
    bne s9, s8, print_error

    # smaqa
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0xFFFFFF8F0000001F # expected result
    smaqa s9, s6, s7
    bne s9, s8, print_error

    # umaqa
    li s6, 0x8003020104030201 # rs1
    li s7, 0x0103020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000008F0000001F # expected result
    umaqa s9, s6, s7
    bne s9, s8, print_error

    # smaqa_su
    li s6, 0x0103020104030201 # rs1
    li s7, 0x8003020104030201 # rs2
    li s9, 0x0000000100000001 # rd
    li s8, 0x0000008F0000001F # expected result
    smaqa.su s9, s6, s7
    bne s9, s8, print_error

    # radd64
    li s6, 0x7fffffffffffffff
    li s7, 0x0000000000000001
    li s8, 0x4000000000000000
    radd64 s9, s6, s7
    bne s9, s8, print_error

    # uradd64
    li s6, 0xffffffffffffffff
    li s7, 0x0000000000000001
    li s8, 0x8000000000000000
    uradd64 s9, s6, s7
    bne s9, s8, print_error

    # kadd64
    li s6, 0x7fffffffffffffff
    li s7, 0x0000000000000001
    li s8, 0x7fffffffffffffff
    kadd64 s9, s6, s7
    bne s9, s8, print_error

    # ukadd64
    li s6, 0xffffffffffffffff
    li s7, 0x0000000000000001
    li s8, 0xffffffffffffffff
    ukadd64 s9, s6, s7
    bne s9, s8, print_error

    # ursub64
    li s6, 0x0000000000000000
    li s7, 0x0000000000000001
    li s8, 0xffffffffffffffff
    ursub64 s9, s6, s7
    bne s9, s8, print_error

    # ksub64
    li s6, 0x8000000000000000
    li s7, 0x0000000000000001
    li s8, 0x8000000000000000
    ksub64 s9, s6, s7
    bne s9, s8, print_error

    # uksub64
    li s6, 0x0000000000000000
    li s7, 0x0000000000000001
    li s8, 0x0000000000000000
    uksub64 s9, s6, s7
    bne s9, s8, print_error

    # smar64
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x1111111111111111
    li s8, 0x1111111111111116
    smar64 s9, s6, s7;
    bne s9, s8, print_error

    # smsr64
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x1111111111111111
    li s8, 0x111111111111110c
    smsr64 s9, s6, s7;
    bne s9, s8, print_error

    # kmar64
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x7FFFFFFFFFFFFFFF
    li s8, 0x7FFFFFFFFFFFFFFF
    kmar64 s9, s6, s7;
    bne s9, s8, print_error

    # kmsr64
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x8000000000000000
    li s8, 0x8000000000000000
    kmsr64 s9, s6, s7;
    bne s9, s8, print_error

    # ukmar64
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0xFFFFFFFFFFFFFFFF
    li s8, 0xFFFFFFFFFFFFFFFF
    ukmar64 s9, s6, s7;
    bne s9, s8, print_error

    # ukmsr64
    li s6, 0x0000000200000001
    li s7, 0x0000000200000001
    li s9, 0x0000000000000000
    li s8, 0xFFFFFFFFFFFFFFFF
    ukmsr64 s9, s6, s7;
    bne s9, s8, print_error

    # smalbb
    li s6, 0x0004000100020002
    li s7, 0x0001000300010004
    li s9, 0xF000000000000000
    li s8, 0xF00000000000000B
    smalbb s9, s6, s7;
    bne s9, s8, print_error

    # smalbt
    li s6, 0x0004000100020002
    li s7, 0x0001000300010004
    li s9, 0xF000000000000000
    li s8, 0xF000000000000003
    smalbt s9, s6, s7;
    bne s9, s8, print_error

    # smaltt
    li s6, 0x0004000100020002
    li s7, 0x0001000300010004
    li s9, 0xF000000000000000
    li s8, 0xF000000000000006
    smaltt s9, s6, s7;
    bne s9, s8, print_error

    # kaddh
    li s6, 0xFFFFFFFFFFFF8000
    li s7, 0xFFFFFFFFFFFF8000
    li s8, 0xFFFFFFFFFFFF8000
    kaddh s9, s6, s7
    bne s9, s8, print_error

    # ksubh
    li s6, 0xFFFFFFFFFFFF8000
    li s7, 0x0000000000007fff
    li s8, 0xFFFFFFFFFFFF8000
    ksubh s9, s6, s7
    bne s9, s8, print_error

    # khmbb
    li s6, 0x0000000000007FFF
    li s7, 0x0000000000007FFF
    li s8, 0x0000000000007FFE
    khmbb s9, s6, s7
    bne s9, s8, print_error

    # khmbb
    li s6, 0x0000000000008000
    li s7, 0x0000000000008000
    li s8, 0x0000000000007FFF
    khmbb s9, s6, s7
    bne s9, s8, print_error

    # khmbt
    li s6, 0x0000000000007FFF
    li s7, 0x000000007FFF0000
    li s8, 0x0000000000007FFE
    khmbt s9, s6, s7
    bne s9, s8, print_error

    # khmtt
    li s6, 0x000000007FFF0000
    li s7, 0x000000007FFF0000
    li s8, 0x0000000000007FFE
    khmtt s9, s6, s7
    bne s9, s8, print_error

    # ukaddh
    li s6, 0xFFFFFFFFFFFFFFFF
    li s7, 0xFFFFFFFFFFFFFFFF
    li s8, 0xFFFFFFFFFFFFFFFF
    ukaddh s9, s6, s7
    bne s9, s8, print_error

    # uksubh
    li s6, 0xFFFFFFFFFFFF0000
    li s7, 0x0000000000000001
    li s8, 0xFFFFFFFFFFFFFFFF
    uksubh s9, s6, s7
    bne s9, s8, print_error

    # kaddw
    li s6, 0x0000000080000000
    li s7, 0x0000000080000000
    li s8, 0xFFFFFFFF80000000
    kaddw s9, s6, s7
    bne s9, s8, print_error

    # kaddw
    li s6, 0x000000007FFFFFFF
    li s7, 0x000000007FFFFFFF
    li s8, 0x000000007FFFFFFF
    kaddw s9, s6, s7
    bne s9, s8, print_error

    # ukaddw
    li s6, 0x00000000FFFFFFF
    li s7, 0x00000000FFFFFFFF
    li s8, 0xFFFFFFFFFFFFFFFF
    ukaddw s9, s6, s7
    bne s9, s8, print_error

    # ksbuw
    li s6, 0x0000000080000000
    li s7, 0x000000007FFFFFFF
    li s8, 0xFFFFFFFF80000000
    ksubw s9, s6, s7
    bne s9, s8, print_error

    # uksbuw
    li s6, 0x0000000000000000
    li s7, 0x0000000000000001
    li s8, 0xFFFFFFFFFFFFFFFF
    uksubw s9, s6, s7
    bne s9, s8, print_error

    # kdmbb
    li s6, 0x0000000000008000
    li s7, 0x0000000000008000
    li s8, 0x000000007FFFFFFF
    kdmbb s9, s6, s7
    bne s9, s8, print_error

    # kdmbt
    li s6, 0x0000000000007FFF
    li s7, 0x000000007FFF0000
    li s8, 0x000000007FFE0002
    kdmbt s9, s6, s7
    bne s9, s8, print_error

    # kdmbt
    li s6, 0x0000000000008000
    li s7, 0x000000007FFF0000
    li s8, 0xFFFFFFFF80010000
    kdmbt s9, s6, s7
    bne s9, s8, print_error

    # kdmtt
    li s6, 0x000000007FFF0000
    li s7, 0x000000007FFF0000
    li s8, 0x000000007FFE0002
    kdmtt s9, s6, s7
    bne s9, s8, print_error

    # kslraw
    li s6, 0x000000008FFF0000
    li s7, 0x000000000000001F # 31
    li s8, 0xffffffff80000000
    kslraw s9, s6, s7
    bne s9, s8, print_error

    # kslraw
    li s6, 0x000000008FFF0000
    li s7, 0x0000000000000020 # -32 (-31)
    li s8, 0xFFFFFFFFFFFFFFFF
    kslraw s9, s6, s7
    bne s9, s8, print_error

    # ksllw
    li s6, 0x000000000000000F
    li s7, 0x000000000000000F # 15
    li s8, 0x0000000000078000
    ksllw s9, s6, s7
    bne s9, s8, print_error

    # kslliw
    li s6, 0x000000000000000F
    li s8, 0x0000000000078000
    kslliw s9, s6, 15
    bne s9, s8, print_error

    # kdmabb
    li s6, 0x0000000000007FFF
    li s7, 0x0000000000007FFF
    li s9, 0x0000000000000001
    li s8, 0x000000007FFE0003
    kdmabb s9, s6, s7
    bne s9, s8, print_error

    # kdmabt
    li s6, 0x0000000000007FFF
    li s7, 0x000000007FFF0000
    li s9, 0x0000000000000001
    li s8, 0x000000007FFE0003
    kdmabt s9, s6, s7
    bne s9, s8, print_error

    # kdmatt
    li s6, 0x000000007FFF0000
    li s7, 0x000000007FFF0000
    li s9, 0x0000000000000001
    li s8, 0x000000007FFE0003
    kdmatt s9, s6, s7
    bne s9, s8, print_error

    # kabsw
    li s6, 0x00000000FFFFFFFF
    li s8, 0x0000000000000001
    kabsw s9, s6
    bne s9, s8, print_error

    # raddw
    li s6, 0x0000000040000000
    li s7, 0x0000000080000000
    li s8, 0xffffffffe0000000
    raddw s9, s6, s7
    bne s9, s8, print_error

    # uraddw
    li s6, 0x0000000040000000
    li s7, 0x0000000080000000
    li s8, 0x0000000060000000
    uraddw s9, s6, s7
    bne s9, s8, print_error

    # rsubw
    li s6, 0x0000000080000000
    li s7, 0x0000000040000000
    li s8, 0xffffffffa0000000
    rsubw s9, s6, s7
    bne s9, s8, print_error

    # ursubw
    li s6, 0x0000000080000000
    li s7, 0x0000000040000000
    li s8, 0x0000000020000000
    ursubw s9, s6, s7
    bne s9, s8, print_error

    # mulr64
    li s6, 0x000000007fffffff
    li s7, 0x0000000080000000
    li s8, 0x3FFFFFFF80000000
    mulr64 s10, s6, s7
    bne s10, s8, print_error

    # mulsr64
    li s6, 0x000000007fffffff
    li s7, 0x0000000080000000
    li s8, 0xC000000080000000
    mulsr64 s10, s6, s7
    bne s10, s8, print_error

    # test64.s:1433: Error: unrecognized opcode `maxw s10,s6,s7'
    # teset64.s:1434: Error: unrecognized opcode `mminw s10,s6,s7'
    # maxw s10, s6, s7
    # mminw s10, s6, s7

    # ave
    li s6, 0x7FFFFFFFFFFFFFFF
    li s7, 0x7FFFFFFFFFFFFFFF
    li s8, 0x7FFFFFFFFFFFFFFF
    ave s9, s6, s7
    bne s9, s8, print_error

    # sra_u
    li s6, 0x7FFFFFFFFFFFFFFF
    li s7, 0x00000000000000E3
    li s8, 0x1000000000000000
    sra.u s9, s6, s7
    bne s9, s8, print_error

    # sra_u
    li s6, 0x8000000000000000
    li s7, 0x00000000000000E3
    li s8, 0xF000000000000000
    sra.u s9, s6, s7
    bne s9, s8, print_error

    # bitrev
    li s6, 0x1234567812345678
    li s7, 0x00000000000000FF
    li s8, 0x1E6A2C481E6A2C48
    bitrev s9, s6, s7
    bne s9, s8, print_error

    # bitrevi
    li s6, 0x1234567812345678
    li s8, 0x1E6A2C481E6A2C48
    bitrevi s9, s6, 63
    bne s9, s8, print_error

    # wext
    li s6, 0x9abcdef112345678
    li s7, 0x00000000000000FF
    li s8, 0x000000003579BDE2
    wext s9, s6, s7
    bne s9, s8, print_error

    # wexti
    li s6, 0x9abcdef112345678
    li s8, 0x000000003579BDE2
    wexti s9, s6, 31
    bne s9, s8, print_error

    # cmix
    li s6, 0x1111111111111111
    li s8, 0xf0f0f0f0f0f0f0f0
    li s7, 0x2222222222222222
    li s10, 0x1212121212121212
    cmix s9, s8, s6, s7
    bne s9, s10, print_error

    # insb
    li s7, 0x2222222222222222
    li s8, 0x2211111111111111
    li s9, 0x1111111111111111
    insb s9, s7, 7
    bne s9, s8, print_error

    # maddr32
    li s6, 0xFFFFFFFF80000001
    li s7, 0xFFFFFFFF00000001
    li s9, 0xFFFFFFFF00000001
    li s8, 0xFFFFFFFF80000002
    maddr32 s9, s6, s7
    bne s9, s8, print_error

    # max
    li s6, 0x8000000000000000
    li s7, 0x8000000000000001
    li s9, 0x8000000000000001
    max s8, s6, s7
    bne s9, s8, print_error

    # add32
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFFe46FFFFff12 # expected result
    add32 s9, s6, s7
    bne s9, s8, print_error

    # radd32
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFff23FFFFff89 # expected result
    radd32 s9, s6, s7
    bne s9, s8, print_error 

    # uradd32
    li s6, 0xFFFFFF12FFFFFF78 # rs1
    li s7, 0xFFFFFF34FFFFFF9a # rs2
    li s8, 0xFFFFFf23FFFFFF89 # expected result
    uradd32 s9, s6, s7
    bne s9, s8, print_error

    # kadd32
    li s6, 0x800000007FFFFFFF # rs1
    li s7, 0x800000007FFFFFFF # rs2
    li s8, 0x800000007FFFFFFF # expected result
    kadd32 s9, s6, s7
    bne s9, s8, print_error

    # ukadd32
    li s6, 0xFFFFFFFF7FFFFFFF # rs1
    li s7, 0xFFFFFFFF7FFFFFFF # rs2
    li s8, 0xFFFFFFFFFFFFFFFE # expected result
    ukadd32 s9, s6, s7
    bne s9, s8, print_error

    # sub32
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xffffffff00000002 # expected result
    sub32 s9, s6, s7
    bne s9, s8, print_error

    # rsub32
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xFFFFFFFF00000001 # expected result
    rsub32 s9, s6, s7
    bne s9, s8, print_error

    # ursub32
    li s6, 0x0000000000000001 # rs1
    li s7, 0x00000001FFFFFFFF # rs2
    li s8, 0xFFFFFFFF80000001 # expected result
    ursub32 s9, s6, s7
    bne s9, s8, print_error

    # ksub32
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x7fffffff00000002 # expected result
    ksub32 s9, s6, s7
    bne s9, s8, print_error

    # uksub32
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0xFFFFFFFFFFFFFFFF # expected result
    uksub32 s9, s6, s7
    bne s9, s8, print_error

    # cras32
    li s6, 0xffffffff00000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000FFFFFFFF # expected result
    cras32 s9, s6, s7
    bne s9, s8, print_error

    # rcras32
    li s6, 0xffffffff80000001 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000c0000000 # expected result
    rcras32 s9, s6, s7
    bne s9, s8, print_error

    # urcras32
    li s6, 0xffffffff80000001 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x8000000040000000 # expected result
    urcras32 s9, s6, s7
    bne s9, s8, print_error

    # kcras32
    li s6, 0x7fffffff80000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x7fffffff80000000 # expected result
    kcras32 s9, s6, s7
    bne s9, s8, print_error

    # ukcras32
    li s6, 0xffffffff00000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xffffffffffffffff # expected result
    ukcras32 s9, s6, s7
    bne s9, s8, print_error


    # crsa32
    li s6, 0x00000000ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xFFFFFFFF00000000 # expected result
    crsa32 s9, s6, s7
    bne s9, s8, print_error

    # rcrsa32
    li s6, 0x80000001ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xc000000000000000 # expected result
    rcrsa32 s9, s6, s7
    bne s9, s8, print_error

    # urcrsa32
    li s6, 0x80000001ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x4000000080000000 # expected result
    urcrsa32 s9, s6, s7
    bne s9, s8, print_error

    # kcrsa32
    li s6, 0x800000007fffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x800000007fffffff # expected result
    kcrsa32 s9, s6, s7
    bne s9, s8, print_error

    # ukcrsa32
    li s6, 0x00000000ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xffffffffffffffff # expected result
    ukcrsa32 s9, s6, s7
    bne s9, s8, print_error

    # stas32
    li s6, 0xffffffff00000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000FFFFFFFF # expected result
    stas32 s9, s6, s7
    bne s9, s8, print_error

    # rstas32
    li s6, 0xffffffff80000001 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x00000000c0000000 # expected result
    rstas32 s9, s6, s7
    bne s9, s8, print_error

    # urstas32
    li s6, 0xffffffff80000001 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x8000000040000000 # expected result
    urstas32 s9, s6, s7
    bne s9, s8, print_error

    # kstas32
    li s6, 0x7fffffff80000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x7fffffff80000000 # expected result
    kstas32 s9, s6, s7
    bne s9, s8, print_error

    # ukstas32
    li s6, 0xffffffff00000000 # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xffffffffffffffff # expected result
    ukstas32 s9, s6, s7
    bne s9, s8, print_error

    # stsa32
    li s6, 0x00000000ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xFFFFFFFF00000000 # expected result
    stsa32 s9, s6, s7
    bne s9, s8, print_error

    # urstsa32
    li s6, 0x80000001ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x4000000080000000 # expected result
    urstsa32 s9, s6, s7
    bne s9, s8, print_error

    # kstsa32
    li s6, 0x800000007fffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0x800000007fffffff # expected result
    kstsa32 s9, s6, s7
    bne s9, s8, print_error

    # ukstsa32
    li s6, 0x00000000ffffffff # rs1
    li s7, 0x0000000100000001 # rs2
    li s8, 0xffffffffffffffff # expected result
    ukstsa32 s9, s6, s7
    bne s9, s8, print_error

    # sra32
    li s6, 0x8000000000001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0xF000000000000222 # expected result
    sra32 s9, s6, s7
    bne s9, s8, print_error

    # srai32
    li s6, 0x8000000000001111 # rs1
    li s8, 0xF000000000000222 # expected result
    srai32 s9, s6, 3
    bne s9, s8, print_error

    # sra32.u
    li s6, 0x8000000080000004 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0xF0000000F0000001 # expected result
    sra32.u s9, s6, s7
    bne s9, s8, print_error

    # srai32.u
    li s6, 0x8000000080000004 # rs1
    li s8, 0xF0000000F0000001 # expected result
    srai32.u s9, s6, 3
    bne s9, s8, print_error

    # srl32
    li s6, 0x8000000000001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x1000000000000222 # expected result
    srl32 s9, s6, s7
    bne s9, s8, print_error

    # srli32
    li s6, 0x8000000000001111 # rs1
    li s8, 0x1000000000000222 # expected result
    srli32 s9, s6, 3
    bne s9, s8, print_error

    # srl32.u
    li s6, 0x8000000080000004 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x1000000010000001 # expected result
    srl32.u s9, s6, s7
    bne s9, s8, print_error

    # sll32
    li s6, 0xE000000000000001 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x0000000000000008 # expected result
    sll32 s9, s6, s7
    bne s9, s8, print_error

    # slli32
    li s6, 0xE000000000000001 # rs1
    li s8, 0x0000000000000008 # expected result
    slli32 s9, s6, 3
    bne s9, s8, print_error

    # ksll32
    li s6, 0xE000000000000001 # rs1
    li s7, 0xFFFFFFFFFFFFFFE3 # rs2
    li s8, 0x8000000000000008 # expected result
    ksll32 s9, s6, s7
    bne s9, s8, print_error

    # kslli32
    li s6, 0xE000000000000001 # rs1
    li s8, 0x8000000000000008 # expected result
    kslli32 s9, s6, 3
    bne s9, s8, print_error

    # kslra32
    li s6, 0xE000000080000000 # rs1
    li s7, 0xFFFFFFFFFFFFFFC3 # rs2 3
    li s8, 0x8000000080000000 # expected result
    kslra32 s9, s6, s7
    bne s9, s8, print_error

    # kslra32
    li s6, 0xE000000080000000 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2  -3
    li s8, 0xFC000000F0000000 # expected result
    kslra32 s9, s6, s7
    bne s9, s8, print_error

    # kslra32_u
    li s6, 0xE000000480000004 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2  -3
    li s8, 0xFC000001F0000001 # expected result
    kslra32.u s9, s6, s7
    bne s9, s8, print_error

    # smin32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0xFFFFFFFF80000000 # expected result
    smin32 s9, s6, s7
    bne s9, s8, print_error

    # umin32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x7FFFFFFF80000000 # expected result
    umin32 s9, s6, s7
    bne s9, s8, print_error

    # smax32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x7FFFFFFF80000001 # expected result
    smax32 s9, s6, s7
    bne s9, s8, print_error

    # kabs32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s8, 0x7FFFFFFF7FFFFFFF # expected result
    kabs32 s9, s6
    bne s9, s8, print_error

    # khmbb16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s8, 0x00007FF600007FFA # expected result
    khmbb16 s9, s6, s7
    bne s9, s8, print_error

    # khmbt16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s8, 0x00007FF500007FF9 # expected result
    khmbt16 s9, s6, s7
    bne s9, s8, print_error

    # khmtt16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s8, 0x00007FF400007FF8 # expected result
    khmtt16 s9, s6, s7
    bne s9, s8, print_error

    # kdmbb16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s8, 0x7FF6002A7FFA000A # expected result
    kdmbb16 s9, s6, s7
    bne s9, s8, print_error

    # kdmbt16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s8, 0x7FF500307FF9000C # expected result
    kdmbt16 s9, s6, s7
    bne s9, s8, print_error

    # kdmtt16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s8, 0x7FF400407FF80018 # expected result
    kdmtt16 s9, s6, s7
    bne s9, s8, print_error

    # kdmabb16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF7FFA000A # expected result
    kdmabb16 s9, s6, s7
    bne s9, s8, print_error

    # kdmabt16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF7FF9000C # expected result
    kdmabt16 s9, s6, s7
    bne s9, s8, print_error

    # kdmatt16
    li s6, 0x7FFC7FFD7FFE7FFF # rs1
    li s7, 0x7FF87FF97FFA7FFB # rs2
    li s9, 0x7FFFFFFF00000000 # rd
    li s8, 0x7FFFFFFF7FF80018 # expected result
    kdmatt16 s9, s6, s7
    bne s9, s8, print_error

    # smbt32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0x0000000080000000 # expected result
    smbt32 s9, s6, s7
    bne s9, s8, print_error

    # smtt32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s8, 0xFFFFFFFF80000001 # expected result
    smtt32 s9, s6, s7
    bne s9, s8, print_error

    # kmabb32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x7FFFFFFFFFFFFFFF # expected result
    kmabb32 s9, s6, s7
    bne s9, s8, print_error

    # kmabt32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x7FFFFFFFFFFFFFFF # expected result
    kmabt32 s9, s6, s7
    bne s9, s8, print_error

    # kmatt32
    li s6, 0x7FFFFFFF80000000 # rs1
    li s7, 0xFFFFFFFF80000001 # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x7FFFFFFF80000000 # expected result
    kmatt32 s9, s6, s7
    bne s9, s8, print_error

    # kmda32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s8, 0x7FFFFFFB0000000B # expected result
    kmda32 s9, s6, s7
    bne s9, s8, print_error

    # kmxda32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s8, 0x7FFFFFFB0000000B # expected result
    kmxda32 s9, s6, s7
    bne s9, s8, print_error

    # kmaxda32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x7FFFFFFFFFFFFFFF # expected result
    kmaxda32 s9, s6, s7
    bne s9, s8, print_error

    # kmads32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x7FFFFFFFFFFFFFFF # expected result
    kmads32 s9, s6, s7
    bne s9, s8, print_error

    # kmadrs32
    li s6, 0x7FFFFFFF7FFFFFFE # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x7FFFFFFFFFFFFFFF # expected result
    kmadrs32 s9, s6, s7
    bne s9, s8, print_error

    # kmaxds32
    li s6, 0x7FFFFFFF7FFFFFFE # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s9, 0x0000000000000000 # rd
    li s8, 0x00000000FFFFFFFB # expected result
    kmaxds32 s9, s6, s7
    bne s9, s8, print_error

    # kmsda32
    li s6, 0x7FFFFFFF7FFFFFFE # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x00000004FFFFFFF5 # expected result
    kmsda32 s9, s6, s7
    bne s9, s8, print_error

    # kmsxda32
    li s6, 0x7FFFFFFF7FFFFFFE # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s9, 0x7FFFFFFFFFFFFFFF # rd
    li s8, 0x00000004FFFFFFF5 # expected result
    kmsxda32 s9, s6, s7
    bne s9, s8, print_error

    # smds32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s8, 0x0000000000000002 # expected result
    smds32 s9, s6, s7
    bne s9, s8, print_error

    # smdrs32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFD7FFFFFFC # rs2
    li s8, 0xFFFFFFFFFFFFFFFE # expected result
    smdrs32 s9, s6, s7
    bne s9, s8, print_error

    # smxds32
    li s6, 0x7FFFFFFE7FFFFFFF # rs1
    li s7, 0x7FFFFFFC7FFFFFFD # rs2
    li s8, 0x0000000000000002 # expected result
    smxds32 s9, s6, s7
    bne s9, s8, print_error

    # sraiw_u
    li s6, 0xE000000080000004 # rs1
    li s8, 0xFFFFFFFFF0000001 # expected result
    sraiw.u s9, s6, 3
    bne s9, s8, print_error

    # pkbt32
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x0000000180000000 # expected result
    pkbt32 s9, s6, s7
    bne s9, s8, print_error

    # pktb32
    li s6, 0x7fffffff00000001 # rs1
    li s7, 0x80000000FFFFFFFF # rs2
    li s8, 0x7fffffffFFFFFFFF # expected result
    pktb32 s9, s6, s7
    bne s9, s8, print_error

    # run only one instance
    csrr    t0, mhartid
    bnez    t0, forever
print_pass:
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
