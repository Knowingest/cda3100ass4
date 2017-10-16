# -----------------------------------------------
# findmax (40 points)
#
# $a0: the starting address of an asciiz string 
# $a1: the starting address of an allocated memory space to which the maximum length word is to 
#      be copied, ending with a 0 to make it an asciiz string  
#
# Note: Must call the getword function to examine one word at a time 
# -----------------------------------------------

# -----------------------------------------------
# getword (40 points)
#
# $a0: the starting address of an asciiz string, say, A, at this address, the content must be the 
#      ascii code of an English letter, either upper case of lower case
# $a1: the starting address of an allocated memory space, to which the first word in string A can 
#      be copied, ending with a 0 to make it an asciiz string  
# $v0: the length of the word
#
# Note: Must call the isletter function 
# -----------------------------------------------

# -----------------------------------------------
# isletter (20 points)
#
# $a0: a value
# $v0: returns 1 if the value in $a0 is the ascii code of an English letter, 0 otherwise
# -----------------------------------------------

.data 

dialog  :.asciiz "i am not tall ok"

returnres : .space 100



    .text
    .globl main

main:
    la $a0, dialog
    la $a1, returnres
    jal findmax

    li $v0,4            # now print the found longest word
    la $a0,returnres
    syscall
    
done:li $v0, 10     # Exit
    syscall

# -----------------------------------------------
# findmax (40 points)
#
# $a0: the starting address of an asciiz string 
# $a1: the starting address of an allocated memory space to which the maximum length word is to 
#      be copied, ending with a 0 to make it an asciiz string  
#
# Note: Must call the getword function to examine one word at a time 
# -----------------------------------------------
findmax:
    li $t3, 0               #$t3 - true/false flag
    or $t4, $0, $a0         #$t4 - asciiz address
    or $t5, $0, $a1         #$t5 - allocated space
    li $t6, 0               #$t6 - size of largest word
    li $t7, 0               #$t7 - address of largest word
    
findword:
    beq $a0, $0, endfindmax     #exit function if we found a null character
    lb $a0, 0($t4)          #load character
    addi $t4, $t4, 1        #increment address

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal isletter            #call isletter
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    beq $v0, $0, findword   #if our character wasn't a letter, loop again
    addi $t4, $t4 -1        #undo the last increment if we found an alphabetic character

    
    or $a0, $0, $t4         #$a0 is now the address that held the first alphabetic letter
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal getword             #call getword
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    slt $t3, $t6, $v0       
    bne $t3, $0, newlargest #branch if found new largest word
    j eatinput

newlargest:
    or $t6, $0, $v0
    addi $t7, $t4, -1       #$t7 now marks current largest word
    j eatinput

eatinput:
    lb $a0, 0($t4)
    addi $t4, $t4, 1

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal isletter            #call isletter
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    bne $v0, $0, findword


endfindmax:
    or $a0, $0, $t5
    or $a1, $0, $t7

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal strcpy                      #call strycpy
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    jr $ra  
# -----------------------------------------------
# getword (40 points)
#
# $a0: the starting address of an asciiz string, say, A, at this address, the content must be the 
#      ascii code of an English letter, either upper case of lower case
# $a1: the starting address of an allocated memory space, to which the first word in string A can 
#      be copied, ending with a 0 to make it an asciiz string  
# $v0: the length of the word
#
# Note: Must call the isletter function 
# -----------------------------------------------
getword:
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    or $a0, $0, $a1
    lw $a1, 0($sp)
    addi $sp, $sp, 4

    addi $sp, $sp, -4
    sw $t0, 0($sp)
    addi $sp, $sp, -4
    sw $t1, 0($sp)
    addi $sp, $sp, -4
    sw $t2, 0($sp)


    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal strcpy                      #call strycpy
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    lw $t2, 0($sp)
    addi $sp, $sp, 4
    lw $t1, 0($sp)
    addi $sp, $sp, 4
    lw $t0, 0($sp)
    addi $sp, $sp, 4

    li $t1, -1                   #we will use $t1 to count the length of our saved word
    li $t2, 0
lengthloop:
    lb $t0, 0($a0)              #load character from $a1
    addi $a0, $a0, 1            #increment address
    addi $t1, $t1, 1            #increment counter
    bne $t0, $t2, lengthloop     #loop unless we find a null character
    or $v0, $0, $t1

    jr $ra  

# -----------------------------------------------
# isletter (20 points)
#
# $a0: a value
# $v0: returns 1 if the value in $a0 is the ascii code of an English letter, 0 otherwise
# -----------------------------------------------
isletter: 
    li $t0, 123         #last alphabetic ascii value is 122
    slt $t1, $a0, $t0   #knowing that, we check that a0 < 123
    li $t0, 64          #first alphabetic ascii value is 65
    slt $v0, $t0, $a0   #we check that 64 < a0
    and $v0, $v0, $t1   #we AND these results together into $v0 and end function
    jr $ra  


# -----------------------------------------------
# strcpy
# 
# Note: copies the string starting at $a1 to an allocated memory space starting at $a0, the same 
#       as the code we wrote in the class, will be useful
# -----------------------------------------------
strcpy:
lb $t0, 0($a1)
    sb $t0, 0($a0)
    addi $a0, $a0, 1
    addi $a1, $a1, 1
   
    li $t3, 123
    slt $t1, $t0, $t3
    li $t3, 64
    slt $t2, $t3, $t0
    and $t0, $t1, $t2

    bne $t0, $0, strcpy

    jr $ra  