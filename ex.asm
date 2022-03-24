global _start

section .data
arr1 dw -11000, -40, 56, 62, -74, -70, 199, -98, -19, 82
ans dw 0

section .bss
arr2 resw 10

section .text
_start:
	mov ecx, 10
	mov esi, arr1
	mov edi, arr2
	xor eax, eax
lp1:
	lodsw
	bt eax, 15
	jae lp2
	not eax
	add eax, 1
lp2:
	stosw
	loop lp1
lp3:
	mov ecx, 10
	mov esi, arr2
	xor ebx, ebx
lp4:
	lodsw
	add ebx, eax
	loop lp4

end:
	mov eax, 4
	mov ebx, 1
	mov ecx, edi
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80

