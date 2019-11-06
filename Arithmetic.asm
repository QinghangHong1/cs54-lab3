# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0
	# t3 = a - b 
	sub $t3, $t0, $t1 
	# t4 = t3 + t3
	add $t4, $t3, $t3 
	li $t5, 3
	mult $t5, $t2
	mflo $t6
	add $t7, $t4, $t6
	li $v0, 1
	move $a0, $t7
	syscall 

exit:
	# Exit
	li $v0, 10
	syscall

