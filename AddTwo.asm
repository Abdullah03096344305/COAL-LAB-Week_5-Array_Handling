Include Irvine32.inc
.data

var1 BYTE 1,2,3,4,5
myWord WORD 1000h
arr dword 50 dup(5)


array2 byte "ABC GHI XYZ",0
var2 byte "Hello",0

array1 BYTE "Hello World",0
target BYTE SIZEOF array1 DUP(0)

temp dword 0
;temporary byte,0
.code
main proc
;increment data
;inc myWord ;myWord = 1001h
;mov bx,myWord
;dec bx ; BX = 1000h
;increment address

;Size of the array
mov EAX,SIZEOF arr
;call WriteInt

;Length of the Array
mov al,LENGTHOF arr
;call WriteInt

;Loop Iteration
;mov esi,0
;mov ECX,5          ; is main hm counter rakhin gy k kitni baar loop chalana hy aur hr baar -1 hota jaye ga
;ABC:
;	movzx EAX,var1[esi]
;	call WriteInt
;	inc esi
;	mov temp, ECX
;	mov ECX,3
;	Loop2:

;		mov EDX,offset var2
;		call Writestring

;	loop Loop2
;	MOV ECX,temp

;loop ABC

;Part 1 problem of array exchangement
;mov esi,0 ; index register
;mov ecx,SIZEOF array1 ; loop counter
;L1:
;mov al,array1[esi] ; get a character from source
;mov target[esi],al ; store it in the target
;inc esi ; move to next character
;loop L1 ; repeat for entire string
;mov edx,OFFSET target
;call WriteString ; writes a null-terminated string to the console


;array 2 for copying content from array2 to array1

mov esi,0 ; index register
mov ecx,SIZEOF array2 ; loop counter
L2:
mov al,array2[esi] ; get a character from source
mov array2[esi],al ; store it in the target
inc esi ; move to next character
loop L2 ; repeat for entire string
mov edx,OFFSET target
call WriteString ; writes a null-terminated string to the console


mov ESI,OFFSET array1
mov ECX,LENGTHOF array1
counter:
	mov dx,[esi]
	call Writestring
	add ESI,TYPE array1
	
	
	Loop counter	

;mov EAX, OFFSET myWord ; get address of myWord
;call WriteInt
;inc EAX ; address of myWord + 1
;call WriteInt
invoke ExitProcess,0
main endp
end main 