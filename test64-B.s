.global _start

_start:
    # add.uw
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x00000000807b0002 # expected result
    add.uw a4,a0,a5
    bne a4, a2, print_error

    # andn
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xf01d460080780000 # expected result
    andn a4,a0,a5
    bne a4, a2, print_error

    # clmul
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x3a1cc688807b0001 # expected result
    clmul a4,a0,a5
    bne a4, a2, print_error

    # clmulh
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000000011027 # expected result
    clmulh a4,a0,a5
    bne a4, a2, print_error

    # clmulr
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x000000000002204e # expected result
    clmulr a4,a0,a5
    bne a4, a2, print_error    
    
    # clz
    li a5, 0x0000000000030001 # rs
    li a2, 0x000000000000002e # expected result
    clz a4,a5
    bne a4, a2, print_error

    # clzw
    li a5, 0x0000000000030001 # rs
    li a2, 0x000000000000000e # expected result
    clzw a4,a5
    bne a4, a2, print_error

    # cpop
    li a5, 0x0000000000030001 # rs
    li a2, 0x0000000000000003 # expected result
    cpop a4,a5
    bne a4, a2, print_error

    # cpopw
    li a5, 0x0000000000030001 # rs
    li a2, 0x0000000000000003 # expected result
    cpopw a4,a5
    bne a4, a2, print_error
  
    # ctz
    li a5, 0x0000000000030001 # rs
    li a2, 0x0000000000000000 # expected result
    ctz a4,a5
    bne a4, a2, print_error
    
    # ctzw
    li a5, 0x0000000000030001 # rs
    li a2, 0x0000000000000000 # expected result
    ctzw a4,a5
    bne a4, a2, print_error

    # max
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000000030001 # expected result
    max a4,a0,a5
    bne a4, a2, print_error

    # maxu
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xf01d460080780001 # expected result
    maxu a4,a0,a5
    bne a4, a2, print_error
    
    # min
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xf01d460080780001 # expected result
    min a4,a0,a5
    bne a4, a2, print_error

    # minu
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000000030001 # expected result
    minu a4,a0,a5
    bne a4, a2, print_error

    # orc.b
    li a5, 0x0000000000030001 # rs
    li a2, 0x0000000000ff00ff # expected result
    orc.b a4,a5
    bne a4, a2, print_error
    
    # orn
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xfffffffffffcffff # expected result
    orn a4,a0,a5
    bne a4, a2, print_error

    # test in zbkb
    # rev8
    
    # rol

    # rolw

    # ror

    # rori

    # roriw

    # rorw

    # bclr
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xf01d460080780001 # expected result
    bclr a4,a0,a5
    bne a4, a2, print_error

    # bclri
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x701d460080780001 # expected result
    bclri a4,a0,63
    bne a4, a2, print_error

    # bext
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000000000000 # expected result
    bext a4,a0,a5
    bne a4, a2, print_error

    # bexti
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x0000000000000001 # expected result
    bexti a4,a0,63
    bne a4, a2, print_error

    # binv
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xf01d460080780003 # expected result
    binv a4,a0,a5
    bne a4, a2, print_error

    # binvi
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x701d460080780001 # expected result
    binvi a4,a0,63
    bne a4, a2, print_error

    # bset
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xf01d460080780003 # expected result
    bset a4,a0,a5
    bne a4, a2, print_error

    # bseti
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x701d460080780001 # expected result
    binvi a4,a0,63
    bne a4, a2, print_error

    # sext.b
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x0000000000000001 # expected result
    sext.b a4,a0
    bne a4, a2, print_error    

    # sext.h
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x0000000000000001 # expected result
    sext.h a4,a0
    bne a4, a2, print_error

    # sh1add
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xe03a8c0100f30003 # expected result
    sh1add a4,a0,a5
    bne a4, a2, print_error

    # sh1add.uw
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000100f30003 # expected result
    sh1add.uw a4,a0,a5
    bne a4, a2, print_error

    # sh2add
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0xc075180201e30005 # expected result
    sh2add a4,a0,a5
    bne a4, a2, print_error

    # sh2add.uw
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000201e30005 # expected result
    sh2add.uw a4,a0,a5
    bne a4, a2, print_error

    # sh3add
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x80ea300403c30009 # expected result
    sh3add a4,a0,a5
    bne a4, a2, print_error

    # sh3add.uw
    li a0, 0xF01D460080780001 # rs1
    li a5, 0x0000000000030001 # rs2
    li a2, 0x0000000403c30009 # expected result
    sh3add.uw a4,a0,a5
    bne a4, a2, print_error

    # slli.uw
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x000000100f000020 # expected result
    slli.uw a4,a0,5
    bne a4, a2, print_error

    # xnor test in zbkb

    # zext.h
    li a0, 0xF01D460080780001 # rs1
    li a2, 0x0000000000000001 # expected result
    zext.h a4,a0
    bne a4, a2, print_error

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
