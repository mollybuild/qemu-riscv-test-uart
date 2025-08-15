        .file   "example.c"
        .option nopic
        .attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0_zaamo1p0_zalrsc1p0_zca1p0_zcmp1p0"
        .attribute unaligned_access, 0
        .attribute stack_align, 16
        .text
        .align  1
        .globl  foo1
        .type   foo1, @function
foo1:
        .cfi_startproc
        blt     a1,a0,.L8
        li      a0,0
        ret
.L8:
        cm.push {ra, s0-s1}, -16
        .cfi_offset 1, -12
        .cfi_offset 8, -8
        .cfi_offset 9, -4
        .cfi_def_cfa_offset 16
        cm.mvsa01       s0,s1
        call    foo2
        cm.mva01s       s0,s1
        call    foo2
        cm.mva01s       s0,s1
        call    foo2
        cm.mva01s       s0,s1
        call    foo1
        li      a0,0
        cm.popret       {ra, s0-s1}, 16
        .cfi_restore 9
        .cfi_restore 8
        .cfi_restore 1
        .cfi_def_cfa_offset 0
        .cfi_endproc
        .size   foo1, .-foo1
        .align  1
        .type   foo1.part.0, @function
foo1.part.0:
        .cfi_startproc
        cm.push {ra, s0-s1}, -16
        .cfi_offset 1, -12
        .cfi_offset 8, -8
        .cfi_offset 9, -4
        .cfi_def_cfa_offset 16
        cm.mvsa01       s0,s1
        call    foo2
        bgt     s0,s1,.L12
        cm.popret       {ra, s0-s1}, 16
        .cfi_remember_state
        .cfi_restore 9
        .cfi_restore 8
        .cfi_restore 1
        .cfi_def_cfa_offset 0
.L12:
        .cfi_restore_state
        cm.mva01s       s0,s1
        call    foo2
        cm.mva01s       s0,s1
        call    foo2
        cm.mva01s       s0,s1
        call    foo2
        cm.mva01s       s0,s1
        cm.pop  {ra, s0-s1}, 16
        .cfi_restore 9
        .cfi_restore 8
        .cfi_restore 1
        .cfi_def_cfa_offset 0
        tail    foo1
        .cfi_endproc
        .size   foo1.part.0, .-foo1.part.0
        .section        .text.startup,"ax",@progbits
        .align  1
        .globl  main
        .type   main, @function
main:
        .cfi_startproc
        cm.push {ra}, -16
        .cfi_offset 1, -4
        .cfi_def_cfa_offset 16
        li      a1,0
        li      a0,1
        call    foo2
        li      a0,1
        li      a1,0
        call    foo1.part.0
        li      a0,0
        cm.popret       {ra}, 16
        .cfi_restore 1
        .cfi_def_cfa_offset 0
        .cfi_endproc
        .size   main, .-main
        .ident  "GCC: (crosstool-NG UNKNOWN) 15.0.0 20240902 (experimental)"
        .section        .note.GNU-stack,"",@progbits
