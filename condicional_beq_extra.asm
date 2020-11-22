.data
	maior: .asciiz "O numero e maior que zero."
	menor: .asciiz "O numero e menor que zero."
	igual: .asciiz "O numero e igual a zero."

.text
	#ler o numero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		#imprime igual
		li $v0, 4
		la $a0, igual
		syscall
		
		li $v0 , 10
		syscall
		
	imprimeMaior:
		#imprime que o numero e maior
		li $v0, 4
		la $a0, maior
		syscall
		
		li $v0 , 10
		syscall
		
	imprimeMenor:
		#imprime que o numero e menor
		li $v0, 4
		la $a0, menor
		syscall
		