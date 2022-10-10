#!/usr/bin/env bash
set -xe

YOUR-RISCV-as test.S -o test.o
YOUR-RISCV-objdump -WF test.o > objdump-WF.test.o.log
cat objdump-WF.test.o.log

<<!
Contents of the .debug_frame section:


00000000 0000000c ffffffff CIE "" cf=1 df=-4 ra=1
   LOC   CFA      
00000000 sp+0     

00000010 00000024 00000000 FDE cie=00000000 pc=00000000..0000004a
   LOC   CFA      ra    s0    
00000000 sp+0     u     u     
00000002 sp+48    u     u     
00000006 sp+48    c-4   c-8   
  DW_CFA_??? (User defined call frame op: 0x3c)
00000008 s0+0     c-4   c-8
!
