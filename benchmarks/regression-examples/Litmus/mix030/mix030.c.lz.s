	.file	"/home/naling/src/examples/tso/regression-examples/mix030/mix030.c.lz.opt.bc"
	.file	1 "/home/naling/src/examples/tso/regression-examples/mix030/mix030.c"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"",@progbits
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.text
	.globl	P0
	.align	16, 0x90
	.type	P0,@function
P0:                                     # @P0
.Ltmp1:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 32 0                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:32:0
# BB#0:                                 # %entry
	subl	$44, %esp
.Ltmp2:
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%eax, 40(%esp)
	movl	$8, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$a, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 34 3 prologue_end     # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:34:3
.Ltmp3:
	movl	$1, a
	movl	$8, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$a, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$9, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$x, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 35 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:35:3
	movl	$1, x
	movl	$9, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$x, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$1, %eax
	.loc	1 36 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:36:3
	addl	$44, %esp
	ret
.Ltmp4:
.Ltmp5:
	.size	P0, .Ltmp5-P0
.Lfunc_end0:
.Ltmp6:
	.cfi_endproc
.Leh_func_end0:

	.globl	P1
	.align	16, 0x90
	.type	P1,@function
P1:                                     # @P1
.Ltmp8:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 40 0                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:40:0
# BB#0:                                 # %entry
	subl	$44, %esp
.Ltmp9:
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%eax, 40(%esp)
	movl	$18, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$x, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 42 3 prologue_end     # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:42:3
.Ltmp10:
	movl	$2, x
	movl	$18, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$x, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$19, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$y, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 43 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:43:3
	movl	$1, y
	movl	$19, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$y, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$1, %eax
	.loc	1 44 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:44:3
	addl	$44, %esp
	ret
.Ltmp11:
.Ltmp12:
	.size	P1, .Ltmp12-P1
.Lfunc_end1:
.Ltmp13:
	.cfi_endproc
.Leh_func_end1:

	.globl	P2
	.align	16, 0x90
	.type	P2,@function
P2:                                     # @P2
.Ltmp15:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 48 0                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:48:0
# BB#0:                                 # %entry
	subl	$44, %esp
.Ltmp16:
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%eax, 40(%esp)
	movl	$28, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$y, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 50 3 prologue_end     # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:50:3
.Ltmp17:
	movl	$2, y
	movl	$28, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$y, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$29, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$z, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 51 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:51:3
	movl	$1, z
	movl	$29, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$z, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$1, %eax
	.loc	1 52 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:52:3
	addl	$44, %esp
	ret
.Ltmp18:
.Ltmp19:
	.size	P2, .Ltmp19-P2
.Lfunc_end2:
.Ltmp20:
	.cfi_endproc
.Leh_func_end2:

	.globl	P3
	.align	16, 0x90
	.type	P3,@function
P3:                                     # @P3
.Ltmp23:
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 56 0                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:56:0
# BB#0:                                 # %entry
	pushl	%esi
.Ltmp24:
	.cfi_def_cfa_offset 8
	subl	$40, %esp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %esi, -8
	movl	48(%esp), %eax
	movl	%eax, 36(%esp)
	movl	$38, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$z, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 58 3 prologue_end     # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:58:3
.Ltmp27:
	movl	$2, z
	movl	$38, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$z, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$39, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$z, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_pre
	.loc	1 59 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:59:3
	movl	z, %esi
	movl	$39, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$z, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_post
	movl	%esi, 32(%esp)
	movl	$41, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$a, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_pre
	.loc	1 60 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:60:3
	movl	a, %esi
	movl	$41, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$a, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_post
	movl	%esi, 28(%esp)
	.loc	1 61 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:61:3
	movl	32(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$.L.str, (%esp)
	calll	printf
	xorb	%al, %al
	.loc	1 62 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:62:3
	cmpl	$2, 32(%esp)
	jne	.LBB3_2
# BB#1:                                 # %land.rhs
	cmpl	$0, 28(%esp)
	sete	%al
.Ltmp28:
.LBB3_2:                                # %land.end
	movzbl	%al, %eax
	.loc	1 63 1                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:63:1
	addl	$40, %esp
	popl	%esi
	ret
.Ltmp29:
.Ltmp30:
	.size	P3, .Ltmp30-P3
.Lfunc_end3:
.Ltmp31:
	.cfi_endproc
.Leh_func_end3:

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Ltmp34:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 66 0                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:66:0
# BB#0:                                 # %entry
	pushl	%esi
.Ltmp35:
	.cfi_def_cfa_offset 8
	subl	$72, %esp
.Ltmp36:
	.cfi_def_cfa_offset 80
.Ltmp37:
	.cfi_offset %esi, -8
	movl	$0, 68(%esp)
	movl	$74, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$z, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	.loc	1 69 3 prologue_end     # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:69:3
.Ltmp38:
	movl	$0, z
	movl	$74, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$z, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$75, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$y, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	movl	$0, y
	movl	$75, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$y, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$76, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$x, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	movl	$0, x
	movl	$76, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$x, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	movl	$77, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$a, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_pre
	movl	$0, a
	movl	$77, 20(%esp)
	movl	$32, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$a, 4(%esp)
	movl	$5, (%esp)
	calll	clap_store_post
	leal	64(%esp), %eax
	.loc	1 71 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:71:3
	movl	%eax, (%esp)
	movl	$0, 12(%esp)
	movl	$P0, 8(%esp)
	movl	$0, 4(%esp)
	calll	clap_thread_create
	leal	60(%esp), %eax
	.loc	1 72 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:72:3
	movl	%eax, (%esp)
	movl	$0, 12(%esp)
	movl	$P1, 8(%esp)
	movl	$0, 4(%esp)
	calll	clap_thread_create
	leal	56(%esp), %eax
	.loc	1 73 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:73:3
	movl	%eax, (%esp)
	movl	$0, 12(%esp)
	movl	$P2, 8(%esp)
	movl	$0, 4(%esp)
	calll	clap_thread_create
	leal	52(%esp), %eax
	.loc	1 74 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:74:3
	movl	%eax, (%esp)
	movl	$0, 12(%esp)
	movl	$P3, 8(%esp)
	movl	$0, 4(%esp)
	calll	clap_thread_create
	.loc	1 76 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:76:3
	movl	64(%esp), %eax
	leal	48(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	clap_thread_join
	.loc	1 77 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:77:3
	movl	60(%esp), %eax
	leal	44(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	clap_thread_join
	.loc	1 78 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:78:3
	movl	56(%esp), %eax
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	clap_thread_join
	.loc	1 79 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:79:3
	movl	52(%esp), %eax
	leal	36(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	clap_thread_join
	movl	$94, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$x, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_pre
	.loc	1 82 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:82:3
	movl	x, %esi
	movl	$94, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$x, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_post
	cmpl	$2, %esi
	jne	.LBB4_5
# BB#1:                                 # %land.lhs.true
	movl	$97, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$y, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_pre
	movl	y, %esi
	movl	$97, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$y, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_post
	cmpl	$2, %esi
	jne	.LBB4_5
# BB#2:                                 # %land.lhs.true9
	movl	$100, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$z, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_pre
	movl	z, %esi
	movl	$100, 16(%esp)
	movl	$32, 12(%esp)
	movl	$0, 8(%esp)
	movl	$z, 4(%esp)
	movl	$4, (%esp)
	calll	clap_load_post
	cmpl	$2, %esi
	jne	.LBB4_5
# BB#3:                                 # %land.lhs.true11
	cmpl	$0, 36(%esp)
	je	.LBB4_5
# BB#4:                                 # %if.then
	.loc	1 83 5                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:83:5
.Ltmp39:
	movl	$.L.str1, (%esp)
	calll	printf
	.loc	1 84 5                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:84:5
	movl	$.L.str2, (%esp)
	calll	printf
.Ltmp40:
.LBB4_5:                                # %if.end
	xorl	%eax, %eax
	.loc	1 87 3                  # /home/naling/src/examples/tso/regression-examples/mix030/mix030.c:87:3
	addl	$72, %esp
	popl	%esi
	ret
.Ltmp41:
.Ltmp42:
	.size	main, .Ltmp42-main
.Lfunc_end4:
.Ltmp43:
	.cfi_endproc
.Leh_func_end4:

	.type	a,@object               # @a
	.comm	a,4,4
	.type	x,@object               # @x
	.comm	x,4,4
	.type	y,@object               # @y
	.comm	y,4,4
	.type	z,@object               # @z
	.comm	z,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "\n %%%% (EAX3=%d, EBX3=%d) %%%%"
	.size	.L.str, 31

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "\n@@@CLAP: There is a SC violation! \n"
	.size	.L.str1, 37

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "\033[1;31m SC Violation!!! \033[0m\n"
	.size	.L.str2, 30

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	754                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	4                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x2eb DW_TAG_compile_unit
	.ascii	 "clang version 3.0 (tags/RELEASE_30/final)" # DW_AT_producer
	.byte	0
	.short	12                      # DW_AT_language
	.ascii	 "/home/naling/src/examples/tso/regression-examples/mix030/mix030.c" # DW_AT_name
	.byte	0
	.long	0                       # DW_AT_entry_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.ascii	 "/home/naling/src/inspect-0.3" # DW_AT_comp_dir
	.byte	0
	.byte	2                       # Abbrev [2] 0x9f:0xc DW_TAG_base_type
	.ascii	 "long int"             # DW_AT_name
	.byte	0
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0xab:0x10 DW_TAG_variable
	.byte	97                      # DW_AT_name
	.byte	0
	.long	159                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	5                       # DW_AT_location
	.byte	3
	.long	a
	.byte	3                       # Abbrev [3] 0xbb:0x10 DW_TAG_variable
	.byte	120                     # DW_AT_name
	.byte	0
	.long	159                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	5                       # DW_AT_location
	.byte	3
	.long	x
	.byte	3                       # Abbrev [3] 0xcb:0x10 DW_TAG_variable
	.byte	121                     # DW_AT_name
	.byte	0
	.long	159                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	5                       # DW_AT_location
	.byte	3
	.long	y
	.byte	3                       # Abbrev [3] 0xdb:0x10 DW_TAG_variable
	.byte	122                     # DW_AT_name
	.byte	0
	.long	159                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	5                       # DW_AT_location
	.byte	3
	.long	z
	.byte	4                       # Abbrev [4] 0xeb:0x50 DW_TAG_subprogram
	.long	315                     # DW_AT_sibling
	.ascii	 "P0"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	315                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.long	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	84
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x106:0xe DW_TAG_formal_parameter
	.ascii	 "arg"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	315                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	40
	.byte	6                       # Abbrev [6] 0x114:0x26 DW_TAG_lexical_block
	.long	.Ltmp3                  # DW_AT_low_pc
	.long	.Ltmp4                  # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x11d:0xe DW_TAG_variable
	.ascii	 "EAX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.byte	7                       # Abbrev [7] 0x12b:0xe DW_TAG_variable
	.ascii	 "EBX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	32
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x13b:0x2 DW_TAG_pointer_type
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x13d:0x50 DW_TAG_subprogram
	.long	397                     # DW_AT_sibling
	.ascii	 "P1"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	315                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.long	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	84
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x158:0xe DW_TAG_formal_parameter
	.ascii	 "arg"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	315                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	40
	.byte	6                       # Abbrev [6] 0x166:0x26 DW_TAG_lexical_block
	.long	.Ltmp10                 # DW_AT_low_pc
	.long	.Ltmp11                 # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x16f:0xe DW_TAG_variable
	.ascii	 "EAX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.byte	7                       # Abbrev [7] 0x17d:0xe DW_TAG_variable
	.ascii	 "EBX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	32
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x18d:0x50 DW_TAG_subprogram
	.long	477                     # DW_AT_sibling
	.ascii	 "P2"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	315                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.long	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	84
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x1a8:0xe DW_TAG_formal_parameter
	.ascii	 "arg"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	315                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	40
	.byte	6                       # Abbrev [6] 0x1b6:0x26 DW_TAG_lexical_block
	.long	.Ltmp17                 # DW_AT_low_pc
	.long	.Ltmp18                 # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x1bf:0xe DW_TAG_variable
	.ascii	 "EAX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.byte	7                       # Abbrev [7] 0x1cd:0xe DW_TAG_variable
	.ascii	 "EBX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	32
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x1dd:0x50 DW_TAG_subprogram
	.long	557                     # DW_AT_sibling
	.ascii	 "P3"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	315                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.long	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	84
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x1f8:0xe DW_TAG_formal_parameter
	.ascii	 "arg"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	315                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.byte	6                       # Abbrev [6] 0x206:0x26 DW_TAG_lexical_block
	.long	.Ltmp27                 # DW_AT_low_pc
	.long	.Ltmp28                 # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x20f:0xe DW_TAG_variable
	.ascii	 "EAX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	32
	.byte	7                       # Abbrev [7] 0x21d:0xe DW_TAG_variable
	.ascii	 "EBX"                  # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	28
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x22d:0x9d DW_TAG_subprogram
	.long	714                     # DW_AT_sibling
	.ascii	 "main"                 # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	714                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.long	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	84
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	6                       # Abbrev [6] 0x24a:0x7f DW_TAG_lexical_block
	.long	.Ltmp38                 # DW_AT_low_pc
	.long	.Ltmp41                 # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x253:0xe DW_TAG_variable
	.ascii	 "t0"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	742                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.asciz	 "\300"
	.byte	7                       # Abbrev [7] 0x261:0xd DW_TAG_variable
	.ascii	 "t1"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	742                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	60
	.byte	7                       # Abbrev [7] 0x26e:0xd DW_TAG_variable
	.ascii	 "t2"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	742                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	56
	.byte	7                       # Abbrev [7] 0x27b:0xd DW_TAG_variable
	.ascii	 "t3"                   # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	742                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	52
	.byte	7                       # Abbrev [7] 0x288:0x10 DW_TAG_variable
	.ascii	 "cond0"                # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	48
	.byte	7                       # Abbrev [7] 0x298:0x10 DW_TAG_variable
	.ascii	 "cond1"                # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	44
	.byte	7                       # Abbrev [7] 0x2a8:0x10 DW_TAG_variable
	.ascii	 "cond2"                # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	40
	.byte	7                       # Abbrev [7] 0x2b8:0x10 DW_TAG_variable
	.ascii	 "cond3"                # DW_AT_name
	.byte	0
	.byte	1                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	159                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x2ca:0x7 DW_TAG_base_type
	.ascii	 "int"                  # DW_AT_name
	.byte	0
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x2d1:0x15 DW_TAG_base_type
	.ascii	 "long unsigned int"    # DW_AT_name
	.byte	0
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	9                       # Abbrev [9] 0x2e6:0xf DW_TAG_typedef
	.long	721                     # DW_AT_type
	.ascii	 "pthread_t"            # DW_AT_name
	.byte	0
	.byte	0                       # End Of Children Mark
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	8                       # DW_FORM_string
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	82                      # DW_AT_entry_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	6                       # DW_FORM_data4
	.byte	27                      # DW_AT_comp_dir
	.byte	8                       # DW_FORM_string
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	1                       # DW_AT_sibling
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	12                      # DW_FORM_flag
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	8                       # DW_FORM_string
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_pubnames,"",@progbits
.Lset0 = .Lpubnames_end1-.Lpubnames_begin1 # Length of Public Names Info
	.long	.Lset0
.Lpubnames_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset1 = .Linfo_end1-.Linfo_begin1      # Compilation Unit Length
	.long	.Lset1
	.long	235                     # DIE offset
	.asciz	 "P0"                   # External Name
	.long	171                     # DIE offset
	.asciz	 "a"                    # External Name
	.long	317                     # DIE offset
	.asciz	 "P1"                   # External Name
	.long	397                     # DIE offset
	.asciz	 "P2"                   # External Name
	.long	477                     # DIE offset
	.asciz	 "P3"                   # External Name
	.long	557                     # DIE offset
	.asciz	 "main"                 # External Name
	.long	187                     # DIE offset
	.asciz	 "x"                    # External Name
	.long	203                     # DIE offset
	.asciz	 "y"                    # External Name
	.long	219                     # DIE offset
	.asciz	 "z"                    # External Name
	.long	0                       # End Mark
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset2 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset2
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset3 = .Linfo_end1-.Linfo_begin1      # Compilation Unit Length
	.long	.Lset3
	.long	0                       # End Mark
.Lpubtypes_end1:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.section	".note.GNU-stack","",@progbits
