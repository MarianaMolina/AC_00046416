
        org     100h

        section .text

        
        mov     AL, 0d
        mov     BL, 0d     
        mov     CL, 0d
        mov     DL, 4d 
        mov     AH, 6d
        mov     BH, 4d
        mov     CH, 1d
        mov     DH, 6d

        mov     byte[200h], AL

        add     AL, BL
        add     AL, CL
        add     AL, DL
        add     AL, AH
        add     AL, BH
        add     AL, CH
        add     AL, DH

        mov     AX, 8d

        mov     byte[200h], AX

        div     AX

        int     20h



