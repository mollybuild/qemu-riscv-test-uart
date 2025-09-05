.global _start

_start:
    # zbkb of K ext
    # rol
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xF890001FFBC0000B # expected result
    rol s9, s6, s7
    bne s9, s8, print_error

    # rolw
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xFFFFFFFFFBC0000F # expected result
    rolw s9, s6, s7
    bne s9, s8, print_error

    # ror
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x2FE240007FEF0000 # expected result
    ror s9, s6, s7
    bne s9, s8, print_error

    # rori
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x2FE240007FEF0000 # expected result
    rori s9, s6, 3
    bne s9, s8, print_error

    # roriw
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000003FEF0000 # expected result
    roriw s9, s6, 3
    bne s9, s8, print_error

    # rorw
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x000000003FEF0000 # expected result
    rorw s9, s6, s7
    bne s9, s8, print_error
    
    # andn
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x7F120003FF780000 # expected result
    andn s9, s6, s7
    bne s9, s8, print_error

    # orn
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xFFFFFFFFFFFFFFFD # expected result
    orn s9, s6, s7
    bne s9, s8, print_error

    # Xnor
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x80EDFFFC0087FFFD # expected result
    xnor s9, s6, s7
    bne s9, s8, print_error

    # Pack
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x00000003FF780001 # expected result
    pack s9, s6, s7
    bne s9, s8, print_error

    # packh
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000000000301 # expected result
    packh s9, s6, s7
    bne s9, s8, print_error

    # packw
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000000030001 # expected result
    packw s9, s6, s7
    bne s9, s8, print_error

    # brev8
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xFE4800C0FF1E0080 # expected result
    brev8 s9, s6
    bne s9, s8, print_error

    # rev8
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x010078FF0300127F # expected result
    rev8 s9, s6
    bne s9, s8, print_error

    # zbkc of K ext
    # clmul
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x8136000401880003# expected result
    clmul s9, s6, s7
    bne s9, s8, print_error

    # clmulh
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0000000000000000 # expected result
    clmulh s9, s6, s7
    bne s9, s8, print_error

    # zbkx of K ext
    # xperm8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x01010101010101FF # expected result
    xperm8 s9, s6, s7
    bne s9, s8, print_error

    # xperm4
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x1111111111111110 # expected result
    xperm4 s9, s6, s7
    bne s9, s8, print_error

    # Zknd of K ext
    # aes64ds
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x525252d56b525209 # expected result
    aes64ds s9, s6, s7
    bne s9, s8, print_error
  
    # aes64dsm
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x94ab81391408e997 # expected result
    aes64dsm s9, s6, s7
    bne s9, s8, print_error

    # aes64im
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x53bff0721348fb26 # expected result
    aes64im s9, s6
    bne s9, s8, print_error

    # aes64ks1i
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x7bd2c96b7bd2c96b # expected result
    aes64ks1i s9, s6, 0x3
    bne s9, s8, print_error

    # aes64ks2
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x7f1200007f120000 # expected result
    aes64ks2 s9, s6, s7
    bne s9, s8, print_error

    # zkne of k ext
    # aes64es
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x1663637b6363637c # expected result
    aes64es s9, s6, s7
    bne s9, s8, print_error

    # aes64esm
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xa1e40e26427c7c5d # expected result
    aes64esm s9, s6, s7
    bne s9, s8, print_error

    # aes64ks1i
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x7bd2c96b7bd2c96b # expected result
    aes64ks1i s9, s6, 0x3
    bne s9, s8, print_error

    # aes64ks2
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0x7f1200007f120000 # expected result
    aes64ks2 s9, s6, s7
    bne s9, s8, print_error

    # zknh of k ext
    # sha256sig0
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000001C118fDE # expected result
    sha256sig0 s9, s6
    bne s9, s8, print_error

    # sha256sig1
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x00000000003F1E53 # expected result
    sha256sig1 s9, s6
    bne s9, s8, print_error

    # sha256sum0
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xFFFFFFFF9fD1fC3D # expected result
    sha256sum0 s9, s6
    bne s9, s8, print_error

    # sha256sum1
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xFFFFFFFFBBC20FFF # expected result
    sha256sum1 s9, s6
    bne s9, s8, print_error

    # sha512sig0
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xBE083601FBBD8800 # expected result
    sha512sig0 s9, s6
    bne s9, s8, print_error

    # sha512sig1
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xF96C67FDB43D9FE4 # expected result
    sha512sig1 s9, s6
    bne s9, s8, print_error

    # sha512sum0
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x0FA0F017AC1AA43F # expected result
    sha512sum0 s9, s6
    bne s9, s8, print_error

    # sha512sum1
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x01FA1F8C80B08B3E # expected result
    sha512sum1 s9, s6
    bne s9, s8, print_error

    # Zksed of K ext
    # sm4ed
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xFFFFFFFFA4AD8E5A # expected result
    sm4ed s9, s6, s7, 0b01
    bne s9, s8, print_error

    # sm4ks
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x3 # rs2
    li s8, 0xFFFFFFFFE513D6C1 # expected result
    sm4ks s9, s6, s7, 0b01
    bne s9, s8, print_error

    # Zksh of K ext
    # sm3p0
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0x000000000F7BFD0F # expected result
    sm3p0 s9, s6
    bne s9, s8, print_error

    # sm3p1
    li s6, 0x7F120003FF780001 # rs1
    li s8, 0xFFFFFFFFFF8743BD # expected result
    sm3p1 s9, s6
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
