     THUMB
     AREA  comp_num,  CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION		 
        MOV r0,#17 ; loading value for 10 numbers 
        MOV r1,#5 ; second number
		MOV r2,#16; thrid number 
		CMP  r0, r1
		BLT  Loop1
		CMP  r2, r0
		BLT  Loop2 
		B    STOP
Loop1   CMP  r1, r2
		BLT Loop3
		MOV r3, r1
		B    STOP
Loop2 	MOV r3, r0
		B    STOP	
Loop3   MOV r3, r2
		B    STOP
STOP    B STOP ; stop program
        ENDFUNC
     END 