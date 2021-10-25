# Guião 3 - Ex 1
# 
# 	if...else
# 	for()
# 	while()
# 	do...while()
#

# Mapa de Registos
# t0 = sum
# t1 = value
# t2 = i

	.data
str1:	.asciiz "introduza um numero: "
str2:	.asciiz	"Valor ignorado\n"
str3:	.asciiz	"A soma dos positivos e': "
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
	.text
	.globl main
main:
	li	$t0,0		# sum = 0 = t0
	li	$t2,0		# i = 0 = t2
	