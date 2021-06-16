org 100h

    section .text
    xor AX, AX
    xor SI, SI
    xor BX, BX
    XOR CX, CX
    xor DX, DX

    MOV SI, 0
    MOV DI, 0d
    
    CALL MODOTEXTO
    CALL MOVERCURSORUNO
    CALL ESCRIBIRNOMBREUNO
    CALL MOVERCURSORDOS
    CALL ESCRIBIRNOMBREDOS
    CALL MOVERCURSORTRES
    CALL ESCRIBIRAPELLIDOUNO
    CALL MOVERCURSORCUATRO
    CALL ESCRIBIRAPELLIDODOS
    CALL ESPERARTECLA
    CALL EXIT

    MODOTEXTO: 
        MOV AH, 0h 
        MOV AL, 03h 
        INT 10h
        RET
    MOVERCURSORUNO:
        MOV AH, 02h 
        MOV DH, 10 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    MOVERCURSORDOS:
        MOV AH, 02h 
        MOV DH, 12 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    MOVERCURSORTRES:
        MOV AH, 02h 
        MOV DH, 14 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    MOVERCURSORCUATRO:
        MOV AH, 02h 
        MOV DH, 16 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    ESCRIBIRNOMBREUNO: 
        MOV AH, 09h
        MOV DX, NOMBREUNO 
        INT 21h
        RET
    ESCRIBIRNOMBREDOS: 
        MOV AH, 09h 
        MOV DX, NOMBREDOS 
        INT 21h
        RET
    ESCRIBIRAPELLIDOUNO: 
        MOV AH, 09h 
        MOV DX, APELLIDOUNO 
        INT 21h
        RET
    ESCRIBIRAPELLIDODOS: 
        MOV AH, 09h 
        MOV DX, APELLIDODOS 
        INT 21h
        RET

    ESPERARTECLA:
        MOV AH, 00h 
        INT 16h

        ret
    EXIT:
        int 20h

section .data

NOMBREUNO DB "Mariana$"
NOMBREDOS DB "Guadalupe$"
APELLIDOUNO DB "Molina$"
APELLIDODOS DB "Mejia$"