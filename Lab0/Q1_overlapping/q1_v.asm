	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10000100
	DCD Reset_Handler
	
	ALIGN
	
	AREA MY_CODE, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler

	MOV R0, #10
	LDR R1, =SRC+36;
	LDR R2, =SRC+40;
	
	
	
BACK
	LDR R3, [R1], #-4;
	STR R3, [R2], #-4;
	SUBS R0, #1
	BNE BACK
	
	
	
	
	
	

STOP B STOP

 
	
	AREA MY_DATA, DATA, READWRITE
SRC DCD 0,0,0,0,0,0,0,0,0,0
DST DCD 0,0,0,0,0,0,0,0,0,0
	
	
	END