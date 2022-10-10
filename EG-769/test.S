	.file	"lv_mem.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.sbss.zero_mem,"aw",@nobits
	.align	2
	.type	zero_mem, @object
	.size	zero_mem, 4
zero_mem:
	.zero	4
	.section	.bss.mem_buf1_32,"aw",@nobits
	.align	2
	.type	mem_buf1_32, @object
	.size	mem_buf1_32, 32
mem_buf1_32:
	.zero	32
	.section	.bss.mem_buf2_32,"aw",@nobits
	.align	2
	.type	mem_buf2_32, @object
	.size	mem_buf2_32, 32
mem_buf2_32:
	.zero	32
	.section	.data.mem_buf_small,"aw"
	.align	2
	.type	mem_buf_small, @object
	.size	mem_buf_small, 16
mem_buf_small:
	.word	mem_buf1_32
	.half	32
	.byte	0
	.zero	1
	.word	mem_buf2_32
	.half	32
	.byte	0
	.zero	1
	.section	.text.lv_mem_alloc,"ax",@progbits
	.align	1
	.globl	lv_mem_alloc
	.type	lv_mem_alloc, @function
lv_mem_alloc:
.LFB37:
	.file 1 "../../thirdparty/lvgl/lvgl/src/lv_misc/lv_mem.c"
	.loc 1 112 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 113 7
	lw	a5,-36(s0)
	bne	a5,zero,.L2
	.loc 1 114 16
	lui	a5,%hi(zero_mem)
	addi	a5,a5,%lo(zero_mem)
	j	.L3
.L2:
	.loc 1 118 18
	lw	a5,-36(s0)
	addi	a5,a5,3
	.loc 1 118 10
	andi	a5,a5,-4
	sw	a5,-36(s0)
	.loc 1 119 12
	sw	zero,-20(s0)
	.loc 1 140 13
	lw	a0,-36(s0)
	call	malloc
	sw	a0,-20(s0)
	.loc 1 171 12
	lw	a5,-20(s0)
.L3:
	.loc 1 172 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	lv_mem_alloc, .-lv_mem_alloc
	.text
.Letext0:
	.file 2 "../../kernel/nuttx/e315/nuttx-export-10.2.0/include/arch/types.h"
	.file 3 "../../kernel/nuttx/e315/nuttx-export-10.2.0/include/stdint.h"
	.file 4 "../../kernel/nuttx/e315/nuttx-export-10.2.0/include/sys/types.h"
	.file 5 "../../thirdparty/lvgl/lvgl/src/lv_misc/lv_mem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x34
	.byte	0x1c
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x41
	.byte	0x1c
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x6c
	.byte	0x1c
	.4byte	0x94
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xb0
	.byte	0x1d
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xb3
	.byte	0x1d
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0xbb
	.byte	0x1d
	.4byte	0x60
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x73
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x8
	.byte	0x5
	.byte	0x35
	.byte	0x9
	.4byte	0x10d
	.byte	0x7
	.string	"p"
	.byte	0x5
	.byte	0x36
	.byte	0xc
	.4byte	0xbf
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x37
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x39
	.byte	0x3
	.4byte	0xdb
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x53
	.byte	0x11
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	zero_mem
	.byte	0xb
	.4byte	0x9b
	.4byte	0x13b
	.byte	0xc
	.4byte	0x94
	.byte	0x1f
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.4byte	0x12b
	.byte	0x5
	.byte	0x3
	.4byte	mem_buf1_32
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	0x12b
	.byte	0x5
	.byte	0x3
	.4byte	mem_buf2_32
	.byte	0xb
	.4byte	0x10d
	.4byte	0x16f
	.byte	0xc
	.4byte	0x94
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5c
	.byte	0x15
	.4byte	0x15f
	.byte	0x5
	.byte	0x3
	.4byte	mem_buf_small
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6f
	.byte	0x8
	.4byte	0xbf
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6f
	.byte	0x1c
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x77
	.byte	0xc
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"mem_buf_small"
.LASF16:
	.string	"size_t"
.LASF22:
	.string	"mem_buf1_32"
.LASF29:
	.string	"used"
.LASF5:
	.string	"short unsigned int"
.LASF25:
	.string	"alloc"
.LASF10:
	.string	"long long unsigned int"
.LASF23:
	.string	"mem_buf2_32"
.LASF19:
	.string	"size"
.LASF8:
	.string	"long unsigned int"
.LASF28:
	.string	"/home/user/Downloads/colleague/likun/BECM-449/out/e315_jsmax_riscv32"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"lv_mem_buf_t"
.LASF11:
	.string	"_size_t"
.LASF12:
	.string	"unsigned int"
.LASF21:
	.string	"zero_mem"
.LASF13:
	.string	"uint8_t"
.LASF4:
	.string	"_uint16_t"
.LASF30:
	.string	"lv_mem_alloc"
.LASF9:
	.string	"long long int"
.LASF17:
	.string	"char"
.LASF26:
	.string	"GNU C17 10.1.0 -mabi=ilp32f -march=rv32imafc -mtune=rocket -march=rv32imafc -march=rv32imafc -march=rv32imafc -g -g -O0 -fno-exceptions -fcheck-new -ffunction-sections -fdata-sections -fno-omit-frame-pointer -fno-common -fno-builtin -fno-strict-aliasing"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint16_t"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF27:
	.string	"../../thirdparty/lvgl/lvgl/src/lv_misc/lv_mem.c"
.LASF18:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"_uint32_t"
.LASF3:
	.string	"_uint8_t"
	.ident	"GCC: (GNU) 10.1.0"
