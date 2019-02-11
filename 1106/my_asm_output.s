	.file	"1106.c"
	.text
	.globl	create_queue
	.type	create_queue, @function
create_queue:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	$2, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	create_queue, .-create_queue
	.globl	remove_queue
	.type	remove_queue, @function
remove_queue:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	remove_queue, .-remove_queue
	.globl	is_Empty
	.type	is_Empty, @function
is_Empty:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L5
	movl	$1, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	is_Empty, .-is_Empty
	.globl	is_Full
	.type	is_Full, @function
is_Full:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	is_Full, .-is_Full
	.globl	push
	.type	push, @function
push:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L11
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
.L11:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	leaq	4(%rdx), %rcx
	movl	-12(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	push, .-push
	.globl	front
	.type	front, @function
front:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	addq	$4, %rdx
	movl	(%rax,%rdx,4), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	front, .-front
	.globl	pop
	.type	pop, @function
pop:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	addq	$4, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L15
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L15:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	pop, .-pop
	.globl	bfs
	.type	bfs, @function
bfs:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	create_queue
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	push
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	jmp	.L18
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pop
	movl	%eax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L19
.L21:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L20
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	push
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
.L20:
	addl	$1, -24(%rbp)
.L19:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L21
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_Empty
	testl	%eax, %eax
	je	.L22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	remove_queue
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	bfs, .-bfs
	.section	.rodata
.LC0:
	.string	"rt"
.LC1:
	.string	"input"
.LC2:
	.string	"%d"
.LC3:
	.string	"%d\n"
.LC4:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -280(%rbp)
	movq	stdin(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	freopen@PLT
	leaq	-168(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-168(%rbp), %edx
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movslq	%edx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movslq	%edx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -112(%rbp)
	movl	$0, -128(%rbp)
	jmp	.L24
.L25:
	movl	-168(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx
	movl	-128(%rbp), %eax
	cltq
	movq	%rcx, (%rdx,%rax,8)
	addl	$1, -128(%rbp)
.L24:
	movl	-168(%rbp), %eax
	cmpl	%eax, -128(%rbp)
	jl	.L25
	movl	$0, -124(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L26
.L30:
	movl	$0, -136(%rbp)
.L29:
	leaq	-164(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-164(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movl	-132(%rbp), %eax
	cltq
	movq	(%rdx,%rax,8), %rdx
	movl	-136(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	leal	-1(%rcx), %eax
	movl	%eax, (%rdx)
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	je	.L46
	addl	$1, -136(%rbp)
	jmp	.L29
.L46:
	nop
	addl	$1, -132(%rbp)
.L26:
	movl	-168(%rbp), %eax
	cmpl	%eax, -132(%rbp)
	jl	.L30
	movl	-168(%rbp), %edx
	movl	-168(%rbp), %eax
	imull	%eax, %edx
	movq	%rsp, %rax
	movq	%rax, %r12
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movslq	%edx, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movslq	%edx, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%edx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -96(%rbp)
	movl	-168(%rbp), %edx
	movl	-168(%rbp), %eax
	imull	%edx, %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -224(%rbp)
	movq	$0, -216(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	movq	$0, -232(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -140(%rbp)
	jmp	.L31
.L32:
	movq	-96(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-80(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, (%rax,%rdx,4)
	addl	$1, -140(%rbp)
.L31:
	movl	-168(%rbp), %edx
	movl	-168(%rbp), %eax
	imull	%edx, %eax
	cmpl	%eax, -140(%rbp)
	jl	.L32
	movl	$0, -144(%rbp)
	jmp	.L33
.L35:
	movq	-96(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	jne	.L34
	movl	-168(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movl	-144(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	bfs
.L34:
	addl	$1, -144(%rbp)
.L33:
	movl	-168(%rbp), %eax
	cmpl	%eax, -144(%rbp)
	jl	.L35
	movl	-168(%rbp), %eax
	movq	%rsp, %rdx
	movq	%rdx, %rbx
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	movq	$0, -248(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -272(%rbp)
	movq	$0, -264(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	jmp	.L36
.L38:
	movq	-80(%rbp), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L37
	movl	-152(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -148(%rbp)
.L37:
	addl	$1, -152(%rbp)
.L36:
	movl	-168(%rbp), %eax
	cmpl	%eax, -152(%rbp)
	jl	.L38
	movl	-148(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -156(%rbp)
	jmp	.L39
.L40:
	movq	-64(%rbp), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -156(%rbp)
.L39:
	movl	-156(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L40
	movl	$0, -160(%rbp)
	jmp	.L41
.L42:
	movq	-112(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -160(%rbp)
.L41:
	movl	-168(%rbp), %eax
	cmpl	%eax, -160(%rbp)
	jl	.L42
	movl	$0, %eax
	movq	%rbx, %rsp
	movq	%r12, %rsp
	movq	-280(%rbp), %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20181127"
	.section	.note.GNU-stack,"",@progbits
