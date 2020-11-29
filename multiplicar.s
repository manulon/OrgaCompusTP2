	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	matrix_multiply
	.set	nomips16
	.set	nomicromips
	.ent	matrix_multiply
	.type	matrix_multiply, @function
matrix_multiply:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,88($fp)
	sw	$5,92($fp)
	sw	$6,96($fp)
	lw	$2,88($fp)
	lw	$2,0($2)
	sw	$2,60($fp)
	lw	$5,60($fp)
	lw	$4,60($fp)
	lw	$2,%call16(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,64($fp)
	lw	$2,64($fp)
	bne	$2,$0,$L2
	nop

	move	$2,$0
	b	$L3
	nop

$L2:
	lw	$2,96($fp)
	lw	$3,60($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	mflo	$3
	lw	$2,96($fp)
	mul	$2,$3,$2
	sw	$2,68($fp)
	sw	$0,24($fp)
	b	$L4
	nop

$L7:
	sw	$0,28($fp)
	b	$L5
	nop

$L6:
	lw	$2,64($fp)
	lw	$3,8($2)
	lw	$4,24($fp)
	lw	$2,60($fp)
	mul	$4,$4,$2
	lw	$2,28($fp)
	addu	$2,$4,$2
	sll	$2,$2,3
	addu	$2,$3,$2
	sw	$0,4($2)
	sw	$0,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L5:
	lw	$3,28($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L6
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L4:
	lw	$3,24($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L7
	nop

	li	$2,10485760			# 0xa00000
	sw	$2,72($fp)
	lw	$2,72($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,76($fp)
	sw	$0,56($fp)
	b	$L8
	nop

$L9:
	lw	$2,56($fp)
	sll	$2,$2,2
	lw	$3,76($fp)
	addu	$2,$3,$2
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,0($2)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L8:
	lw	$3,56($fp)
	lw	$2,72($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L9
	nop

	lw	$4,76($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,36($fp)
	b	$L10
	nop

$L19:
	sw	$0,40($fp)
	b	$L11
	nop

$L18:
	sw	$0,24($fp)
	b	$L12
	nop

$L17:
	lw	$2,40($fp)
	sw	$2,28($fp)
	b	$L13
	nop

$L16:
	lw	$2,64($fp)
	lw	$3,8($2)
	lw	$4,24($fp)
	lw	$2,60($fp)
	mul	$4,$4,$2
	lw	$2,28($fp)
	addu	$2,$4,$2
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,0($2)
	sdc1	$f0,48($fp)
	lw	$2,36($fp)
	sw	$2,32($fp)
	b	$L14
	nop

$L15:
	lw	$2,88($fp)
	lw	$3,8($2)
	lw	$4,24($fp)
	lw	$2,60($fp)
	mul	$4,$4,$2
	lw	$2,32($fp)
	addu	$2,$4,$2
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f2,0($2)
	lw	$2,92($fp)
	lw	$3,8($2)
	lw	$4,32($fp)
	lw	$2,60($fp)
	mul	$4,$4,$2
	lw	$2,28($fp)
	addu	$2,$4,$2
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,0($2)
	mul.d	$f0,$f2,$f0
	ldc1	$f2,48($fp)
	add.d	$f0,$f2,$f0
	sdc1	$f0,48($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L14:
	lw	$3,96($fp)
	lw	$2,36($fp)
	addu	$3,$3,$2
	lw	$2,32($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L15
	nop

	lw	$2,64($fp)
	lw	$3,8($2)
	lw	$4,24($fp)
	lw	$2,60($fp)
	mul	$4,$4,$2
	lw	$2,28($fp)
	addu	$2,$4,$2
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,48($fp)
	sdc1	$f0,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L13:
	lw	$3,96($fp)
	lw	$2,40($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L16
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L12:
	lw	$3,24($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L17
	nop

	lw	$2,96($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
$L11:
	lw	$3,40($fp)
	lw	$2,68($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L18
	nop

	lw	$2,96($fp)
	lw	$3,36($fp)
	addu	$2,$3,$2
	sw	$2,36($fp)
$L10:
	lw	$3,36($fp)
	lw	$2,68($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L19
	nop

	lw	$2,64($fp)
$L3:
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	matrix_multiply
	.size	matrix_multiply, .-matrix_multiply
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
