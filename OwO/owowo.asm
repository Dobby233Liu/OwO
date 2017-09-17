BITS 16

start:
	mov ax, 07C0h		; stop reading
	add ax, 288		; ok
	mov ss, ax
	mov sp, 4096

	mov ax, 07C0h		; stop reading
	mov ds, ax


	mov si, text_string	; why are u reading
	call print_string	; NO

	jmp $			; YAS INFINITE LOOPPPPPPPPPPPPPPPPPPPPPPPP


	text_string db 'no go away pls this os is useless', 0


print_string:			; stop reading
	mov ah, 0Eh		; i will delete all comments hahaha

.repeat:
	lodsb			
	cmp al, 0
	je .done		
	int 10h			
	jmp .repeat

.done:
	ret

BITS 16

start:
	mov ax, 07C0h		; stop reading
	add ax, 288		; ok
	mov ss, ax
	mov sp, 4096

	mov ax, 07C0h		; stop reading
	mov ds, ax


	mov si, text_string	; why are u reading
	call print_string	; NO

	jmp $			; YAS INFINITE LOOPPPPPPPPPPPPPPPPPPPPPPPP


	text_string db 'no go away pls this os is useless', 0


print_string:			; stop reading
	mov ah, 0Eh		; i will delete all comments hahaha

.repeat:
	lodsb			
	cmp al, 0
	je .done		
	int 10h			
	jmp .repeat

.done:
	ret

