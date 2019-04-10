	.file	"test.c"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L2
	movl	$5, -8(%rbp)
	jmp	.L4
.L2:
	movl	$7, -4(%rbp)
.L4:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.ident	"GCC: (GNU) 8.2.1 20181127"
	.section	.note.GNU-stack,"",@progbits
