.global _start

_start:
    # rol
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xf890001b # expected result
    rol s9, s6, s7
    bne s9, s8, print_error

    # ror
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x6fe24000 # expected result
    ror s9, s6, s7
    bne s9, s8, print_error

    # rori
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x6fe24000 # expected result
    rori s9, s6, 3
    bne s9, s8, print_error

    # andn
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x7f120000 # expected result
    andn s9, s6, s7
    bne s9, s8, print_error

    # orn
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xffffffff # expected result
    orn s9, s6, s7
    bne s9, s8, print_error

    # Xnor
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x80edffff # expected result
    xnor s9, s6, s7
    bne s9, s8, print_error

    # Pack
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x00030003 # expected result
    pack s9, s6, s7
    bne s9, s8, print_error

    # packh
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x00000303 # expected result
    packh s9, s6, s7
    bne s9, s8, print_error

    # brev8
    li s6, 0x7F120003 # rs1
    li s8, 0xfe4800c0 # expected result
    brev8 s9, s6
    bne s9, s8, print_error

    # rev8
    li s6, 0x7F120003 # rs1
    li s8, 0x300127f # expected result
    rev8 s9, s6
    bne s9, s8, print_error

    # Zip
    li s6, 0x7F120003 # rs1
    li s8, 0x2aaa020d # expected result
    zip s9, s6
    bne s9, s8, print_error
    
    # Unzip
    li s6, 0x7F120003 # rs1
    li s8, 0x07101f401 # expected result
    unzip s9, s6
    bne s9, s8, print_error

    # zbkc of K ext
    # clmul
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x81360005 # expected result
    clmul s9, s6, s7
    bne s9, s8, print_error

    # clmulh
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x00000000 # expected result
    clmulh s9, s6, s7
    bne s9, s8, print_error

    # zbkx of K ext
    # xperm8
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x0303037f # expected result
    xperm8 s9, s6, s7
    bne s9, s8, print_error

    # xperm4
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x33333330 # expected result
    xperm4   s9, s6, s7
    bne s9, s8, print_error

    # zknd of K ext
    # aes32dsi
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x7f125203 # expected result
    aes32dsi s9, s6, s7, 0b01
    bne s9, s8, print_error

    # aes32dsmi
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xd8e65153 # expected result
    aes32dsmi s9, s6, s7, 0b01
    bne s9, s8, print_error

    # Zkne of K ext
    # aes32esi
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x7f126303 # expected result
    aes32esi s9, s6, s7, 0b01
    bne s9, s8, print_error

    # aes32esmi
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x1c71c6a6 # expected result
    aes32esmi s9, s6, s7, 0b01
    bne s9, s8, print_error

    # Zknh of K ext
    # sha256sig0
    li s6, 0x7F120003 # rs1
    li s8, 0x891cbbc4 # expected result
    sha256sig0 s9, s6
    bne s9, s8, print_error

    # sha256sig1
    li s6, 0x7F120003 # rs1
    li s8, 0x401e14eb # expected result
    sha256sig1 s9, s6
    bne s9, s8, print_error

    # sha256sum0
    li s6, 0x7F120003 # rs1
    li s8, 0x97df756c # expected result
    sha256sum0 s9, s6
    bne s9, s8, print_error

    # sha256sum1
    li s6, 0x7F120003 # rs1
    li s8, 0x8493abff # expected result
    sha256sum1 s9, s6
    bne s9, s8, print_error

    # sha512sig0h
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xbc083601 # expected result
    sha512sig0h s9, s6, s7
    bne s9, s8, print_error

    # sha512sig0l
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xba083601 # expected result
    sha512sig0l s9, s6, s7
    bne s9, s8, print_error

    # sha512sig1h
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xf96c27fa # expected result
    sha512sig1h s9, s6, s7
    bne s9, s8, print_error

    # sha512sig1l
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xf56c27fa # expected result
    sha512sig1l s9, s6, s7
    bne s9, s8, print_error

    # sha512sum0r
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0xc6000037 # expected result
    sha512sum0r s9, s6, s7
    bne s9, s8, print_error

    # sha512sum1r
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x18d238c # expected result
    sha512sum1r s9, s6, s7
    bne s9, s8, print_error

    # zksed of K ext
    # sm4ed
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x24c78e58 # expected result
    sm4ed s9, s6, s7, 0b01
    bne s9, s8, print_error

    # sm4ks
    li s6, 0x7F120003 # rs1
    li s7, 0x3 # rs2
    li s8, 0x6579d6c3 # expected result
    sm4ks s9, s6, s7, 0b01
    bne s9, s8, print_error

    # zksh of K ext
    # sm3p0
    li s6, 0x7F120003 # rs1
    li s8, 0x5b14f8d9 # expected result
    sm3p0 s9, s6
    bne s9, s8, print_error

    # sm3p1
    li s6, 0x7F120003 # rs1
    li s8, 0x7eac368a # expected result
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
