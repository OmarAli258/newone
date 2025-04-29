@R0 // loading 0 into A
D=M // D becomes the value at R0
@R1 // loading 1 into A
D=D|M  // simple OR operation M being the value in r1
@R2  // loading 2 into A
M=D // storing the value we got while keepint r1 and r2 unchanged
@R0 // loading 0 into A
D=M // getting r0 again and storing in D      
@R1  // loading 1 into A
D=D&M // doing r0 AND r1 and storing in D
D=!D // notting the value to get NOT (r0 AND r1)
@R2  // loading 3 into A
D=D&M // D(NOT (r0 AND r1)) AND r1 OR r0 which gives xor
@R3 // loading 3 into A
D=M // storing final value in r3 
