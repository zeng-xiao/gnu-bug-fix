#!/usr/bin/env bash
set -xe

YOUR-RISCV-as test.S -o test.o
YOUR-RISCV-objdump -WF test.o > objdump-WF.test.o.log
cat objdump-WF.test.o.log
