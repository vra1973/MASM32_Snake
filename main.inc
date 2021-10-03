include \masm32\include\masm32rt.inc

Main             proto
SetWindowSize    proto  : DWORD,:DWORD
.const
    MAX_WIDTH   equ 82
    MAX_HEIGHT  equ 42
    
.data?

.data
    srect  SMALL_RECT <0,0,81,41>