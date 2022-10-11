This case describes the error that occurs when RISC-V objdump decodes dwarf information

1 Run the following command:
```
as test. S -o test.S.o

objdump -WF test.S.o > test.S.dwarf

cat test.S.dwarf
```

You will get such error dwarf information:
```
Contents of the .debug_ frame section:

00000000 0000000c ffffffff CIE "" cf=1 df=-4 ra=1

LOC CFA

00000000 sp+0

00000010 00000024 00000000 FDE cie=00000000 pc=00000000..0000004a

LOC CFA ra s0

00000000 sp+0 u u

00000002 sp+48 u u

00000006 sp+48 c-4 c-8

DW_ CFA_??? (User defined call frame op: 0x3c)

00000008 s0+0 c-4 c-8
```


2. If you use [patch][https://github.com/zeng-xiao/gnu-bug-fix/blob/main/EG-769/0001-RISC-V-Fix-R_RISCV_SUB6-dwarf-information-processing.patch], compile and generate new binutils, and use new RISC-V objdump, you will get correct dwarf information, such as:
```
Contents of the .debug_frame section:

00000000 0000000c ffffffff CIE "" cf=1 df=-4 ra=1
   LOC   CFA
00000000 sp+0

00000010 00000024 00000000 FDE cie=00000000 pc=00000000..0000004a
   LOC   CFA      ra    s0
00000000 sp+0     u     u
00000002 sp+48    u     u
00000006 sp+48    c-4   c-8
00000008 s0+0     c-4   c-8
00000044 s0+0     u     c-8
00000046 sp+48    u     u
00000048 sp+0     u     u
```
