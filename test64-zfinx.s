.global _start

_start:
    # FMADD.S
    li s5, 0x7F12000300000000
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffb5ba0001 # expected result
    fmadd.s s9,s6,s7,s5 # s9=(s6*s7)+s5
    bne s9, s8, print_error

    # FMSUB.S
    li s5, 0x7F12000300000000
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffb5ba0001 # expected result
    fmsub.s s9,s6,s7,s5 # s9=(s6*s7)-s5
    bne s9, s8, print_error

    # FNMSUB.S
    li s5, 0x7F12000300000000
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000035ba0001 # expected result
    fnmsub.s s9,s6,s7,s5 # s9=-(s6*s7)+s5
    bne s9, s8, print_error

    # FNMADD.S
    li s5, 0x7F12000300000000
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000035ba0001 # expected result
    fnmadd.s s9,s6,s7,s5 # s9=-(s6*s7)-s5
    bne s9, s8, print_error
    
    # FADD.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffff780001 # expected result
    fadd.s s9, s6, s7
    bne s9, s8, print_error

    # FSUB.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffff780001 # expected result
    fsub.s s9, s6, s7
    bne s9, s8, print_error

    # FMUL.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffb5ba0001 # expected result
    fmul.s s9, s6, s7
    bne s9, s8, print_error

    # FDIV.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffff800000 # expected result
    fdiv.s s9, s6, s7
    bne s9, s8, print_error

    # FSQRT.S
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000007fc00000 # expected result
    fsqrt.s s9, s6
    bne s9, s8, print_error

    # FSGNJ.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x000000007f780001 # expected result
    fsgnj.s s9, s6, s7
    bne s9, s8, print_error

    # FSGNJN.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffff780001 # expected result
    fsgnjn.s s9, s6, s7
    bne s9, s8, print_error

    # FSGNJX.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffff780001 # expected result
    fsgnjx.s s9, s6, s7
    bne s9, s8, print_error

    # FMIN.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffffff780001 # expected result
    fmin.s s9, s6, s7
    bne s9, s8, print_error

    # FMAX.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000000000003 # expected result
    fmax.s s9, s6, s7
    bne s9, s8, print_error

    # FCVT.W.S
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xffffffff80000000 # expected result
    fcvt.w.s s9, s6
    bne s9, s8, print_error

    # FCVT.WU.S
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x0000000000000000 # expected result
    fcvt.wu.s s9, s6
    bne s9, s8, print_error

    # FEQ.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000000000000 # expected result
    feq.s s9, s6, s7
    bne s9, s8, print_error

    # FLT.S
    li s6, 0x7F120003FF780001 # rs1i
    li s7, 0x3 # rs2
    li s8, 0x0000000000000001 # expected result
    flt.s s9, s6, s7
    bne s9, s8, print_error

    # FLE.S
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000000000001 # expected result
    fle.s s9, s6, s7
    bne s9, s8, print_error

    # FCLASS.S
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x0000000000000002 # expected result
    fclass.s s9, s6
    bne s9, s8, print_error

    # FCVT.S.W
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xffffffffcb07ffff # expected result
    fcvt.s.w s9, s6
    bne s9, s8, print_error

    # FCVT.S.WU
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000004f7f7800 # expected result
    fcvt.s.wu s9, s6
    bne s9, s8, print_error

    # FCVT.L.S
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x8000000000000000 # expected result
    fcvt.l.s s9, s6
    bne s9, s8, print_error

    # FCVT.LU.S
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x0000000000000000 # expected result
    fcvt.lu.s s9, s6
    bne s9, s8, print_error

    # FCVT.S.L
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000005efe2400 # expected result
    fcvt.s.l s9, s6
    bne s9, s8, print_error

    # FCVT.S.LU
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000005efe2400 # expected result
    fcvt.s.lu s9, s6
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
