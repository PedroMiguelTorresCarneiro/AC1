# Guião 1 - Ex 1
# 
#	y = 2x + 8
# t0 = x	
# t1 = y
# t2 = 8

.data

.text
.globl main

main:	ori	$t0,$0,3		# t0 = x ( x = 3)
	ori	$t2,$0,8		# t2 = 8
	add	$t1,$t0,$t0		# t1 = t0 + t0 = x + x = 2*x
	add	$t1,$t1,$t2		# t1 = t1 + t2 = y = 2x + 8
	
	jr	$ra
	
#
# After Run $t1 = 14
#
