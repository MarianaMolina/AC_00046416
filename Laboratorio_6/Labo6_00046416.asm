
	org 	100h

	section	.text

	mov 	DX, mensaje1
	call  	EscribirCadena

	mov 	BP, frase
	call  	LeerCadena

	mov 	DX, mensaje2
	call 	EscribirCadena

    mov 	DX, contra
	call 	EscribirCadena

	call	EsperarTecla

	int 	20h

	section	.data

mensaje1	 db	"Ingresar contraseña: ", "$"
mensaje2     db	"Bienvenido"
contra       db	"pass"
frase 	     times 	20  	db	" " 	


EsperarTecla:
        mov     AH, 01h         
        int     21h
        ret

LeerCadena:
        xor     SI, SI         
while:  
        call    EsperarTecla    
        cmp     AL, 0x0D       
        je      exit            
        mov     [BP+SI], AL   	
        inc     SI              
        jmp     while           
exit:
	mov 	byte [BP+SI], "$"	
        ret

EscribirCadena:

    call    EsperarTecla
    cmp     AL, contra ; compara AL == contra
    je      DX, mensaje2 ; si son iguales muestra "Bienvenido"
    ret