# Guiao 2 
# 
#
#	t2 = and
#	t3 = or
#	t4 = nor
#	t5 = xor
#	t6 = xor(val_1,mascara) , mascara = 0xffffffff
.data
.text

.globl main

main:
	ori	$t0,$0,0x5c1b		# t0 = val_1
	ori	$t1,$0,0xa3e4		# t1 = val_2
	and	$t2,$t0,$t1		# t2 = and(t0,t1)
	or	$t3,$t0,$t1		# t3 = or(t0,t1)
	nor	$t4,$t0,$t1		# t4 = nor(t0,t1)
	xor	$t5,$t0,$t1		# t5 = xor(t0,t1)
	
	ori	$t7,$0,0x0614		# t7 = val_x
	xori	$t6,$t7,0xFFFFFFFF	# t6 = ~t6
	
	jr	$ra
	
	  