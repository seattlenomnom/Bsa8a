/* bsa8a.s sourcefile for bsa8a
* Using ORR to toggle a character case
*/

    .global _start
_start:
_read:
    MOV R7, #3                          @ read Syscall number
    MOV R0, #0                          @ stdin is the keyboard
    MOV R2, #1                          @ read one char only
    LDR R1, =string                     @ string is at string:
    SWI 0

_togglecase:
    LDR R1, =string                     @ address of char
    LDR R0, [R1]                        @ load address of char into R0
    ORR R0, R0, #0x20                   @ toggle case
    STR R0, [R1]                        @ write char back into string

_write:
    MOV R7, #4                          @ write syscall number
    MOV R0, #1                          @ stdout is the screen
    MOV R2, #1                          @ string is 1 char long
    LDR R1, =string                     @ string at string:
    SWI 0

_exit:
    MOV R7, #1
    SWI 0

.data
string:     .ascii " "
