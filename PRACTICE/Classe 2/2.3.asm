# guiao 2 - ex 3
#
#
#
#

#  c)
#
#	.data
#str1:	.asciiz	"Uma string qualquer"
#str2:	.asciiz	"AC1 - p"
#	.eqv print_string,4
#	
#	.text
#	.globl main
#main:	la	$a0,str2		# a0 = str2
#	ori	$v0,$0,print_string	#
#	syscall				# print_string(str2)
#	jr	$ra

#  d)
#
#	print_string("intruduza 2 numeros ");
#	a = read_int();
#	b = read_int();
#	print_string("A soma dos dois numeros e': ");
#	print_int10(a+b);
#
#	t0 = a
#	t1 = b
#	
	.data
str1:	.asciiz "Introduza 2 numeros \n"
str2:	.asciiz	"A soma dos dois numeros e': "
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
	
	.text
	.globl main
main:
	la	$a0,str1		# 
	ori	$v0,$0,print_string	#
	syscall				# print_string(str1)
	
	ori	$v0,$0,read_int
	syscall				# read_int();
	or	$t0,$v0,$0		# t0 = read_int();
	
	ori	$v0,$0,read_int
	syscall				# read_int();
	or	$t1,$v0,$0		# t1 = read_int();
	
	la	$a0,str2
	ori	$v0,$0,print_string	# 
	syscall				# print_string(str2);
	
	add	$t1,$t1,$t0		# t1 = a + b
	or	$a0,$t1,$0
	ori	$v0,$0,print_int10	
	syscall				# print_int10(t1)
	
	jr	$ra
	