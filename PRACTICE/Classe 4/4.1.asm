# Guião 4 - Ex 1
#  	
#	O programa seguinte lê uma string do teclado, 
#	conta o número de carateres numéricos que ela contém 
#	e imprime esse resultado.
#
# Mapa de Registos:
# 	t0 = num
#	t1 = i
#	t2 = str
#	t3 = str+i
#	t4 = str[i]

	.data
	.eqv	SIZE,20
	.eqv	read_string,8
	.eqv	print_int10,1
	.eqv	print_string,4
str:	.space	20
str1:	.asciiz	"Introduza uma String: \n"
	.text
	.globl main

main:	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string(str1)
	
	la	$a0,str			# a0=&str[0]
	li	$a1,SIZE		# a1=SIZE
	li	$v0,read_string		
	syscall				# 
	or	$t2,$a0,$0		# t2 = read_string
	or	$t0,$0,$0		# num = 0;
	or	$t1,$0,$0		# i = 0;
while:
	la	$t2,str
	addu	$t3,$t2,$t1		# t3 = str+i ou &str[i]
	lb	$t4,0($t3)		# t4 = str[i]
	beq	$t4,0x00,endw		# while(str[i]!='\0')
if:	
	blt	$t4,$0,endif		# if(str[i] >= '0')
	bgt	$t4,$9,endif		# 	if(str[i] <= '9')
	addiu	$t0,$t0,1		#		num++;
endif:
	addi	$t1,$t1,1		#	i++;
	j	while			#}
endw:	
	or	$a0,$0,$t0
	li	$v0,print_int10
	syscall				# print_int10(num);
	jr	$ra
	

	
