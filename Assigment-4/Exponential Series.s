	PRESERVE8
	THUMB 
	AREA appcode, CODE, READONLY
	EXPORT __main
	ENTRY
__main function
	VMOV.F32 S1, #1 ; e^1
	VMOV.F32 S2, #20   ;Number of terms in e^5 expansion 
	VMOV.F32 S3, #1    ;count 
	VMOV.F32 S4, #1    ; temp var 
	VMOV.F32 S5, #1    ; Outcome
	VMOV.F32 S7, #1    ;increment 
Loop  
	VCMP.F32 S2, S3   ;did we reach max term?  
	VMRS.F32 APSR_nzcv, FPSCR  ;copy FPSCR to APSR  BLT stop;  
	VDIV.F32 S6, S1, S3; t1=x/count  
	VMUL.F32 S4, S4, S6; t=t*t1;  
	VADD.F32 S5, S5, S4; result=result+t;  
	VADD.F32 S3, S3, S7; inc count  B Loop;
	B Loop; 
	
stop B stop ; stop program
endfunc
end