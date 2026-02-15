.386
.model flat,stdcall
option casemap:none
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib
.code
StrDisp proc StrAddr:DWORD, StrSz:DWORD 
LOCAL stdout:DWORD, cWritten:DWORD
invoke GetStdHandle, STD_OUTPUT_HANDLE
mov stdout, eax
mov eax, StrAddr
invoke WriteConsoleA, stdout, StrAddr, StrSz, ADDR cWritten, NULL
ret
StrDisp endp

end
