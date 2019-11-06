# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	choose: .asciiz "Choose an integer number between 0 and 1000:\n"
	hello: .asciiz "Hello World!\n"
	user: .asciiz "User chose "
	truly: .asciiz ". Truly a wise choice.\n"

#Text Area (i.e. instructions)
.text
main:
	li $v0, 4
	la $a0, choose
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, hello
	syscall

	la $a0, user
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, truly
	syscall


exit:
	# Exit
	li $v0, 10
	syscall

