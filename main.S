	.file	"fizzbuzz.c"
	.intel_syntax noprefix
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"FizzBuzz"
.LC1:
	.string	"Fizz"
.LC2:
	.string	"Buzz"
.LC3:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	ebp, -2004318071
	push	rbx
	mov	ebx, 1
	sub	rsp, 8
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L2:
	mov	edx, 1431655766
	mov	eax, ebx
	imul	edx
	sub	edx, ecx
	lea	edx, [rdx+rdx*2]
	cmp	ebx, edx
	je	.L9
	mov	edx, 1717986919
	mov	eax, ebx
	imul	edx
	sar	edx
	sub	edx, ecx
	lea	edx, [rdx+rdx*4]
	cmp	ebx, edx
	jne	.L5
	mov	edi, OFFSET FLAT:.LC2
	call	puts
.L3:
	add	ebx, 1
	cmp	ebx, 101
	je	.L10
.L6:
	mov	eax, ebx
	mov	ecx, ebx
	imul	ebp
	sar	ecx, 31
	add	edx, ebx
	sar	edx, 3
	sub	edx, ecx
	mov	eax, edx
	sal	eax, 4
	sub	eax, edx
	cmp	ebx, eax
	jne	.L2
	mov	edi, OFFSET FLAT:.LC0
	add	ebx, 1
	call	puts
	cmp	ebx, 101
	jne	.L6
.L10:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	edx, ebx
	mov	esi, OFFSET FLAT:.LC3
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L9:
	mov	edi, OFFSET FLAT:.LC1
	call	puts
	.p2align 4,,3
	jmp	.L3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits