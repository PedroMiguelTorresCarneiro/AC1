# Guião 1 - Ex 3
# 
#	>syscall example : read_int()
#	
# 	ori	$vo,$0,5	#  system call read_int() = 5
# 	syscall
#  	
#	>syscall example : print_int10()
#	
#	or	$a0,$0,$t5	# copy register $t5 to $a0
#	ori	$v0,$0,1	# system call print_int10() = 1
#	syscall
#

.data
space: .asciiz "\n"
.text

.globl main

main:	ori	$v0,$0,5
	syscall			# read_int() syscall
	
	or	$t0,$0,$v0	# t0 = v0 
	ori	$t2,$0,8	# t2 = 8
	addu	$t1,$t0,$t0	# t1 = t0 + t0 = 2x
	sub	$t1,$t1,$t2	# t1 = t1 - t2 = y = 2x - 8
	
	or	$a0,$0,$t1	# copy t1 to a0
	ori	$v0,$0,1	#  
	syscall			# print_int10() syscall
#----------------
	addi 	$v0,$0,4  	# print_string syscall
    	la 	$a0, space	# load address of the string
    	syscall
#----------------
	ori	$v0,$0,34
	syscall			# print_int16() syscall
#----------------	
	addi 	$v0,$0,4  	# print_string syscall
    	la 	$a0, space	# load address of the string
    	syscall
#----------------    	
	ori	$v0,$0,36	
	syscall			# print_intu10() syscall
	
	
	jr	$ra
	
	
