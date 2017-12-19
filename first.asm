;;  nasm -f bin first.asm -o first.com

org 0x100		; эта директива нужна только в случае .com файла, в котором нет никаких	секций

	mov ah, 02h ;; команда вывода символа на экран
	mov dl, 'H'
	int 0x21  ; вызов прерывания 21
	
	mov ah, 02h
	mov dl, 'e'
	int 0x21
	
	mov ah, 02h
	mov dl, 'l'
	int 0x21
	
	mov ah, 02h
	mov dl, 'l'
	int 0x21
	
	mov ah, 02h
	mov dl, 'o'
	int 0x21
	
	mov ax, 0x4c00	; ah == 0x4c (завершить программу -- EXIT) ,  al == 0x00  (код выхода 0 )
	int 0x21 ; вызов прерывания 21
