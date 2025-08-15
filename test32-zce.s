.global _start

_start:
    la sp, boot_stack_top
    # zcb
    #  c.sb and c.lbu
    li a0, 0x80780001 # memory addr
    li a5, 0x00030001 # data
    li a2, 0x00000001 # expected result
    c.sb a5, 0x2(a0)
    c.lbu a4, 0x2(a0)
    bne a4, a2, print_error

    # c.lhu and c.sh
    li a0, 0x80780001 # memory addr
    li a5, 0x00030001 # data
    li a2, 0x00000001 # expected result
    c.sh a5, 0x2(a0)
    c.lhu a4, 0x2(a0)
    bne a4, a2, print_error

    # c.lh
    li a0, 0x80780001 # memory addr
    li a5, 0x0000F001 # data
    li a2, 0xFFFFF001 # expected result
    c.sh a5, 0x2(a0)
    c.lh a4, 0x2(a0)
    bne a4, a2, print_error

    # c.zext.b
    li a5, 0x0000F001 # data
    li a2, 0x00000001 # expected result
    c.zext.b a5
    bne a5, a2, print_error

    # c.sext.b
    li a5, 0x000000F1 # data
    li a2, 0xFFFFFFF1 # expected result
    c.sext.b a5
    bne a5, a2, print_error

    # c.zext.h
    li a5, 0x0000F001 # data
    li a2, 0x0000F001 # expected result
    c.zext.h a5
    bne a5, a2, print_error

    # c.sext.h
    li a5, 0x0000F001 # data
    li a2, 0xFFFFF001 # expected result
    c.sext.h a5
    bne a5, a2, print_error

    # c.not
    li a5, 0x0030F001 # data
    li a2, 0xffcf0ffe # expected result
    c.not a5
    #bne a5, a2, print_error
  
    # c.mul
    li a0, 0xFF780001 # rs1
    li a4, 0x3 # rs2
    li a5, 0xfe680003 # expected result
    c.mul a0, a4
    #bne a0, a5, print_error
    
    # zcmp
    # cm.push
    cm.push {ra},-16
    # mv ra to some reg
    mv a0, ra
    li ra, 0x00000001 # clear ra 

    # cm.pop
    cm.pop {ra},16
    bne ra, a0, print_error

    # cm.popret
    jal ra,sub_popret
    
    # cm.popretz
    jal ra,sub_popretz
    li a2, 0x0 # expected a0 value
    bne a0, a2, print_error

    # cm.mva01s
    li s6, 0x0000F10A
    li s7, 0x00000007
    cm.mva01s s6,s7
    bne a0, s6, print_error
    bne a1, s7, print_error

    # cm.mvsa01
    cm.mva01s s0, s1
    bne a0, s0, print_error
    bne a1, s1, print_error

    # zcmt
    # cm.jt
    la s2, jump_table
    csrrw x0, 0x0017, s2
    cm.jt 1
jtreturn:
    li a5, 0xAE01
    bne a0, a5, print_error

    # cm.jalt
    cm.jalt 36

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

sub_popret:
    cm.push {ra},-16
    cm.popret {ra},16

sub_popretz:
    cm.push {ra},-16
    cm.popretz {ra},16

.p2align 6
jump_table:
    .4byte case0_handler
    .4byte case1_handler
    .4byte case2_handler
    .4byte case3_handler
    .4byte case4_handler
    .4byte case5_handler
    .4byte case6_handler
    .4byte case7_handler
    .4byte case8_handler
    .4byte case9_handler
    .4byte case10_handler
    .4byte case11_handler
    .4byte case12_handler
    .4byte case13_handler
    .4byte case14_handler
    .4byte case15_handler
    .4byte case16_handler
    .4byte case17_handler
    .4byte case18_handler
    .4byte case19_handler
    .4byte case20_handler
    .4byte case21_handler
    .4byte case22_handler
    .4byte case23_handler
    .4byte case24_handler
    .4byte case25_handler
    .4byte case26_handler
    .4byte case27_handler
    .4byte case28_handler
    .4byte case29_handler
    .4byte case30_handler
    .4byte case31_handler
    .4byte case32_handler
    .4byte case33_handler
    .4byte case34_handler
    .4byte case35_handler
    .4byte case36_handler
 
case0_handler:
    li a0, 0xAE00
    jal jtreturn
case1_handler:
    li a0, 0xAE01
    jal jtreturn 
case2_handler:
    li a0, 0xAE02
    jal jtreturn
case3_handler:
    li a0, 0xAE03
    jal jtreturn
case4_handler:
    li a0, 0xAE04
    jal jtreturn
case5_handler:
    li a0, 0xAE05
    jal jtreturn
case6_handler:
    li a0, 0xAE06
    jal jtreturn
case7_handler:
    li a0, 0xAE07
    jal jtreturn 
case8_handler:
    li a0, 0xAE08
    jal jtreturn
case9_handler:
    li a0, 0xAE09
    jal jtreturn
case10_handler:
    li a0, 0xAE0A
    jal jtreturn
case11_handler:
    li a0, 0xAE0B
    jal jtreturn
case12_handler:
    li a0, 0xAE0C
    jal jtreturn
case13_handler:
    li a0, 0xAE0D
    jal jtreturn 
case14_handler:
    li a0, 0xAE0E
    jal jtreturn
case15_handler:
    li a0, 0xAE0F
    jal jtreturn
case16_handler:
    li a0, 0xAE10
    jal jtreturn
case17_handler:
    li a0, 0xAE11
    jal jtreturn
case18_handler:
    li a0, 0xAE12
    jal jtreturn
case19_handler:
    li a0, 0xAE13
    jal jtreturn 
case20_handler:
    li a0, 0xAE14
    jal jtreturn
case21_handler:
    li a0, 0xAE15
    jal jtreturn
case22_handler:
    li a0, 0xAE16
    jal jtreturn
case23_handler:
    li a0, 0xAE17
    jal jtreturn
case24_handler:
    li a0, 0xAE18
    jal jtreturn
case25_handler:
    li a0, 0xAE19
    jal jtreturn
case26_handler:
    li a0, 0xAE1A
    jal jtreturn 
case27_handler:
    li a0, 0xAE1B
    jal jtreturn
case28_handler:
    li a0, 0xAE1C
    jal jtreturn
case29_handler:
    li a0, 0xAE1D
    jal jtreturn
case30_handler:
    li a0, 0xAE1F
    jal jtreturn
case31_handler:
    li a0, 0xAE20
    jal jtreturn
case32_handler:
    li a0, 0xAE21
    jal jtreturn 
case33_handler:
    li a0, 0xAE22
    jal jtreturn
case34_handler:
    li a0, 0xAE23
    jal jtreturn
case35_handler:
    li a0, 0xAE24
    jal jtreturn
case36_handler:
    li a0, 0xAE25
    ret

.section .data

pass:
  .string "passed!\n"
error:
  .string "error!\n"

.section .bss.stack
    .global boot_stack
boot_stack:
    .space 4096 * 4
    .global boot_stack_top
boot_stack_top:
