	.file	"switch.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	testl	%edi, %edi
	js	.L4
	cmpl	$1, %edi
	jle	.L5
	cmpl	$2, %edi
	jne	.L6
	movl	$0, %eax
.L3:
	addl	$2, %eax
.L2:
	addl	$3, %eax
	ret
.L5:
	movl	$1, %eax
	jmp	.L3
.L4:
	movl	$0, %eax
	jmp	.L2
.L6:
	movl	$0, %eax
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (GNU) 8.2.1 20181127"
	.section	.note.GNU-stack,"",@progbits
