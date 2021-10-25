# guiao 2 - ex 2
#	
#	sll - shift left
#	srl - shift right
#	sra - shift right mantendo o sinal
#
# t0 = val_x
# imm = nº de bits a deslocar
#
# t2 = sll
# t3 = srl
# t4 = sra

#.data
#.text
#.eqv imm,2
#.globl main
#
#main:	li	$t0,0x862A5C1B	# t0 = val_x
#	
#	sll	$t2,$t0,imm	# sll(t0,imm)
#	srl	$t3,$t0,imm	# srl(t0,imm)
#	sra	$t4,$t0,imm	# sra(t0,imm)
#	
#	jr	$ra
		
#	
#------------------------------------------------------ alinea d)
#
# COdigo Gray
#
# t0 = bin
# t1 = gray

.data
.text

.globl main

# binary to gray
# 
# t0 = bin
# t1 = gray
#
main:	li	$t0,5		# t0 = bin
	srl	$t1,$t0,1	# t1 = srl(t0,1)
	xor	$t1,$t0,$t1	# t1 = t0 ^ t2 = bin ^ srl(bin,1)
	
# gray to binary
#
# t3 = gray	
# t4 = num
# t5 = bin
#
	li	$t3,7		# t3 = gray code
	srl	$t4,$t3,4	# srl(num,4)
	xor	$t3,$t3,$t4	# num = num ^srl(num,4)
	srl	$t4,$t3,2	# srl(num,2)
	xor	$t3,$t3,$t4	# num = num ^srl(num,2)
	srl	$t4,$t3,1	# srl(num,1)
	xor	$t3,$t3,$t4	# num = num^srl(num,1)
	
	or	$t5,$t3,$0	# num = bin
	
	jr	$ra
		
	
