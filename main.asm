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

dialog  :.asciiz "

BEDFORD 
Coward of France! how much he wrongs his fame,
Despairing of his own arm's fortitude,
To join with witches and the help of hell!

BURGUNDY 
Traitors have never other company.
But what's that Pucelle whom they term so pure?

TALBOT 
A maid, they say.

BEDFORD 
A maid! and be so martial!

BURGUNDY 
Pray God she prove not masculine ere long,
If underneath the standard of the French
She carry armour as she hath begun.

TALBOT 
Well, let them practise and converse with spirits:
God is our fortress, in whose conquering name
Let us resolve to scale their flinty bulwarks.

BEDFORD 
Ascend, brave Talbot; we will follow thee.

TALBOT 
Not all together: better far, I guess,
That we do make our entrance several ways;
That, if it chance the one of us do fail,
The other yet may rise against their force.

BEDFORD 
Agreed: I'll to yond corner.

BURGUNDY 
And I to this.

TALBOT 
And here will Talbot mount, or make his grave.
Now, Salisbury, for thee, and for the right
Of English Henry, shall this night appear
How much in duty I am bound to both.

Sentinels 
Arm! arm! the enemy doth make assault!

ALENCON 
How now, my lords! what, all unready so?

BASTARD OF ORLEANS 
Unready! ay, and glad we 'scaped so well.

REIGNIER 
'Twas time, I trow, to wake and leave our beds,
Hearing alarums at our chamber-doors.

ALENCON 
Of all exploits since first I follow'd arms,
Ne'er heard I of a warlike enterprise
More venturous or desperate than this.

BASTARD OF ORLEANS 
I think this Talbot be a fiend of hell.

REIGNIER 
If not of hell, the heavens, sure, favour him.

ALENCON 
Here cometh Charles: I marvel how he sped.

BASTARD OF ORLEANS 
Tut, holy Joan was his defensive guard.

Enter CHARLES and JOAN LA PUCELLE

CHARLES 
Is this thy cunning, thou deceitful dame?
Didst thou at first, to flatter us withal,
Make us partakers of a little gain,
That now our loss might be ten times so much?

JOAN LA PUCELLE 
Wherefore is Charles impatient with his friend!
At all times will you have my power alike?
Sleeping or waking must I still prevail,
Or will you blame and lay the fault on me?
Improvident soldiers! had your watch been good,
This sudden mischief never could have fall'n.

CHARLES 
Duke of Alencon, this was your default,
That, being captain of the watch to-night,
Did look no better to that weighty charge.

ALENCON 
Had all your quarters been as safely kept
As that whereof I had the government,
We had not been thus shamefully surprised.

BASTARD OF ORLEANS 
Mine was secure.

REIGNIER 
And so was mine, my lord.

CHARLES 
And, for myself, most part of all this night,
Within her quarter and mine own precinct
I was employ'd in passing to and fro,
About relieving of the sentinels:
Then how or which way should they first break in?

JOAN LA PUCELLE 
Question, my lords, no further of the case,
How or which way: 'tis sure they found some place
But weakly guarded, where the breach was made.
And now there rests no other shift but this;
To gather our soldiers, scatter'd and dispersed,
And lay new platforms to endamage them.

Soldier 
I'll be so bold to take what they have left.
The cry of Talbot serves me for a sword;
For I have loaden me with many spoils,
Using no other weapon but his name.

Exit

SCENE II. Orleans. Within the town.

Enter TALBOT, BEDFORD, BURGUNDY, a Captain, and others 

BEDFORD 
The day begins to break, and night is fled,
Whose pitchy mantle over-veil'd the earth.
Here sound retreat, and cease our hot pursuit.

Retreat sounded

TALBOT 
Bring forth the body of old Salisbury,
And here advance it in the market-place,
The middle centre of this cursed town.
Now have I paid my vow unto his soul;
For every drop of blood was drawn from him,
There hath at least five Frenchmen died tonight.
And that hereafter ages may behold
What ruin happen'd in revenge of him,
Within their chiefest temple I'll erect
A tomb, wherein his corpse shall be interr'd:
Upon the which, that every one may read,
Shall be engraved the sack of Orleans,
The treacherous manner of his mournful death
And what a terror he had been to France.
But, lords, in all our bloody massacre,
I muse we met not with the Dauphin's grace,
His new-come champion, virtuous Joan of Arc,
Nor any of his false confederates.

BEDFORD 
'Tis thought, Lord Talbot, when the fight began,
Roused on the sudden from their drowsy beds,
They did amongst the troops of armed men
Leap o'er the walls for refuge in the field.

BURGUNDY 
Myself, as far as I could well discern
For smoke and dusky vapours of the night,
Am sure I scared the Dauphin and his trull,
When arm in arm they both came swiftly running,
Like to a pair of loving turtle-doves
That could not live asunder day or night.
After that things are set in order here,
We'll follow them with all the power we have.

Enter a Messenger

Messenger 
All hail, my lords! which of this princely train
Call ye the warlike Talbot, for his acts
So much applauded through the realm of France?

TALBOT 
Here is the Talbot: who would speak with him?

Messenger 
The virtuous lady, Countess of Auvergne,
With modesty admiring thy renown,
By me entreats, great lord, thou wouldst vouchsafe
To visit her poor castle where she lies,
That she may boast she hath beheld the man
Whose glory fills the world with loud report.

BURGUNDY 
Is it even so? Nay, then, I see our wars
Will turn unto a peaceful comic sport,
When ladies crave to be encounter'd with.
You may not, my lord, despise her gentle suit.

TALBOT 
Ne'er trust me then; for when a world of men
Could not prevail with all their oratory,
Yet hath a woman's kindness over-ruled:
And therefore tell her I return great thanks,
And in submission will attend on her.
Will not your honours bear me company?

BEDFORD 
No, truly; it is more than manners will:
And I have heard it said, unbidden guests
Are often welcomest when they are gone.

TALBOT 
Well then, alone, since there's no remedy,
I mean to prove this lady's courtesy.
Come hither, captain.

\n\n"

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
    or $t3, $0, $0          #$t3 - true/false flag
    or $t4, $0, $a0         #$t4 - asciiz address
    or $t5, $0, $a1         #$t5 - allocated space
    or $t6, $0, $0          #$t6 - size of largest word
    or $t7, $0, $0          #$t7 - address of largest word
    
findword:
    beq $a0, $0, endfindmax
    lb $a0, 0($t4)
    addi $t4, $t4, 1
    jal isletter
    beq $v0, $0, findword
    addi $t4, $t4 -1        #undo the last increment if we found an alphabetic character

foundword:
    or $a0, $0, $t4         #$a0 is now the address that held the first alphabetic letter
    jal getword
    slt $t3, $t6, $v0
    bne $t3, $0, newlargest
    j eatinput

newlargest:
    ori $t6, $0, $v0
    addi $t7, $t4, -1       #$t7 now marks current largest word
    j eatinput

eatinput:
    lb $a0, 0($t4)
    addi $t4, $t4, 1
    jal isletter
    bne $v0, $0, findword

endfindmax:
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
    or $t0, $0, $a0         #swap $a0 and $a1 so we can use modified strcpy
    or $a0, $0, $a1
    or $a1, $0, $t0

    jal strcpy                      #strcpy will copy word at $a0 into $a1 and end it with a null character

    li $t1, -1                   #we will use $t1 to count the length of our saved word
lengthloop:
    lb $t0, 0($a1)              #load character from $a1
    addi $a1, $a1, 1            #increment address
    addi $t1, $t1, 1            #increment counter
    bne $t0, $0, lengthloop     #loop unless we find a null character
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
    ori $t0, $0, $a0
    ori $t1, $0, $a1

strcpyloop: 
    lb $t2, 0($t1)
    sb $t2, 0($t0)
    addi $t0, $t0, 1
    addi $t1, $t1, 1
    ori $a0, $0, $t2
    jal isletter
    bne $v0, $0, strcpyloop     #copies string until it finds a non alphabetic character
    li $t2, 0                   #then it adds a null character
    sb $t2, 0($t0) 
    jr $ra  

#strcpy:            #original function
#lb $t0, 0($a1)
    #sb $t0, 0($a0)
    #addi $a0, $a0, 1
    #addi $a1, $a1, 1
    #bne $t0, $0, strcpy 
    #jr $ra  



