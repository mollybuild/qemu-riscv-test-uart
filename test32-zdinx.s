.global _start

_start:
    # FMADD.D
    li s2, 0x00000000 # low half of rs3
    li s3, 0xBF000000 # high half of rs3, rs3=-0.5
    li s4, 0x00000000 # low half of rs1
    li s5, 0x3FC00000 # high half of rs1,rs1=1.5
    li s6, 0x00000000 # low half of rs2
    li s7, 0x3FC00000 # high half of rs2,rs2=1.5
    li s8, 0x00000000 # low half of expected result
    li s9, 0x3FE00000 # high half of expected result =1.75
    fmadd.d s10,s4,s6,s2 # s9=(s6*s7)+s5
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FMSUB.D
    li s2, 0x00000000 # low rs3
    li s3, 0xBF000000 # high rs3
    li s4, 0x00000000 # low rs1
    li s5, 0x3FC00000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0x40300000 # expected result =2.75 
    fmsub.d s10,s4,s6,s2 # s9=(s6*s7)-s5
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FNMSUB.D
    li s2, 0x00000000 # low rs3
    li s3, 0xBF000000 # high rs3
    li s4, 0x00000000 # low rs1
    li s5, 0x3FC00000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xC0300000 # expected result = -2.75
    fnmsub.d s10,s4,s6,s2 # s9=-(s6*s7)+s5
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FNMADD.D
    li s2, 0x00000000 # low rs3
    li s3, 0xBF000000 # high rs3
    li s4, 0x00000000 # low rs1
    li s5, 0x3FC00000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xBFE00000 # expected result = -1.75
    fnmadd.d s10,s4,s6,s2 # s9=-(s6*s7)-s5
    bne s11, s9, print_error
    bne s10, s8, print_error
    
    # FADD.D
    li s4  0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0x3F800000 # expected result = 1
    fadd.d s10, s4, s6
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FSUB.D
    li s4  0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xC0000000 # expected result
    fsub.d s10, s4, s6
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FMUL.D
    li s4  0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xBF400000 # expected result
    fmul.d s10, s4, s6
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FDIV.D
    li s4  0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1,rs1= -0.5
    li s6, 0x00000000 # low rs2
    li s7, 0x3F800000 # high rs2,rs2=1
    li s8, 0x00000000 # low expected result
    li s8, 0xBF000000 # high expected result, -0.5
    fdiv.d s10, s4, s6
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FSQRT.D
    li s6, 0x00000000 # low rs1
    li s7, 0x40100000 # high rs1,rs1=2.25
    li s8, 0x00000000 # low expected result
    li s9, 0x3FC00000 # high expected result
    fsqrt.d s10, s6
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FSGNJ.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1,rs1=-0.5
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2,rs2=1.5
    li s8, 0x00000000 # low expected result
    li s9, 0x3F000000 # high expected result
    fsgnj.d s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FSGNJN.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xBF000000 # high expected result
    fsgnjn.d s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FSGNJX.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xBF000000 # high expected result
    fsgnjx.d s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FMIN.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0xBF000000 # high expected result
    fmin.d s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FMAX.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0x3FC00000 # high expected result
    fmax.d s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FCVT.W.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # rs1
    li s8, 0x00000000 # low expected result
    li s9, 0x00000000 # high expected result
    fcvt.w.d s10, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FCVT.WU.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s8, 0x00000000 # low expected result
    li s9, 0x00000000 # high expected result
    fcvt.wu.d s10, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FCVT.D.W
    li s4, 0x00000000 # low rs1
    li s6, 0xBF000000 # high rs1
    li s8, 0x00000000 # expected result
    fcvt.d.w s9, s4
    bne s9, s8, print_error

    # FCVT.D.WU
    li s4, 0x00000000 # low rs1
    li s6, 0xBF000000 # high rs1
    li s8, 0x00000000 # expected result
    fcvt.d.wu s9, s4
    bne s9, s8, print_error

    # FEQ.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0x00000000 # low expected result
    feq.s s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FLT.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0x00000001 # high expected result
    flt.s s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FLE.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s6, 0x00000000 # low rs2
    li s7, 0x3FC00000 # high rs2
    li s8, 0x00000000 # low expected result
    li s9, 0x00000001 # high expected result
    fle.s s10, s6, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FCLASS.D
    li s4, 0x00000000 # low rs1
    li s5, 0xBF000000 # high rs1
    li s8, 0x00000000 # low expected result
    li s9, 0x00000002 # high expected result
    fclass.s s10, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

    # FCVT.S.W
    li s6, 0x00000001 # rs1
    li s8, 0x3F800000 # expected result
    fcvt.s.w s9, s6
    bne s9, s8, print_error

    # FCVT.S.WU
    li s6, 0x00000001 # rs1
    li s8, 0x3F800000 # expected result
    fcvt.s.wu s9, s6
    bne s9, s8, print_error

    # FCVT.S.D
    li s4, 0x00000000 # low rs1
    li s5, 0x00000001 # high rs1
    li s8, 0x00000001 # low expected result
    fcvt.s.d s9, s4
    bne s9, s8, print_error

    # FCVT.D.S
    li s4, 0x00000001 # rs1
    li s8, 0x00000000 # low expected result
    li s9, 0x00000001 # expected result
    fcvt.d.s s10, s4
    bne s11, s9, print_error
    bne s10, s8, print_error

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
