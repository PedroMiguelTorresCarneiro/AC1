# Guião 1 - Ex 2
# 
#	y = 2x - 8
# t0 = x	
# t1 = y
# t2 = 8
# x = 3 

.data
.text

.globl main

main:	ori	$t0,$0,3	# t0 = x = 3
	ori	$t2,$0,8	# t2 = 8
	add	$t1,$t0,$t0	# t1 = t0 + t0 = 2x
	sub	$t1,$t1,$t2	# t2 = t1 - t1 = y = 2x - 8
	
	jr	$ra		# end
	

