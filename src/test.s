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
	movb	$99, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$98, %eax
	je	.L2
	cmpl	$99, %eax
	je	.L3
	cmpl	$97, %eax
	jne	.L6
	movl	$97, -4(%rbp)
	jmp	.L5
.L2:
	movl	$98, -4(%rbp)
	jmp	.L5
.L3:
	movsbl	-5(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L6:
	nop
.L5:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.globl	test
	.type	test, @function
test:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movb	$99, -5(%rbp)
	cmpb	$97, -5(%rbp)
	jne	.L8
	movl	$97, -4(%rbp)
	jmp	.L11
.L8:
	cmpb	$98, -5(%rbp)
	jne	.L10
	movl	$98, -4(%rbp)
	jmp	.L11
.L10:
	cmpb	$99, -5(%rbp)
	jne	.L11
	movsbl	-5(%rbp), %eax
	movl	%eax, -4(%rbp)
.L11:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	test, .-test
	.ident	"GCC: (GNU) 8.2.1 20181127"
	.section	.note.GNU-stack,"",@progbits
