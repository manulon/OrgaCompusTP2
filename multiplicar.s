	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
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
$LFB2 = .
	.file 1 "main.c"
	.loc 1 26 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,112($fp)
	sw	$5,116($fp)
	.loc 1 32 0
	sw	$0,44($fp)
	.loc 1 38 0
	li	$2,1			# 0x1
	sw	$2,36($fp)
	.loc 1 44 0
	b	$L2
	nop

$L22:
	.loc 1 45 0
	sw	$0,32($fp)
	lw	$2,32($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	sw	$2,24($fp)
	.loc 1 47 0
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%got(read_line)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,read_line
1:	jalr	$25
	nop

$LVL0 = .
	lw	$28,16($fp)
	sw	$2,44($fp)
	.loc 1 49 0
	lw	$2,44($fp)
	beq	$2,$0,$L25
	nop

	.loc 1 50 0
	lw	$2,44($fp)
	lb	$2,0($2)
	beq	$2,$0,$L26
	nop

	.loc 1 53 0
	lw	$2,44($fp)
	sw	$2,48($fp)
	.loc 1 54 0
	addiu	$2,$fp,80
	li	$6,10			# 0xa
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(strtol)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtol
1:	jalr	$25
	nop

$LVL1 = .
	lw	$28,16($fp)
	sw	$2,52($fp)
	.loc 1 55 0
	lw	$2,%call16(__errno_location)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__errno_location
1:	jalr	$25
	nop

$LVL2 = .
	lw	$28,16($fp)
	lw	$2,0($2)
	beq	$2,$0,$L7
	nop

	.loc 1 56 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL3 = .
	lw	$28,16($fp)
	.loc 1 57 0
	b	$L4
	nop

$L7:
	.loc 1 59 0
	lw	$2,80($fp)
	lw	$3,48($fp)
	bne	$3,$2,$L8
	nop

	.loc 1 60 0
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

$LVL4 = .
	lw	$28,16($fp)
	.loc 1 61 0
	b	$L4
	nop

$L8:
	.loc 1 63 0
	lw	$2,52($fp)
	bgtz	$2,$L9
	nop

	.loc 1 64 0
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

$LVL5 = .
	lw	$28,16($fp)
	.loc 1 65 0
	b	$L4
	nop

$L9:
	.loc 1 67 0
	lw	$2,52($fp)
	sw	$2,56($fp)
	.loc 1 91 0
	lw	$2,56($fp)
	sw	$2,60($fp)
	.loc 1 95 0
	lw	$5,56($fp)
	lw	$4,56($fp)
	lw	$2,%got(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

$LVL6 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L27
	nop

	.loc 1 98 0
	sw	$0,40($fp)
	b	$L11
	nop

$L14:
	.loc 1 99 0
	lw	$2,80($fp)
	sw	$2,48($fp)
	.loc 1 100 0
	addiu	$2,$fp,80
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(strtod)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	nop

$LVL7 = .
	lw	$28,16($fp)
	sdc1	$f0,64($fp)
	.loc 1 101 0
	lw	$2,%call16(__errno_location)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__errno_location
1:	jalr	$25
	nop

$LVL8 = .
	lw	$28,16($fp)
	lw	$2,0($2)
	beq	$2,$0,$L12
	nop

	.loc 1 102 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL9 = .
	lw	$28,16($fp)
	.loc 1 103 0
	b	$L4
	nop

$L12:
	.loc 1 105 0
	lw	$2,80($fp)
	lw	$3,48($fp)
	bne	$3,$2,$L13
	nop

	.loc 1 106 0
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

$LVL10 = .
	lw	$28,16($fp)
	.loc 1 107 0
	b	$L4
	nop

$L13:
	.loc 1 109 0 discriminator 2
	lw	$2,24($fp)
	lw	$3,8($2)
	lw	$2,40($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,64($fp)
	sdc1	$f0,0($2)
	.loc 1 98 0 discriminator 2
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L11:
	.loc 1 98 0 is_stmt 0 discriminator 1
	lw	$3,56($fp)
	lw	$2,56($fp)
	mul	$3,$3,$2
	lw	$2,40($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L14
	nop

	.loc 1 113 0 is_stmt 1
	lw	$5,56($fp)
	lw	$4,56($fp)
	lw	$2,%got(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

$LVL11 = .
	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	beq	$2,$0,$L28
	nop

	.loc 1 116 0
	sw	$0,40($fp)
	b	$L16
	nop

$L19:
	.loc 1 117 0
	lw	$2,80($fp)
	sw	$2,48($fp)
	.loc 1 118 0
	addiu	$2,$fp,80
	move	$5,$2
	lw	$4,48($fp)
	lw	$2,%call16(strtod)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	nop

$LVL12 = .
	lw	$28,16($fp)
	sdc1	$f0,64($fp)
	.loc 1 119 0
	lw	$2,%call16(__errno_location)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__errno_location
1:	jalr	$25
	nop

$LVL13 = .
	lw	$28,16($fp)
	lw	$2,0($2)
	beq	$2,$0,$L17
	nop

	.loc 1 120 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL14 = .
	lw	$28,16($fp)
	.loc 1 121 0
	b	$L4
	nop

$L17:
	.loc 1 123 0
	lw	$2,80($fp)
	lw	$3,48($fp)
	bne	$3,$2,$L18
	nop

	.loc 1 124 0
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

$LVL15 = .
	lw	$28,16($fp)
	.loc 1 125 0
	b	$L4
	nop

$L18:
	.loc 1 127 0 discriminator 2
	lw	$2,28($fp)
	lw	$3,8($2)
	lw	$2,40($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	ldc1	$f0,64($fp)
	sdc1	$f0,0($2)
	.loc 1 116 0 discriminator 2
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L16:
	.loc 1 116 0 is_stmt 0 discriminator 1
	lw	$3,56($fp)
	lw	$2,56($fp)
	mul	$3,$3,$2
	lw	$2,40($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L19
	nop

	.loc 1 130 0 is_stmt 1
	addiu	$2,$fp,84
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

$LVL16 = .
	lw	$28,16($fp)
	.loc 1 133 0
	lw	$2,60($fp)
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,24($fp)
	lw	$2,%got(matrix_multiply)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,matrix_multiply
1:	jalr	$25
	nop

$LVL17 = .
	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L29
	nop

	.loc 1 136 0
	addiu	$2,$fp,92
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

$LVL18 = .
	lw	$28,16($fp)
	.loc 1 138 0
	lw	$3,92($fp)
	lw	$2,84($fp)
	subu	$2,$3,$2
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	cvt.d.s	$f0,$f0
	sdc1	$f0,72($fp)
	.loc 1 139 0
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
	.loc 1 141 0
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%got(print_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,print_matrix
1:	jalr	$25
	nop

$LVL19 = .
	lw	$28,16($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L30
	nop

	.loc 1 144 0
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

$LVL20 = .
	lw	$28,16($fp)
	.loc 1 146 0
	lw	$4,44($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL21 = .
	lw	$28,16($fp)
	.loc 1 147 0
	lw	$4,24($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

$LVL22 = .
	lw	$28,16($fp)
	.loc 1 148 0
	lw	$4,28($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

$LVL23 = .
	lw	$28,16($fp)
	.loc 1 149 0
	lw	$4,32($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

$LVL24 = .
	lw	$28,16($fp)
	.loc 1 44 0
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L2:
	.loc 1 44 0 is_stmt 0 discriminator 1
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

$LVL25 = .
	lw	$28,16($fp)
	beq	$2,$0,$L22
	nop

	b	$L6
	nop

$L26:
	.loc 1 50 0 is_stmt 1
	nop
$L6:
	.loc 1 152 0
	move	$2,$0
	b	$L24
	nop

$L25:
	.loc 1 49 0
	nop
	b	$L4
	nop

$L27:
	.loc 1 96 0
	nop
	b	$L4
	nop

$L28:
	.loc 1 114 0
	nop
	b	$L4
	nop

$L29:
	.loc 1 134 0
	nop
	b	$L4
	nop

$L30:
	.loc 1 142 0
	nop
$L4:
	.loc 1 155 0
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

$LVL26 = .
	lw	$28,16($fp)
	.loc 1 156 0
	lw	$4,44($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL27 = .
	lw	$28,16($fp)
	.loc 1 157 0
	lw	$4,24($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

$LVL28 = .
	lw	$28,16($fp)
	.loc 1 158 0
	lw	$4,28($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

$LVL29 = .
	lw	$28,16($fp)
	.loc 1 159 0
	lw	$4,32($fp)
	lw	$2,%got(destroy_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,destroy_matrix
1:	jalr	$25
	nop

$LVL30 = .
	lw	$28,16($fp)
	.loc 1 160 0
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$LVL31 = .
$L24:
	.loc 1 161 0 discriminator 1
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,108($sp)
	lw	$fp,104($sp)
	addiu	$sp,$sp,112
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE2:
	.size	main, .-main
	.align	2
	.globl	read_line
$LFB3 = .
	.loc 1 205 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,48($fp)
	.loc 1 209 0
	sw	$0,24($fp)
	li	$2,1024			# 0x400
	sw	$2,28($fp)
	.loc 1 212 0
	lw	$4,28($fp)
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

$LVL32 = .
	lw	$28,16($fp)
	sw	$2,32($fp)
	.loc 1 213 0
	lw	$2,32($fp)
	bne	$2,$0,$L34
	nop

	.loc 1 214 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL33 = .
	lw	$28,16($fp)
	.loc 1 215 0
	move	$2,$0
	b	$L33
	nop

$L36:
	.loc 1 219 0
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,36($fp)
	seb	$3,$3
	sb	$3,0($2)
	.loc 1 220 0
	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,24($fp)
	bne	$3,$2,$L34
	nop

	.loc 1 221 0
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

$LVL34 = .
	lw	$28,16($fp)
	sw	$2,32($fp)
	.loc 1 222 0
	lw	$2,32($fp)
	bne	$2,$0,$L34
	nop

	.loc 1 223 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL35 = .
	lw	$28,16($fp)
	.loc 1 224 0
	move	$2,$0
	b	$L33
	nop

$L34:
	.loc 1 218 0
	lw	$4,48($fp)
	lw	$2,%call16(fgetc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgetc
1:	jalr	$25
	nop

$LVL36 = .
	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L35
	nop

	.loc 1 218 0 is_stmt 0 discriminator 1
	lw	$3,36($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L36
	nop

$L35:
	.loc 1 229 0 is_stmt 1
	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L37
	nop

	.loc 1 230 0
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	li	$3,10			# 0xa
	sb	$3,0($2)
$L37:
	.loc 1 232 0
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	.loc 1 233 0
	lw	$2,32($fp)
$L33:
	.loc 1 234 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	read_line
	.cfi_endproc
$LFE3:
	.size	read_line, .-read_line
	.align	2
	.globl	create_matrix
$LFB4 = .
	.loc 1 239 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 242 0
	li	$4,12			# 0xc
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

$LVL37 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	bne	$2,$0,$L39
	nop

	.loc 1 243 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL38 = .
	lw	$28,16($fp)
	.loc 1 244 0
	move	$2,$0
	b	$L40
	nop

$L39:
	.loc 1 247 0
	lw	$2,24($fp)
	lw	$3,40($fp)
	sw	$3,0($2)
	.loc 1 248 0
	lw	$2,24($fp)
	lw	$3,44($fp)
	sw	$3,4($2)
	.loc 1 249 0
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

$LVL39 = .
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,24($fp)
	sw	$3,8($2)
	lw	$2,24($fp)
	lw	$2,8($2)
	bne	$2,$0,$L41
	nop

	.loc 1 250 0
	lw	$4,24($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL40 = .
	lw	$28,16($fp)
	.loc 1 251 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL41 = .
	lw	$28,16($fp)
	.loc 1 252 0
	move	$2,$0
	b	$L40
	nop

$L41:
	.loc 1 255 0
	lw	$2,24($fp)
$L40:
	.loc 1 256 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	create_matrix
	.cfi_endproc
$LFE4:
	.size	create_matrix, .-create_matrix
	.align	2
	.globl	destroy_matrix
$LFB5 = .
	.loc 1 260 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,32($fp)
	.loc 1 261 0
	lw	$2,32($fp)
	beq	$2,$0,$L45
	nop

	.loc 1 262 0
	lw	$2,32($fp)
	lw	$2,8($2)
	move	$4,$2
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL42 = .
	lw	$28,16($fp)
	.loc 1 263 0
	lw	$4,32($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL43 = .
	lw	$28,16($fp)
	b	$L42
	nop

$L45:
	.loc 1 261 0
	nop
$L42:
	.loc 1 264 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	destroy_matrix
	.cfi_endproc
$LFE5:
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
$LFB6 = .
	.loc 1 268 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 271 0
	lw	$2,52($fp)
	lw	$2,0($2)
	sw	$2,32($fp)
	.loc 1 272 0
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

$LVL44 = .
	lw	$28,16($fp)
	bgez	$2,$L47
	nop

	.loc 1 273 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL45 = .
	lw	$28,16($fp)
	.loc 1 274 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L48
	nop

$L47:
	.loc 1 276 0
	sw	$0,24($fp)
	b	$L49
	nop

$L53:
	.loc 1 277 0
	sw	$0,28($fp)
	b	$L50
	nop

$L52:
	.loc 1 278 0
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

$LVL46 = .
	lw	$28,16($fp)
	bgez	$2,$L51
	nop

	.loc 1 279 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL47 = .
	lw	$28,16($fp)
	.loc 1 280 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L48
	nop

$L51:
	.loc 1 277 0 discriminator 2
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L50:
	.loc 1 277 0 is_stmt 0 discriminator 1
	lw	$3,28($fp)
	lw	$2,32($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L52
	nop

	.loc 1 276 0 is_stmt 1 discriminator 2
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L49:
	.loc 1 276 0 is_stmt 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,32($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L53
	nop

	.loc 1 282 0 is_stmt 1
	lw	$2,%got($LC10)($28)
	addiu	$5,$2,%lo($LC10)
	lw	$4,48($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

$LVL48 = .
	lw	$28,16($fp)
	bgez	$2,$L54
	nop

	.loc 1 283 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL49 = .
	lw	$28,16($fp)
	.loc 1 284 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L48
	nop

$L54:
	.loc 1 286 0
	move	$2,$0
$L48:
	.loc 1 287 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	print_matrix
	.cfi_endproc
$LFE6:
	.size	print_matrix, .-print_matrix
	.align	2
	.globl	matrix_multiply
$LFB7 = .
	.file 2 "multiplicar.c"
	.loc 2 7 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,88($fp)
	sw	$5,92($fp)
	sw	$6,96($fp)
	.loc 2 12 0
	lw	$2,88($fp)
	lw	$2,0($2)
	sw	$2,60($fp)
	.loc 2 14 0
	lw	$5,60($fp)
	lw	$4,60($fp)
	lw	$2,%got(create_matrix)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,create_matrix
1:	jalr	$25
	nop

$LVL50 = .
	lw	$28,16($fp)
	sw	$2,64($fp)
	lw	$2,64($fp)
	bne	$2,$0,$L56
	nop

	.loc 2 14 0 is_stmt 0 discriminator 1
	move	$2,$0
	b	$L57
	nop

$L56:
	.loc 2 16 0 is_stmt 1
	lw	$2,96($fp)
	lw	$3,60($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	mflo	$3
	lw	$2,96($fp)
	mul	$2,$3,$2
	sw	$2,68($fp)
	.loc 2 18 0
	sw	$0,24($fp)
	b	$L58
	nop

$L61:
	.loc 2 19 0
	sw	$0,28($fp)
	b	$L59
	nop

$L60:
	.loc 2 20 0 discriminator 3
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
	.loc 2 19 0 discriminator 3
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L59:
	.loc 2 19 0 is_stmt 0 discriminator 1
	lw	$3,28($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L60
	nop

	.loc 2 18 0 is_stmt 1 discriminator 2
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L58:
	.loc 2 18 0 is_stmt 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L61
	nop

$LBB2 = .
	.loc 2 25 0 is_stmt 1
	li	$2,10485760			# 0xa00000
	sw	$2,72($fp)
	.loc 2 26 0
	lw	$2,72($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

$LVL51 = .
	lw	$28,16($fp)
	sw	$2,76($fp)
	.loc 2 27 0
	sw	$0,56($fp)
	b	$L62
	nop

$L63:
	.loc 2 28 0 discriminator 3
	lw	$2,56($fp)
	sll	$2,$2,2
	lw	$3,76($fp)
	addu	$2,$3,$2
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,0($2)
	.loc 2 27 0 discriminator 3
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L62:
	.loc 2 27 0 is_stmt 0 discriminator 1
	lw	$3,56($fp)
	lw	$2,72($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L63
	nop

	.loc 2 29 0 is_stmt 1
	lw	$4,76($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL52 = .
	lw	$28,16($fp)
$LBE2 = .
	.loc 2 33 0
	sw	$0,36($fp)
	b	$L64
	nop

$L73:
	.loc 2 34 0
	sw	$0,40($fp)
	b	$L65
	nop

$L72:
	.loc 2 35 0
	sw	$0,24($fp)
	b	$L66
	nop

$L71:
	.loc 2 36 0
	lw	$2,40($fp)
	sw	$2,28($fp)
	b	$L67
	nop

$L70:
	.loc 2 37 0
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
	.loc 2 38 0
	lw	$2,36($fp)
	sw	$2,32($fp)
	b	$L68
	nop

$L69:
	.loc 2 39 0 discriminator 3
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
	.loc 2 38 0 discriminator 3
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L68:
	.loc 2 38 0 is_stmt 0 discriminator 1
	lw	$3,96($fp)
	lw	$2,36($fp)
	addu	$3,$3,$2
	lw	$2,32($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L69
	nop

	.loc 2 40 0 is_stmt 1 discriminator 2
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
	.loc 2 36 0 discriminator 2
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L67:
	.loc 2 36 0 is_stmt 0 discriminator 1
	lw	$3,96($fp)
	lw	$2,40($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L70
	nop

	.loc 2 35 0 is_stmt 1 discriminator 2
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L66:
	.loc 2 35 0 is_stmt 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L71
	nop

	.loc 2 34 0 is_stmt 1 discriminator 2
	lw	$2,96($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
$L65:
	.loc 2 34 0 is_stmt 0 discriminator 1
	lw	$3,40($fp)
	lw	$2,68($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L72
	nop

	.loc 2 33 0 is_stmt 1 discriminator 2
	lw	$2,96($fp)
	lw	$3,36($fp)
	addu	$2,$3,$2
	sw	$2,36($fp)
$L64:
	.loc 2 33 0 is_stmt 0 discriminator 1
	lw	$3,36($fp)
	lw	$2,68($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L73
	nop

	.loc 2 42 0 is_stmt 1
	lw	$2,64($fp)
$L57:
	.loc 2 43 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	matrix_multiply
	.cfi_endproc
$LFE7:
	.size	matrix_multiply, .-matrix_multiply
	.rdata
	.align	3
$LC5:
	.word	1104006501
	.word	0
	.text
$Letext0:
	.file 3 "/usr/lib/gcc/mips-linux-gnu/6/include/stddef.h"
	.file 4 "/usr/include/mips-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/mips-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/time.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x71a
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF86
	.byte	0xc
	.4byte	$LASF87
	.4byte	$LASF88
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.4byte	$LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	$LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	$LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	$LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	$LASF7
	.uleb128 0x2
	.4byte	$LASF9
	.byte	0x4
	.byte	0x37
	.4byte	0x61
	.uleb128 0x2
	.4byte	$LASF10
	.byte	0x4
	.byte	0x83
	.4byte	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	$LASF11
	.uleb128 0x2
	.4byte	$LASF12
	.byte	0x4
	.byte	0x84
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF13
	.uleb128 0x2
	.4byte	$LASF14
	.byte	0x4
	.byte	0x8b
	.4byte	0x85
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	$LASF15
	.byte	0x4
	.byte	0xaf
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF16
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x2
	.4byte	$LASF17
	.byte	0x5
	.byte	0x30
	.4byte	0xd3
	.uleb128 0x8
	.4byte	$LASF47
	.byte	0x98
	.byte	0x6
	.byte	0xf1
	.4byte	0x250
	.uleb128 0x9
	.4byte	$LASF18
	.byte	0x6
	.byte	0xf2
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.4byte	$LASF19
	.byte	0x6
	.byte	0xf7
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF20
	.byte	0x6
	.byte	0xf8
	.4byte	0xb6
	.byte	0x8
	.uleb128 0x9
	.4byte	$LASF21
	.byte	0x6
	.byte	0xf9
	.4byte	0xb6
	.byte	0xc
	.uleb128 0x9
	.4byte	$LASF22
	.byte	0x6
	.byte	0xfa
	.4byte	0xb6
	.byte	0x10
	.uleb128 0x9
	.4byte	$LASF23
	.byte	0x6
	.byte	0xfb
	.4byte	0xb6
	.byte	0x14
	.uleb128 0x9
	.4byte	$LASF24
	.byte	0x6
	.byte	0xfc
	.4byte	0xb6
	.byte	0x18
	.uleb128 0x9
	.4byte	$LASF25
	.byte	0x6
	.byte	0xfd
	.4byte	0xb6
	.byte	0x1c
	.uleb128 0x9
	.4byte	$LASF26
	.byte	0x6
	.byte	0xfe
	.4byte	0xb6
	.byte	0x20
	.uleb128 0xa
	.4byte	$LASF27
	.byte	0x6
	.2byte	0x100
	.4byte	0xb6
	.byte	0x24
	.uleb128 0xa
	.4byte	$LASF28
	.byte	0x6
	.2byte	0x101
	.4byte	0xb6
	.byte	0x28
	.uleb128 0xa
	.4byte	$LASF29
	.byte	0x6
	.2byte	0x102
	.4byte	0xb6
	.byte	0x2c
	.uleb128 0xa
	.4byte	$LASF30
	.byte	0x6
	.2byte	0x104
	.4byte	0x288
	.byte	0x30
	.uleb128 0xa
	.4byte	$LASF31
	.byte	0x6
	.2byte	0x106
	.4byte	0x28e
	.byte	0x34
	.uleb128 0xa
	.4byte	$LASF32
	.byte	0x6
	.2byte	0x108
	.4byte	0x5a
	.byte	0x38
	.uleb128 0xa
	.4byte	$LASF33
	.byte	0x6
	.2byte	0x10c
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0xa
	.4byte	$LASF34
	.byte	0x6
	.2byte	0x10e
	.4byte	0x7a
	.byte	0x40
	.uleb128 0xa
	.4byte	$LASF35
	.byte	0x6
	.2byte	0x112
	.4byte	0x3e
	.byte	0x44
	.uleb128 0xa
	.4byte	$LASF36
	.byte	0x6
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0xa
	.4byte	$LASF37
	.byte	0x6
	.2byte	0x114
	.4byte	0x294
	.byte	0x47
	.uleb128 0xa
	.4byte	$LASF38
	.byte	0x6
	.2byte	0x118
	.4byte	0x2a4
	.byte	0x48
	.uleb128 0xa
	.4byte	$LASF39
	.byte	0x6
	.2byte	0x121
	.4byte	0x8c
	.byte	0x50
	.uleb128 0xa
	.4byte	$LASF40
	.byte	0x6
	.2byte	0x129
	.4byte	0xa9
	.byte	0x58
	.uleb128 0xa
	.4byte	$LASF41
	.byte	0x6
	.2byte	0x12a
	.4byte	0xa9
	.byte	0x5c
	.uleb128 0xa
	.4byte	$LASF42
	.byte	0x6
	.2byte	0x12b
	.4byte	0xa9
	.byte	0x60
	.uleb128 0xa
	.4byte	$LASF43
	.byte	0x6
	.2byte	0x12c
	.4byte	0xa9
	.byte	0x64
	.uleb128 0xa
	.4byte	$LASF44
	.byte	0x6
	.2byte	0x12e
	.4byte	0x25
	.byte	0x68
	.uleb128 0xa
	.4byte	$LASF45
	.byte	0x6
	.2byte	0x12f
	.4byte	0x5a
	.byte	0x6c
	.uleb128 0xa
	.4byte	$LASF46
	.byte	0x6
	.2byte	0x131
	.4byte	0x2aa
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	$LASF89
	.byte	0x6
	.byte	0x96
	.uleb128 0x8
	.4byte	$LASF48
	.byte	0xc
	.byte	0x6
	.byte	0x9c
	.4byte	0x288
	.uleb128 0x9
	.4byte	$LASF49
	.byte	0x6
	.byte	0x9d
	.4byte	0x288
	.byte	0
	.uleb128 0x9
	.4byte	$LASF50
	.byte	0x6
	.byte	0x9e
	.4byte	0x28e
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF51
	.byte	0x6
	.byte	0xa2
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x257
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0xc
	.4byte	0xbc
	.4byte	0x2a4
	.uleb128 0xd
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x250
	.uleb128 0xc
	.4byte	0xbc
	.4byte	0x2ba
	.uleb128 0xd
	.4byte	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	$LASF90
	.uleb128 0xf
	.4byte	$LASF52
	.byte	0x6
	.2byte	0x13b
	.4byte	0x2ba
	.uleb128 0xf
	.4byte	$LASF53
	.byte	0x6
	.2byte	0x13c
	.4byte	0x2ba
	.uleb128 0xf
	.4byte	$LASF54
	.byte	0x6
	.2byte	0x13d
	.4byte	0x2ba
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0x2e3
	.uleb128 0x10
	.4byte	$LASF55
	.byte	0x5
	.byte	0xaa
	.4byte	0x28e
	.uleb128 0x10
	.4byte	$LASF56
	.byte	0x5
	.byte	0xab
	.4byte	0x28e
	.uleb128 0x10
	.4byte	$LASF57
	.byte	0x5
	.byte	0xac
	.4byte	0x28e
	.uleb128 0x10
	.4byte	$LASF58
	.byte	0x7
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0xc
	.4byte	0x2e9
	.4byte	0x325
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x31a
	.uleb128 0x10
	.4byte	$LASF59
	.byte	0x7
	.byte	0x1b
	.4byte	0x325
	.uleb128 0x8
	.4byte	$LASF60
	.byte	0x8
	.byte	0x8
	.byte	0x78
	.4byte	0x35a
	.uleb128 0x9
	.4byte	$LASF61
	.byte	0x8
	.byte	0x7a
	.4byte	0x9e
	.byte	0
	.uleb128 0x9
	.4byte	$LASF62
	.byte	0x8
	.byte	0x7b
	.4byte	0xab
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0xb6
	.4byte	0x36a
	.uleb128 0xd
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	$LASF63
	.byte	0x8
	.2byte	0x11a
	.4byte	0x35a
	.uleb128 0xf
	.4byte	$LASF64
	.byte	0x8
	.2byte	0x11b
	.4byte	0x5a
	.uleb128 0xf
	.4byte	$LASF65
	.byte	0x8
	.2byte	0x11c
	.4byte	0x85
	.uleb128 0xf
	.4byte	$LASF66
	.byte	0x8
	.2byte	0x121
	.4byte	0x35a
	.uleb128 0xf
	.4byte	$LASF67
	.byte	0x8
	.2byte	0x129
	.4byte	0x5a
	.uleb128 0xf
	.4byte	$LASF68
	.byte	0x8
	.2byte	0x12a
	.4byte	0x85
	.uleb128 0x8
	.4byte	$LASF69
	.byte	0xc
	.byte	0x1
	.byte	0x7
	.4byte	0x3e3
	.uleb128 0x9
	.4byte	$LASF70
	.byte	0x1
	.byte	0x8
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	$LASF71
	.byte	0x1
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF72
	.byte	0x1
	.byte	0xa
	.4byte	0x3e3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	$LASF73
	.uleb128 0x2
	.4byte	$LASF74
	.byte	0x1
	.byte	0xb
	.4byte	0x3b2
	.uleb128 0x12
	.4byte	$LASF75
	.byte	0x2
	.byte	0x6
	.4byte	0x4de
	.4byte	$LFB7
	.4byte	$LFE7-$LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4de
	.uleb128 0x13
	.ascii	"m1\000"
	.byte	0x2
	.byte	0x6
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii	"m2\000"
	.byte	0x2
	.byte	0x6
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.ascii	"bs\000"
	.byte	0x2
	.byte	0x6
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.ascii	"n\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.ascii	"en\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.ascii	"j\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.ascii	"k\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.ascii	"kk\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.ascii	"jj\000"
	.byte	0x2
	.byte	0x8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.ascii	"sum\000"
	.byte	0x2
	.byte	0x9
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.ascii	"mr\000"
	.byte	0x2
	.byte	0xa
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	$LBB2
	.4byte	$LBE2-$LBB2
	.uleb128 0x14
	.ascii	"j\000"
	.byte	0x2
	.byte	0x18
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.ascii	"dim\000"
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.ascii	"v\000"
	.byte	0x2
	.byte	0x1a
	.4byte	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a
	.uleb128 0x16
	.4byte	$LASF76
	.byte	0x1
	.2byte	0x10b
	.4byte	0x5a
	.4byte	$LFB6
	.4byte	$LFE6-$LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x547
	.uleb128 0x17
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x19
	.4byte	$LASF91
	.byte	0x1
	.2byte	0x103
	.4byte	$LFB5
	.4byte	$LFE5-$LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x571
	.uleb128 0x17
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x103
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	$LASF77
	.byte	0x1
	.byte	0xee
	.4byte	0x4de
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b3
	.uleb128 0x1a
	.4byte	$LASF70
	.byte	0x1
	.byte	0xee
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.4byte	$LASF71
	.byte	0x1
	.byte	0xee
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.ascii	"m\000"
	.byte	0x1
	.byte	0xf0
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.4byte	$LASF78
	.byte	0x1
	.byte	0xcc
	.4byte	0xb6
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x610
	.uleb128 0x13
	.ascii	"fp\000"
	.byte	0x1
	.byte	0xcc
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii	"c\000"
	.byte	0x1
	.byte	0xd0
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.ascii	"len\000"
	.byte	0x1
	.byte	0xd1
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.ascii	"tam\000"
	.byte	0x1
	.byte	0xd1
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii	"str\000"
	.byte	0x1
	.byte	0xd2
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.4byte	$LASF79
	.byte	0x1
	.byte	0x19
	.4byte	0x5a
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x717
	.uleb128 0x1a
	.4byte	$LASF80
	.byte	0x1
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.4byte	$LASF81
	.byte	0x1
	.byte	0x19
	.4byte	0x717
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.ascii	"b\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.ascii	"c\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.ascii	"n\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.ascii	"bs\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	$LASF82
	.byte	0x1
	.byte	0x20
	.4byte	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.4byte	$LASF83
	.byte	0x1
	.byte	0x22
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	$LASF84
	.byte	0x1
	.byte	0x22
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.ascii	"l\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.ascii	"e\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	$LASF85
	.byte	0x1
	.byte	0x26
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.ascii	"t0\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x335
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.ascii	"t1\000"
	.byte	0x1
	.byte	0x28
	.4byte	0x335
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii	"dt\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.4byte	$LASF92
	.byte	0x1
	.byte	0x9a
	.4byte	$L4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF10:
	.ascii	"__off_t\000"
$LASF19:
	.ascii	"_IO_read_ptr\000"
$LASF31:
	.ascii	"_chain\000"
$LASF8:
	.ascii	"size_t\000"
$LASF76:
	.ascii	"print_matrix\000"
$LASF37:
	.ascii	"_shortbuf\000"
$LASF70:
	.ascii	"rows\000"
$LASF91:
	.ascii	"destroy_matrix\000"
$LASF54:
	.ascii	"_IO_2_1_stderr_\000"
$LASF25:
	.ascii	"_IO_buf_base\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF78:
	.ascii	"read_line\000"
$LASF65:
	.ascii	"__timezone\000"
$LASF6:
	.ascii	"long long int\000"
$LASF4:
	.ascii	"signed char\000"
$LASF32:
	.ascii	"_fileno\000"
$LASF20:
	.ascii	"_IO_read_end\000"
$LASF11:
	.ascii	"long int\000"
$LASF18:
	.ascii	"_flags\000"
$LASF26:
	.ascii	"_IO_buf_end\000"
$LASF35:
	.ascii	"_cur_column\000"
$LASF9:
	.ascii	"__quad_t\000"
$LASF73:
	.ascii	"double\000"
$LASF34:
	.ascii	"_old_offset\000"
$LASF39:
	.ascii	"_offset\000"
$LASF72:
	.ascii	"array\000"
$LASF82:
	.ascii	"line\000"
$LASF68:
	.ascii	"timezone\000"
$LASF69:
	.ascii	"matrix\000"
$LASF87:
	.ascii	"multiplicar.c\000"
$LASF48:
	.ascii	"_IO_marker\000"
$LASF55:
	.ascii	"stdin\000"
$LASF0:
	.ascii	"unsigned int\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF90:
	.ascii	"_IO_FILE_plus\000"
$LASF23:
	.ascii	"_IO_write_ptr\000"
$LASF58:
	.ascii	"sys_nerr\000"
$LASF50:
	.ascii	"_sbuf\000"
$LASF75:
	.ascii	"matrix_multiply\000"
$LASF2:
	.ascii	"short unsigned int\000"
$LASF27:
	.ascii	"_IO_save_base\000"
$LASF88:
	.ascii	"/root/TP2/OrgaCompusTP2\000"
$LASF38:
	.ascii	"_lock\000"
$LASF33:
	.ascii	"_flags2\000"
$LASF45:
	.ascii	"_mode\000"
$LASF84:
	.ascii	"endptr\000"
$LASF56:
	.ascii	"stdout\000"
$LASF52:
	.ascii	"_IO_2_1_stdin_\000"
$LASF62:
	.ascii	"tv_nsec\000"
$LASF13:
	.ascii	"sizetype\000"
$LASF61:
	.ascii	"tv_sec\000"
$LASF15:
	.ascii	"__syscall_slong_t\000"
$LASF24:
	.ascii	"_IO_write_end\000"
$LASF77:
	.ascii	"create_matrix\000"
$LASF89:
	.ascii	"_IO_lock_t\000"
$LASF47:
	.ascii	"_IO_FILE\000"
$LASF64:
	.ascii	"__daylight\000"
$LASF51:
	.ascii	"_pos\000"
$LASF59:
	.ascii	"sys_errlist\000"
$LASF83:
	.ascii	"nptr\000"
$LASF30:
	.ascii	"_markers\000"
$LASF1:
	.ascii	"unsigned char\000"
$LASF5:
	.ascii	"short int\000"
$LASF60:
	.ascii	"timespec\000"
$LASF36:
	.ascii	"_vtable_offset\000"
$LASF66:
	.ascii	"tzname\000"
$LASF53:
	.ascii	"_IO_2_1_stdout_\000"
$LASF17:
	.ascii	"FILE\000"
$LASF67:
	.ascii	"daylight\000"
$LASF16:
	.ascii	"char\000"
$LASF86:
	.ascii	"GNU C11 6.3.0 20170516 -meb -march=mips32r2 -mfpxx -mlls"
	.ascii	"c -mno-lxc1-sxc1 -mips32r2 -mabi=32 -g -O0\000"
$LASF49:
	.ascii	"_next\000"
$LASF12:
	.ascii	"__off64_t\000"
$LASF21:
	.ascii	"_IO_read_base\000"
$LASF29:
	.ascii	"_IO_save_end\000"
$LASF92:
	.ascii	"_exit_main\000"
$LASF40:
	.ascii	"__pad1\000"
$LASF41:
	.ascii	"__pad2\000"
$LASF42:
	.ascii	"__pad3\000"
$LASF43:
	.ascii	"__pad4\000"
$LASF44:
	.ascii	"__pad5\000"
$LASF14:
	.ascii	"__time_t\000"
$LASF85:
	.ascii	"lineno\000"
$LASF46:
	.ascii	"_unused2\000"
$LASF57:
	.ascii	"stderr\000"
$LASF81:
	.ascii	"argv\000"
$LASF28:
	.ascii	"_IO_backup_base\000"
$LASF74:
	.ascii	"matrix_t\000"
$LASF80:
	.ascii	"argc\000"
$LASF71:
	.ascii	"cols\000"
$LASF63:
	.ascii	"__tzname\000"
$LASF79:
	.ascii	"main\000"
$LASF22:
	.ascii	"_IO_write_base\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
