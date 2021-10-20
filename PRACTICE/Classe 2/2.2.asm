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

.data
.text
.eqv imm,2
.globl main

main:	li	$t0,0x862A5C1B	# t0 = val_x
	
	sll	$t2,$t0,imm	# sll(t0,imm)
	srl	$t3,$t0,imm	# srl(t0,imm)
	sra	$t4,$t0,imm	# sra(t0,imm)
	
	jr	$ra
		
	