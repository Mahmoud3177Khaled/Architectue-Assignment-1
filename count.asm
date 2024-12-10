.data
	arr: .word 10, 31, 5, 7, 11, 3, 8, 40, 12, 4
	arr2: .word 19, 2, 3, 7, 5, 10, 9, 0, 6, 1
	message: .asciiz "Count of even numbers is: "
	newLine: .asciiz "\n"
	c: .word 0
.text
	la $t1, arr
	la $t2, arr2
	la $t3, message
	la $s5, newLine
	lw $t4, c
	
	li $t0, 2
	
	li $t5, 0 # index
	loop:
		bge $t5, 10, loopEnd
		sll $t6, $t5, 2 # index * 4
		add $t7, $t1, $t6
		lw $s1, 0($t7)
	 
		div $s1, $t0
		mfhi $s2
		beq $s2, $zero, add
		j cont
		add: 
			addi $t4, $t4, 1 
		cont:
			addi $t5, $t5, 1 # i++
			j loop
	loopEnd:
		move $a0, $t3
		li $v0, 4
		syscall
		move $a0, $t4
		li $v0, 1
		syscall
		
		move $a0, $s5
		li $v0, 4
		syscall
		
		li $t5, 0 # index
		move $t4, $zero
	loop2:
		bge $t5, 10, loopEnd2
		sll $t6, $t5, 2 # index * 4
		add $t7, $t2, $t6
		lw $s1, 0($t7)
	 
		div $s1, $t0
		mfhi $s2
		beq $s2, $zero, add2
		j cont2
		add2: 
			addi $t4, $t4, 1 
		cont2:
			addi $t5, $t5, 1 # i++
			j loop2
	loopEnd2:
		move $a0, $t3
		li $v0, 4
		syscall
	
		move $a0, $t4
		li $v0, 1
		syscall
	
	