# QEMU Test for RISC-V P Extension

## 1\. GCC Toolchain

Get toolchain from plct-lab:

```bash
$ cd ~
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain.git
$ git clone https://github.com/plctlab/riscv-gcc.git -b riscv-gcc-p-ext
$ git clone https://github.com/plctlab/riscv-binutils-gdb.git -b riscv-binutils-p-ext
```

Configure:

```bash
$ cd riscv-gnu-toolchain
# 64bit:
$ ./configure --prefix=/path/to/64bit/toolchain --with-arch=rv64gp --with-abi=lp64d --with-gcc-src=/home/*username*/riscv-gcc --with-binutils-src=/home/*username*/riscv-binutils-gdb
# or 32bit:
$ ./configure --prefix=/path/to/32bit/toolchain --with-arch=rv32gp --with-abi=ilp32 --with-gcc-src=/home/*username*/riscv-gcc --with-binutils-src=/home/*username*/riscv-binutils-gdb
```

`--prefix` set the install path for toolchain, `--with-gcc` and `--with-binutils-src` set the path of gcc and gdb cloned before.

Compile toolchain:

```bash
$ make linux -j16
```

Add to path:
```bash
$ export PATH=$PATH:/path/to/toolchain/bin
```

## 2\. QEMU

```bash
$ cd ~
$ git clone https://github.com/plctlab/plct-qemu.git -b plct-rvp
$ cd plct-qemu
$ ./configure --target-list=riscv64-softmmu,riscv32-softmmu,riscv64-linux-user,riscv32-linux-user
$ make -j16
```

## 4\. Run testcases

Get testcases(this respository):

```bash
$ cd ~
$ git clone https://github.com/dajunHuang/riscv-hello-uart.git
```

Change the paths of qemu in Makefile:
```Makefile
QEMU64	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv64
QEMU32	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv32
```

Run testcases:

```bash
$ make run64
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

