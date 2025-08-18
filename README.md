# QEMU Test for RISC-V B,K,P,Zce,Zfinx Extension

## 1\. GCC Toolchain

Toolchain for B,K,Zce,Zfinx (gcc version >= 15):

```bash
git clone https://github.com/riscv-collab/riscv-gnu-toolchain.git
```

Toolchain for 0.9.11 P:

```bash
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain.git && cd riscv-gnu-toolchain
$ mv gcc gcc.bak $$ mv binutils binutils.bak
$ git clone https://github.com/plctlab/riscv-gcc.git -b riscv-gcc-p-ext gcc
$ git clone https://github.com/plctlab/riscv-binutils-gdb.git -b riscv-binutils-p-ext binutils
```

Toolchain for J.Hauser P:

```bash
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain.git && cd riscv-gnu-toolchain
$ mv gcc gcc.bak $$ mv binutils binutils.bak
$ git clone https://github.com/ruyisdk/riscv-gcc.git -b p-dev gcc
$ git clone https://github.com/ruyisdk/riscv-binutils.git -b p-dev binutils
```

Configure for P extension:

```bash
$ cd riscv-gnu-toolchain
$ ./configure --prefix=/path/to//toolchain
```

`--prefix` set the install path for toolchain.

Compile toolchain:

```bash
$ make linux -j$(nproc)
```

Add to path:
```bash
$ export PATH=$PATH:/path/to/toolchain/bin
```

## 2\. QEMU

QEMU support B,K,Zce,Zfinx: https://gitlab.com/qemu-project/qemu.git

QEMU support 0.9.11 P: https://github.com/plctlab/plct-qemu.git -b plct-rvp

QEMU support J.Hauser P: https://github.com/mollybuild/qemu

```bash
$ ./configure --target-list=riscv64-softmmu,riscv32-softmmu,riscv64-linux-user,riscv32-linux-user
$ make -j$(nproc)
```

## 3\. Run testcases

Get testcases(this respository):

```bash
$ cd ~
$ git clone https://github.com/mollybuild/qemu-riscv-test-uart.git
```

Change the paths of qemu in Makefile:
```Makefile
QEMU64	= /path/to/qemu-system-riscv64
QEMU32	= /path/to/qemu-system-riscv32
```

Run testcases:

```bash
$ make run64-P
passed!
```

`passed!` means all testcases passed. Otherwise `error!`.

------

Use GDB to debug:

```bash
$ make gdb64
```
Then open another terminal and open gdb in the same path:

```bash
$ riscv64-unknown-linux-gnu-gdb -x .gdbinit64
```

GDB window:

```
0x0000000000001000 in ?? ()
Breakpoint 1 at 0x80000000: file test64.s, line 5.

Breakpoint 1, _start () at test64.s:5
5           li s6, 0x0001000100010001
(gdb) n
6           li s7, 0x0002000200020002
(gdb) n
7           add16 s8, s6, s7
(gdb) n
10          csrr    t0, mhartid
(gdb) info reg s6 s7 s8
s6             0x1000100010001  281479271743489
s7             0x2000200020002  562958543486978
s8             0x3000300030003  844437815230467
```

