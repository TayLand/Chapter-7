;Russian Peasant Multiplication Algorithm

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
A DWORD 9
B DWORD 17
result DWORD 0

.code
main proc
	
	beginwhile:
		cmp B, 0
		jz endwhile
		cmp B, 0
		jpo odd
	L2:
		mov eax, A
		mov ecx, 2
		mul ecx
		mov A, edx

		mov ebx, B
		mov ecx, 2
		div ecx
		mov B, eax
		loop beginwhile
	odd:
		add ecx, eax
		mov eax, A
		mov ecx, 2
		mul ecx
		mov A, edx

		mov ebx, B
		mov ecx, 2
		div ecx
		mov B, eax
		loop beginwhile
	endwhile:
	
	invoke ExitProcess,0
main endp
end main