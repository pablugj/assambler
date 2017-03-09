.model small ;tamaño del documento
.stack 200h
.const
	CONS_FIN EQU 13 
	CONS_FINR EQU 10
	CONS_CFNL  EQU "$"
	MSG       EQU "Soy una constante"
	INTERRUPCION  EQU 21h

.data ;variables
saludo db MSG,CONS_FIN,CONS_FINR,CONS_CFNL 
caracter db "x",CONS_FIN,CONS_FINR,CONS_CFNL 

.code ;codigo
.startup
	mov ax,@data
	mov ds,ax
	
	mov dx,offset caracter
	
	mov ah,09h
	int 21h

.exit
end
