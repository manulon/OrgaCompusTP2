	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"\000"
	.align	2
$LC1:
	.ascii	"missing dimension\000"
	.align	2
$LC2:
	.ascii	"invalid dimension\000"
	.align	2
$LC3:
	.ascii	"missing A matrix element\000"
	.align	2
$LC4:
	.ascii	"missing B matrix element\000"
	.align	2
$LC6:
	.ascii	"time: %g\012\000"
	.align	2
$LC7:
	.ascii	" at line %u\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,112,$31		# vars= 80, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,112($fp)
	sw	$5,116($fp)
	sw	$0,44($fp)
	li	$2,1			# 0x1
	sw	$2,36($fp)
	b	$L2
	nop

$L22:
	sw	$0,32($fp)
	lw	$2,32($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	sw	$2,24($fp)
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%got(read_line)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,read_line
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lw	$2,44($fp)
	beq	$2,$0,$L25
	nop

	lw	$2,44($fp)
	lb	$2,0($2)
	beq	$2,$0,$L26
	nop

	lw	$2,44($fp)
	sw	$2,48($fp)
	addiu	$2,$fp,80
	li	$6,10			# 0xa
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(strtol)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtol
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,52($fp)
	lw	$2,%call16(__errno_location)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__errno_location
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,0($2)
	beq	$2,$0,$L7
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L7:
	lw	$2,80($fp)
	lw	$3,48($fp)
	bne	$3,$2,$L8
	nop

	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,17			# 0x11
	li	$5,1			# 0x1
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L8:
	lw	$2,52($fp)
	bgtz	$2,$L9
	nop

	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,17			# 0x11
	li	$5,1			# 0x1
	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L9:
	lw	$2,52($fp)
	sw	$2,56($fp)
	lw	$2,56($fp)
	sw	$2,60($fp)
	lw	$5,56($fp)
	lw	$4,56($fp)
	lw	$2,%got(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L27
	nop

	sw	$0,40($fp)
	b	$L11
	nop

$L14:
	lw	$2,80($fp)
	sw	$2,48($fp)
	addiu	$2,$fp,80
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(strtod)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sdc1	$f0,64($fp)
	lw	$2,%call16(__errno_location)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__errno_location
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,0($2)
	beq	$2,$0,$L12
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L12:
	lw	$2,80($fp)
	lw	$3,48($fp)
	bne	$3,$2,$L13
	nop

	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,24			# 0x18
	li	$5,1			# 0x1
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L13:
	lw	$2,24($fp)
	lw	$3,8($2)
	lw	$2,40($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,64($fp)
	sdc1	$f0,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L11:
	lw	$3,56($fp)
	lw	$2,56($fp)
	mul	$3,$3,$2
	lw	$2,40($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L14
	nop

	lw	$5,56($fp)
	lw	$4,56($fp)
	lw	$2,%got(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	beq	$2,$0,$L28
	nop

	sw	$0,40($fp)
	b	$L16
	nop

$L19:
	lw	$2,80($fp)
	sw	$2,48($fp)
	addiu	$2,$fp,80
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(strtod)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sdc1	$f0,64($fp)
	lw	$2,%call16(__errno_location)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__errno_location
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,0($2)
	beq	$2,$0,$L17
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L17:
	lw	$2,80($fp)
	lw	$3,48($fp)
	bne	$3,$2,$L18
	nop

	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,24			# 0x18
	li	$5,1			# 0x1
	lw	$2,%got($LC4)($28)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L4
	nop

$L18:
	lw	$2,28($fp)
	lw	$3,8($2)
	lw	$2,40($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,64($fp)
	sdc1	$f0,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L16:
	lw	$3,56($fp)
	lw	$2,56($fp)
	mul	$3,$3,$2
	lw	$2,40($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L19
	nop

	addiu	$2,$fp,84
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,60($fp)
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,24($fp)
	lw	$2,%got(matrix_multiply)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,matrix_multiply
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L29
	nop

	addiu	$2,$fp,92
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,92($fp)
	lw	$2,84($fp)
	subu	$2,$3,$2
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	cvt.d.s	$f0,$f0
	sdc1	$f0,72($fp)
	lw	$3,96($fp)
	lw	$2,88($fp)
	subu	$2,$3,$2
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	cvt.d.s	$f2,$f0
	lw	$2,%got($LC5)($28)
	ldc1	$f0,%lo($LC5)($2)
	div.d	$f0,$f2,$f0
	ldc1	$f2,72($fp)
	add.d	$f0,$f2,$f0
	sdc1	$f0,72($fp)
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%got(print_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,print_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L30
	nop

	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$7,76($fp)
	lw	$6,72($fp)
	lw	$2,%got($LC6)($28)
	addiu	$5,$2,%lo($LC6)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,44($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,24($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,28($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,32($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L2:
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L22
	nop

	b	$L6
	nop

$L26:
	nop
$L6:
	move	$2,$0
	b	$L24
	nop

$L25:
	nop
	b	$L4
	nop

$L27:
	nop
	b	$L4
	nop

$L28:
	nop
	b	$L4
	nop

$L29:
	nop
	b	$L4
	nop

$L30:
	nop
$L4:
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$6,36($fp)
	lw	$2,%got($LC7)($28)
	addiu	$5,$2,%lo($LC7)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,44($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,24($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,28($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,32($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L24:
	move	$sp,$fp
	lw	$31,108($sp)
	lw	$fp,104($sp)
	addiu	$sp,$sp,112
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
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
	lw	$2,%got(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,64($fp)
	lw	$2,64($fp)
	bne	$2,$0,$L32
	nop

	move	$2,$0
	b	$L33
	nop

$L32:
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
	b	$L34
	nop

$L37:
	sw	$0,28($fp)
	b	$L35
	nop

$L36:
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
$L35:
	lw	$3,28($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L36
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L34:
	lw	$3,24($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L37
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
	b	$L38
	nop

$L39:
	lw	$2,56($fp)
	sll	$2,$2,2
	lw	$3,76($fp)
	addu	$2,$3,$2
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,0($2)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L38:
	lw	$3,56($fp)
	lw	$2,72($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L39
	nop

	lw	$4,76($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,36($fp)
	b	$L40
	nop

$L49:
	sw	$0,40($fp)
	b	$L41
	nop

$L48:
	sw	$0,24($fp)
	b	$L42
	nop

$L47:
	lw	$2,40($fp)
	sw	$2,28($fp)
	b	$L43
	nop

$L46:
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
	b	$L44
	nop

$L45:
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
$L44:
	lw	$3,96($fp)
	lw	$2,36($fp)
	addu	$3,$3,$2
	lw	$2,32($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L45
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
$L43:
	lw	$3,96($fp)
	lw	$2,40($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L46
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L42:
	lw	$3,24($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L47
	nop

	lw	$2,96($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
$L41:
	lw	$3,40($fp)
	lw	$2,68($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L48
	nop

	lw	$2,96($fp)
	lw	$3,36($fp)
	addu	$2,$3,$2
	sw	$2,36($fp)
$L40:
	lw	$3,36($fp)
	lw	$2,68($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L49
	nop

	lw	$2,64($fp)
$L33:
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
	.align	2
	.globl	read_line
	.set	nomips16
	.set	nomicromips
	.ent	read_line
	.type	read_line, @function
read_line:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$0,24($fp)
	li	$2,1024			# 0x400
	sw	$2,28($fp)
	lw	$4,28($fp)
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$2,32($fp)
	bne	$2,$0,$L53
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	b	$L52
	nop

$L55:
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,36($fp)
	seb	$3,$3
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,24($fp)
	bne	$3,$2,$L53
	nop

	lw	$2,28($fp)
	sll	$2,$2,1
	sw	$2,28($fp)
	lw	$5,28($fp)
	lw	$4,32($fp)
	lw	$2,%call16(realloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,realloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$2,32($fp)
	bne	$2,$0,$L53
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	b	$L52
	nop

$L53:
	lw	$4,48($fp)
	lw	$2,%call16(fgetc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgetc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L54
	nop

	lw	$3,36($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L55
	nop

$L54:
	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L56
	nop

	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	li	$3,10			# 0xa
	sb	$3,0($2)
$L56:
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,32($fp)
$L52:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	read_line
	.size	read_line, .-read_line
	.align	2
	.globl	create_matrix
	.set	nomips16
	.set	nomicromips
	.ent	create_matrix
	.type	create_matrix, @function
create_matrix:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	li	$4,12			# 0xc
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	bne	$2,$0,$L58
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	b	$L59
	nop

$L58:
	lw	$2,24($fp)
	lw	$3,40($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	lw	$3,44($fp)
	sw	$3,4($2)
	lw	$3,40($fp)
	lw	$2,44($fp)
	mul	$2,$3,$2
	sll	$2,$2,3
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,24($fp)
	sw	$3,8($2)
	lw	$2,24($fp)
	lw	$2,8($2)
	bne	$2,$0,$L60
	nop

	lw	$4,24($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	b	$L59
	nop

$L60:
	lw	$2,24($fp)
$L59:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	create_matrix
	.size	create_matrix, .-create_matrix
	.align	2
	.globl	destroy_matrix
	.set	nomips16
	.set	nomicromips
	.ent	destroy_matrix
	.type	destroy_matrix, @function
destroy_matrix:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,32($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L64
	nop

	lw	$2,32($fp)
	lw	$2,8($2)
	move	$4,$2
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,32($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L61
	nop

$L64:
	nop
$L61:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	destroy_matrix
	.size	destroy_matrix, .-destroy_matrix
	.rdata
	.align	2
$LC8:
	.ascii	"%lu\000"
	.align	2
$LC9:
	.ascii	" %g\000"
	.align	2
$LC10:
	.ascii	"\012\000"
	.text
	.align	2
	.globl	print_matrix
	.set	nomips16
	.set	nomicromips
	.ent	print_matrix
	.type	print_matrix, @function
print_matrix:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$2,52($fp)
	lw	$2,0($2)
	sw	$2,32($fp)
	lw	$2,52($fp)
	lw	$2,0($2)
	move	$6,$2
	lw	$2,%got($LC8)($28)
	addiu	$5,$2,%lo($LC8)
	lw	$4,48($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L66
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L67
	nop

$L66:
	sw	$0,24($fp)
	b	$L68
	nop

$L72:
	sw	$0,28($fp)
	b	$L69
	nop

$L71:
	lw	$2,52($fp)
	lw	$3,8($2)
	lw	$4,24($fp)
	lw	$2,32($fp)
	mul	$4,$4,$2
	lw	$2,28($fp)
	addu	$2,$4,$2
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,0($2)
	mfc1	$7,$f0
	mfhc1	$6,$f0
	lw	$2,%got($LC9)($28)
	addiu	$5,$2,%lo($LC9)
	lw	$4,48($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L70
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L67
	nop

$L70:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L69:
	lw	$3,28($fp)
	lw	$2,32($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L71
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L68:
	lw	$3,24($fp)
	lw	$2,32($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L72
	nop

	lw	$2,%got($LC10)($28)
	addiu	$5,$2,%lo($LC10)
	lw	$4,48($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L73
	nop

	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L67
	nop

$L73:
	move	$2,$0
$L67:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	print_matrix
	.size	print_matrix, .-print_matrix
	.rdata
	.align	3
$LC5:
	.word	1104006501
	.word	0
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
