     THUMB
     AREA  WhileLoop ,  CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION		 
        MOV r0,#17 ; loading value for 10 numbers 
        MOV r1,#5 ; second number 
gcd     CMP      r0, r1
        BEQ      end
        BLT      less
        SUBS     r0, r0, r1  ; could be SUB r0, r0, r1 for A32
        B        gcd
less
        SUBS     r1, r1, r0  ; could be SUB r1, r1, r0 for A32
        B        gcd
end
stop    B stop ; stop program
     ENDFUNC
     END 