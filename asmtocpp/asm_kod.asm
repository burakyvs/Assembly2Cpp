.code
PUBLIC strfind
strfind PROC
	mov r10,0									; i = 0

While1:
	mov al,byte ptr [rcx+r10]					; str1[i] in al
	cmp al,0									
	je fns1										; if str[i] == '\0' them jump to fns1 
	mov r11,r10									; k = i
	mov r12,0									; j = 0

While2:
	mov al,byte ptr [rcx+r11]					; str1[k] in al
	mov bl,byte ptr [rdx+r12]					; str2[j] in bl
	cmp al,bl
	jne last									; if str1[k] != str2[j] then jump to last
	mov bl,byte ptr [rdx+r12+1]					; str2[j+1] in bl
	cmp bl,0	
	je fns2										; if str2[j+1] == '\0' then jump to fns2
	inc r11										; k++
	inc r12										; j++
	jmp while2									; jump to while2


last:
	inc r10										; i++
	jmp while1									; jump to while1

fns1:
	mov r15,1									
	neg r15
	mov rax,r15									; store -1 in rax
	ret											; return -1
fns2:
	mov rax,r10									; store i in rax
	ret											; return i
strfind ENDP
End