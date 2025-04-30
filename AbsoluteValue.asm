@R0 //loading 0 into a
D=M // loadint r0 into D
@R3 // loading 3 into a 
M=0 // making r3=0 for now and we will change it later if x ends up being -32768
@POS // going to label pos
D;JGE // aslong as x is greater then or equal to 0 
@R2 // if not then then x is negative and we continue on this path by loading 2 into a 
M=1 // making r2=1 to show that it is negative 
@R0 // loading 0 into a
@ERRORCHECK //checking if its -32768 because its the smallest negative number
D=D+1 //by making adding 1 if its -32768 it becomes 0 and we can check for that
@NOERROR //seeing if no error, in other words its not 0
D;JNE // if its not zero it jumps to label NOERROR
@R3 // loading 3 into a
M=1// if it is error then we have to set it to 1
@R0 //loading 0 into a
D=M // loadint x into D
@R1 // loading 1 into a
M=D // then we load the number as it is whithout change back into r1
@END //end of program if the number was -32768 so skip the rest
0;JMP // jumping to end 
(NOERROR) // if negative but not -32768
@R0 // loading 0 into a
D=M // regetting the d value
D=-D // making it posative 
@R1 // loading r1 into a
M=D // loading the new value into r1
@END end this route
0;JMP jumping to end
(POS) if its posative
@R0 loading r0 into a 
D=M // regetting d 
@R1 // loading r1 into 
M=D // loading the posative d straight into r1
(END) // end of code.
