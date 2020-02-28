	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$1, 4(%rsp)
	leaq	L_.str.3(%rip), %rbx
	leaq	L_.str.1(%rip), %r14
	leaq	L_.str.2(%rip), %r15
	leaq	L_.str(%rip), %r12
	movl	4(%rsp), %esi
	cmpl	$100, %esi
	jle	LBB0_2
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_3:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	callq	_printf
	incl	4(%rsp)
	movl	4(%rsp), %esi
	cmpl	$100, %esi
	jg	LBB0_10
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movslq	%esi, %rax
	imulq	$-2004318071, %rax, %rcx ## imm = 0x88888889
	shrq	$32, %rcx
	addl	%esi, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$3, %ecx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	leal	(%rcx,%rcx,2), %ecx
	cmpl	%ecx, %esi
	je	LBB0_3
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=1
	imulq	$1431655766, %rax, %rcx ## imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,2), %ecx
	cmpl	%ecx, %esi
	je	LBB0_6
## %bb.7:                               ##   in Loop: Header=BB0_2 Depth=1
	imulq	$1717986919, %rax, %rax ## imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$33, %rax
	addl	%ecx, %eax
	leal	(%rax,%rax,4), %eax
	cmpl	%eax, %esi
	je	LBB0_8
## %bb.9:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_printf
	incl	4(%rsp)
	movl	4(%rsp), %esi
	cmpl	$100, %esi
	jle	LBB0_2
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rdi
	jmp	LBB0_4
LBB0_8:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	jmp	LBB0_4
LBB0_10:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Fizz\n"

L_.str.2:                               ## @.str.2
	.asciz	"Buzz\n"

L_.str.3:                               ## @.str.3
	.asciz	"FizzBuzz\n"


.subsections_via_symbols
