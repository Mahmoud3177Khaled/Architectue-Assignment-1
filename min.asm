.data 
	firstArray : .word 10, 31, 5, 7, 11, 3, 8, 40, 12, 4
	secondArray : .word 11, 2, 3, 7, 5, 10, 9, 22, 6, 1
	ArraySize : .word 10
	index : .word 1
	min : .word
	outputText : .asciiz "Min element is: "
	newLine: "\n"

.text
	#1-load the data
	la $t0 , firstArray
	lw $t1 , ArraySize
	lw $t2 , index
	lw $t3 , 0($t0) # min = firstArray[0]

	#2-while loop
	loopStart :
	bge $t2 , $t1 , loopEnd 
	#if index < firstArraySize
	add $t4 , $t2 , $zero
	sll $t4 , $t4 , 2
	add $t4 , $t4 , $t0
	lw $t5 , 0($t4)
	bgt $t5 , $t3 , continueLoop
	add $t3 , $t5 , $zero

	continueLoop :
		addi $t2 , $t2 , 1
		j loopStart

	loopEnd :
		li $v0 , 4
		la $a0 , outputText
		syscall

		li $v0 , 1
		add $a0 , $t3 , $zero
		syscall
#-------------------------------------
li $v0 , 4
la $a0 , newLine
syscall
#--------------------------------------
#1-load the data
la $t0 , secondArray
lw $t1 , ArraySize
lw $t2 , index
lw $t3 , 0($t0) # min = firstArray[0]

#2-while loop
secondLoopStart :
	bge $t2 , $t1 , secondLoopEnd 
	#if index < firstArraySize
	add $t4 , $t2 , $zero
	sll $t4 , $t4 , 2
	add $t4 , $t4 , $t0
	lw $t5 , 0($t4)
	bgt $t5 , $t3 , secondContinueLoop
	add $t3 , $t5 , $zero

secondContinueLoop :
	addi $t2 , $t2 , 1
	j secondLoopStart

secondLoopEnd :
	li $v0 , 4
	la $a0 , outputText
	syscall

	li $v0 , 1
	add $a0 , $t3 , $zero
	syscall