THUMB
     AREA     comp_num  CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION		 
        MOV R1,#10 ; loading value for 10 numbers 
		MOV R0,#0 ; first number 
        MOV R2,#1 ; second number 
loop    MOV R0,R1 ; swaping value to get next number 
		MOV R1,R2
		ADD R2,R0,R1 ; getting to next number 
        SUBS R4,R4,#1 ; decrement 
        BGT loop ; do another mul if counter!= 0
stop    B stop ; stop program
     ENDFUNC
     END 