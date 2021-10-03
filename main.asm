include main.inc


.code
start:
    ; set size and title
    fn SetConsoleTitle,"Snake demo"
    fn SetWindowSize,MAX_WIDTH,MAX_HEIGHT
    
    
    
    fn Main
    ;----------
    inkey
    ;----------
    exit
;********************
Main proc


    ret
Main endp
;********************
SetWindowSize    proc uses ebx esi edi wd: DWORD,ht:DWORD
    fn GetStdHandle, -11
    ;---------------
    push eax
    ;---------------
    mov ebx,ht
    shl ebx,16
    ;---------------
    or ebx,wd
    ;--------------
    fn SetConsoleScreenBufferSize, eax, ebx
    ;---------------
    pop eax
    ;---------------
    fn SetConsoleWindowInfo,eax,1,offset srect
    
    ret
SetWindowSize endp

end start
