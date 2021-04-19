        org     100h
        
        section .text

        mov     byte [200h], AX 
        mov     byte [201h], BX
        mov     byte [202h], CX
        mov     byte [203h], DX

        mov     CX,"M" 

        mov     AX, "M" 
        mov     CX, BL,                  BL=G
        mov     DX, DS[AX+DI] 

        int     20h
