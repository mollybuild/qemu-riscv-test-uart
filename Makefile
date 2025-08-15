# Tool paths
QEMU64   = /opt/qemu/bin/qemu-system-riscv64
QEMU32   = /opt/qemu/bin/qemu-system-riscv32
CC64     = /opt/riscv/bin/riscv64-unknown-linux-gnu-gcc
LD64     = /opt/riscv/bin/riscv64-unknown-linux-gnu-ld
OBJCOPY64 = /opt/riscv/bin/riscv64-unknown-linux-gnu-objcopy
OBJDUMP64 = /opt/riscv/bin/riscv64-unknown-linux-gnu-objdump
CC32     = /opt/riscv32-main/bin/riscv32-unknown-linux-gnu-gcc
LD32     = /opt/riscv32-main/bin/riscv32-unknown-linux-gnu-ld
OBJCOPY32 = /opt/riscv32-main/bin/riscv32-unknown-linux-gnu-objcopy
OBJDUMP32 = /opt/riscv32-main/bin/riscv32-unknown-linux-gnu-objdump

# Common flags
FLAGS    = -nostartfiles -g
QEMU_COMMON = -M virt -bios none -serial stdio -display none

# Architecture options
ARCH64_BASE   = -march=rv64gc -mabi=lp64d
ARCH32_BASE   = -march=rv32gc -mabi=ilp32d
ARCH64_K      = -march=rv64gc_zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh -mabi=lp64d
ARCH32_K      = -march=rv32gc_zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh -mabi=ilp32d
ARCH64_ZFINX  = -march=rv64imac_zfinx -mabi=lp64
ARCH32_ZFINX  = -march=rv32imac_zfinx -mabi=ilp32
ARCH64_ZCE    = -march=rv64g_zbb_zba_zca_zcb_zcmp_zcmt -mabi=lp64d
ARCH32_ZCE    = -march=rv32g_zbb_zba_zca_zcb_zcmp_zcmt -mabi=ilp32d
ARCH64_B      = -march=rv64g_zba_zbb_zbc_zbs -mabi=lp64d
ARCH32_B      = -march=rv32g_zba_zbb_zbc_zbs -mabi=ilp32d
ARCH64_P      = -march=rv64gp -mabi=lp64d
ARCH32_P      = -march=rv32gp -mabi=ilp32

# CPU options
CPU64_K      = rv64,zbkb=true,zbkc=true,zbkx=true,zknd=true,zkne=true,zknh=true,zksed=true,zksh=true
CPU32_K      = rv32,zbkb=true,zbkc=true,zbkx=true,zknd=true,zkne=true,zknh=true,zksed=true,zksh=true
CPU64_ZFINX  = rv64,f=false,d=false,zfa=false,zfinx=true
CPU32_ZFINX  = rv32,f=false,d=false,zfa=false,zfinx=true
CPU64_ZCE    = rv64,zcd=false,zca=true,zcb=true,zcmp=true,zbb=true,zba=true,zcmt=true
CPU32_ZCE    = rv32,zcd=false,zca=true,zcb=true,zcmp=true,zbb=true,zba=true,zcmt=true
CPU64_B      = rv64,zba=true,zbb=true,zbc=true,zbs=true
CPU32_B      = rv32,zba=true,zbb=true,zbc=true,zbs=true
CPU64_P      = rv64,x-p=true
CPU32_P      = rv32,x-p=true

# Default target
all: test64.img test32.img

# Pattern rules for building test images
test64-%.img: test64-%.elf
	$(OBJCOPY64) $< -I binary $@
	$(OBJDUMP64) -d $< > $(basename $@).asm

test64-%.elf: test64-%.o link.ld Makefile
	$(LD64) -T link.ld -o $@ $<

test32-%.img: test32-%.elf
	$(OBJCOPY32) $< -I binary $@
	$(OBJDUMP32) -d $< > $(basename $@).asm

test32-%.elf: test32-%.o link.ld Makefile
	$(LD32)  -T link.ld -o $@ $<

# Compilation rules for different extensions
test64-k.o: test64-k.s
	$(CC64) $(FLAGS) $(ARCH64_K) -c $< -o $@

test64-zfinx.o: test64-zfinx.s
	$(CC64) $(FLAGS) $(ARCH64_ZFINX) -c $< -o $@

test64-zce.o: test64-zce.s
	$(CC64) $(FLAGS) $(ARCH64_ZCE) -c $< -o $@

test64-B.o: test64-B.s
	$(CC64) $(FLAGS) $(ARCH64_B) -c $< -o $@

test64-P.o: test64-p.s
        $(CC64) $(FLAGS) $(ARCH64_P) -c $< -o $@

test32.o: test32.s
	$(CC32) $(FLAGS) $(ARCH32_BASE) -c $< -o $@

test32-k.o: test32-k.s
	$(CC32) $(FLAGS) $(ARCH32_K) -c $< -o $@

test32-zfinx.o: test32-zfinx.s
	$(CC32) $(FLAGS) $(ARCH32_ZFINX) -c $< -o $@

test32-zce.o: test32-zce.s
	$(CC32) $(FLAGS) $(ARCH32_ZCE) -c $< -o $@

test32-B.o: test32-B.s
	$(CC32) $(FLAGS) $(ARCH32_B) -c $< -o $@

test32-P.o: test32-p.s
        $(CC32) $(FLAGS) $(ARCH32_P) -c $< -o $@

# Run targets
run64: test64.img
	$(QEMU64) -cpu $(CPU64_B) $(QEMU_COMMON) -kernel $<

run32: test32.img
	$(QEMU32) -cpu $(CPU32_B) $(QEMU_COMMON) -kernel $<

run64-k: test64-k.img
	$(QEMU64) -cpu $(CPU64_K) $(QEMU_COMMON) -kernel $<

run32-k: test32-k.img
	$(QEMU32) -cpu $(CPU32_K) $(QEMU_COMMON) -kernel $<

run64-zfinx: test64-zfinx.img
	$(QEMU64) -cpu $(CPU64_ZFINX) $(QEMU_COMMON) -kernel $<

run32-zfinx: test32-zfinx.img
	$(QEMU32) -cpu $(CPU32_ZFINX) $(QEMU_COMMON) -kernel $<

run64-zce: test64-zce.img
	$(QEMU64) -cpu $(CPU64_ZCE) $(QEMU_COMMON) -kernel $<

run32-zce: test32-zce.img
	$(QEMU32) -cpu $(CPU32_ZCE) $(QEMU_COMMON) -kernel $<

run64-B: test64-B.img
	$(QEMU64) -cpu $(CPU64_B) $(QEMU_COMMON) -kernel $<

run32-B: test32-B.img
	$(QEMU32) -cpu $(CPU32_B) $(QEMU_COMMON) -kernel $<

run64-P: test64-P.img
        $(QEMU64) -cpu $(CPU64_P) $(QEMU_COMMON) -kernel $<

run32-P: test32-P.img
        $(QEMU32) -cpu $(CPU32_P) $(QEMU_COMMON) -kernel $<

# GDB targets (similar pattern as run targets)
gdb64: test64.img
	$(QEMU64) -cpu $(CPU64_B) -s -S $(QEMU_COMMON) -kernel $<

gdb32: test32.img
	$(QEMU32) -cpu $(CPU32_B) -s -S $(QEMU_COMMON) -kernel $<

# ... similar for other gdb targets ...

# Clean
clean:
	rm -f *.o *.elf *.img *.asm

.PHONY: all clean run64 run32 gdb64 gdb32
