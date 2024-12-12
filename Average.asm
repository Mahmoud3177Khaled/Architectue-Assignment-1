.data
firstArray: .word 10, 31, 5, 7, 11, 3, 8, 40, 12, 4
arraySize: .word 10
sum: .word 0
outputText: .asciiz "Average is: "
newLine: "\n"

.text
main:
    # Initialize registers
    la $t0, firstArray
    lw $t1, arraySize
    li $t2, 0
    li $t3, 0

    # Calculate sum of the array
    loopStart:
        bge $t2, $t1, loopEnd
        lw $t4, 0($t0)
        add $t3, $t3, $t4
        addi $t0, $t0, 4
        addi $t2, $t2, 1
        j loopStart

    loopEnd:
        # Store sum in variable
        sw $t3, sum

        # Calculate average
        mtc1 $t3, $f0
        cvt.s.w $f0, $f0
        lw $t1, arraySize
        mtc1 $t1, $f1
        cvt.s.w $f1, $f1
        div.s $f2, $f0, $f1

        # Print average
        li $v0, 4
        la $a0, outputText
        syscall

        li $v0, 2
        mov.s $f12, $f2
        syscall

        # Print new line
        li $v0, 4
        la $a0, newLine
        syscall

        # Exit program
        li $v0, 10
        syscall