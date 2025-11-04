.global _start

_start:
    # FMADD.D
    li s5, 0xBFE0000000000000 # -0.5
    li s6, 0x3FF8000000000000 # rs1=1.5
    li s7, 0x3FF8000000000000 # rs2=1.5
    li s8, 0x3FFC000000000000 # expected result =1.75
    fmadd.d s9,s6,s7,s5 # s9=(s6*s7)+s5
    bne s9, s8, print_error

    # FMSUB.D
    li s5, 0xBFE0000000000000 # rs3 = -0.5
    li s6, 0x3FF8000000000000 # rs1 = 1.5
    li s7, 0x3FF8000000000000 # rs2 = 1.5
    li s8, 0x4006000000000000 # expected result =2.75 
    fmsub.d s9,s6,s7,s5 # s9=(s6*s7)-s5
    bne s9, s8, print_error

    # FNMSUB.D
    li s5, 0xBFE0000000000000
    li s6, 0x3FF8000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xC006000000000000 # expected result = -2.75
    fnmsub.d s9,s6,s7,s5 # s9=-(s6*s7)+s5
    bne s9, s8, print_error

    # FNMADD.D
    li s5, 0xBFE0000000000000
    li s6, 0x3FF8000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xBFFC000000000000 # expected result = -1.75
    fnmadd.d s9,s6,s7,s5 # s9=-(s6*s7)-s5
    bne s9, s8, print_error
    
    # FADD.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0x3FF0000000000000 # expected result = 1
    fadd.d s9, s6, s7
    bne s9, s8, print_error

    # FSUB.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xC000000000000000 # expected result
    fsub.d s9, s6, s7
    bne s9, s8, print_error

    # FMUL.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xBFE8000000000000 # expected result
    fmul.d s9, s6, s7
    bne s9, s8, print_error

    # FDIV.D
    li s6, 0x3FF8000000000000 # rs1 
    li s7, 0xBFE0000000000000 # rs2
    li s8, 0xC008000000000000 # expected result -3
    fdiv.d s9, s6, s7
    bne s9, s8, print_error

    # FSQRT.D
    li s6, 0x4002000000000000 # rs1 2.25
    li s8, 0x3FF8000000000000 # expected result
    fsqrt.d s9, s6
    bne s9, s8, print_error

    # FSGNJ.D
    li s6, 0xBFE0000000000000 # rs1 -0.5
    li s7, 0x3FF8000000000000 # rs2 1.5
    li s8, 0x3FE0000000000000 # expected result
    fsgnj.d s9, s6, s7
    bne s9, s8, print_error

    # FSGNJN.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xBFE0000000000000 # expected result
    fsgnjn.d s9, s6, s7
    bne s9, s8, print_error

    # FSGNJX.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xBFE0000000000000 # expected result
    fsgnjx.d s9, s6, s7
    bne s9, s8, print_error

    # FMIN.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0xBFE0000000000000 # expected result
    fmin.d s9, s6, s7
    bne s9, s8, print_error

    # FMAX.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0x3FF8000000000000 # expected result
    fmax.d s9, s6, s7
    bne s9, s8, print_error

    # FCVT.W.D
    li s6, 0xBFE0000000000000 # rs1
    li s8, 0x0000000000000000 # expected result
    fcvt.w.d s9, s6
    bne s9, s8, print_error

    # FCVT.WU.D
    li s6, 0xBFE0000000000000 # rs1
    li s8, 0x0000000000000000 # expected result
    fcvt.wu.d s9, s6
    bne s9, s8, print_error

    # FEQ.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0x0000000000000000 # expected result
    feq.d s9, s6, s7
    bne s9, s8, print_error

    # FLT.D
    li s6, 0xBFE0000000000000 # rs1i
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0x0000000000000001 # expected result
    flt.d s9, s6, s7
    bne s9, s8, print_error

    # FLE.D
    li s6, 0xBFE0000000000000 # rs1
    li s7, 0x3FF8000000000000 # rs2
    li s8, 0x0000000000000001 # expected result
    fle.d s9, s6, s7
    bne s9, s8, print_error

    # FCLASS.D
    li s6, 0xBFE0000000000000 # rs1
    li s8, 0x0000000000000002 # expected result
    fclass.d s9, s6
    bne s9, s8, print_error

    # FCVT.S.W
    li s6, 0x0000000000000001 # rs1
    li s8, 0x000000003F800000 # expected result
    fcvt.s.w s9, s6
    bne s9, s8, print_error

    # FCVT.S.WU
    li s6, 0x0000000000000001 # rs1
    li s8, 0x000000003F800000 # expected result
    fcvt.s.wu s9, s6
    bne s9, s8, print_error

    # FCVT.L.D
    li s6, 0xBFE0000000000000 # rs1
    li s8, 0x0000000000000000 # expected result
    fcvt.l.d s9, s6
    bne s9, s8, print_error

    # FCVT.LU.D
    li s6, 0xBFE0000000000000 # rs1
    li s8, 0x0000000000000000 # expected result
    fcvt.lu.d s9, s6
    bne s9, s8, print_error

    # FCVT.D.L
    li s6, 0x0000000000000001 # rs1
    li s8, 0x3FF0000000000000 # expected result
    fcvt.d.l s9, s6
    bne s9, s8, print_error

    # FCVT.D.LU
    li s6, 0x0000000000000001 # rs1
    li s8, 0x3FF0000000000000 # expected result
    fcvt.d.lu s9, s6
    bne s9, s8, print_error

    # FCVT.D.W
    li s6, 0x0000000000000001 # rs1
    li s8, 0x3FF0000000000000 # expected result
    fcvt.d.w s9, s6
    bne s9, s8, print_error

    # FCVT.D.WU
    li s6, 0x00000001 # rs1
    li s8, 0x3FF0000000000000 # expected result
    fcvt.d.wu s9, s6
    bne s9, s8, print_error

    # FCVT.S.D
    li s6, 0xBFE0000000000000 # rs1
    li s8, 0xFFFFFFFFBF000000# expected result
    fcvt.s.d s9, s6
    bne s9, s8, print_error

    # FCVT.D.S
    li s6, 0xFFFFFFFFBF000000 # rs1
    li s8, 0xBFE0000000000000# expected result
    fcvt.d.s s9, s6
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
