        org     100h
        
        section .text

        mov     byte [200h], "M" 
        mov     byte [201h], "G"
        mov     byte [202h], "M" 
        mov     byte [203h], "M"

        int     20h
