org 100h

.model small
.data
space dw 11
star dw 1

.code
main proc
    mov cx,7

outer:
mov bx,cx ;store 

mov cx,space
k:

    mov dl,32
    mov ah,02
    int 21h
    
    loop k
    dec space
    mov cx,star

l:

    mov dl,'x' ;3;5;7
    mov ah,02
    int 21h
    
    loop l
    inc star ;add space,2
    inc star
    
    mov dl,0Ah
    mov ah,02
    int 21h
    mov dl,0Dh
    mov ah,02
    int 21h
    
    mov cx,bx
    
    loop outer
    ret
    end main
    endp