.data
	msgUsr: .asciiz "Forneca o numero positivo: "
	msgPar: .asciiz "O numero e par: "
	msgImpar: .asciiz "O numero e impar: "

.text

	la $a0, msgUsr
	jal imprimeString
	jal leInteiro
	
	
	move $a0, $v0
	jal ehImpar
	beq $v0, $zero, imprimePar
	
	la $a0, msgImpar
	jal imprimeString
	
	jal encerraPrograma
	
	
	imprimePar:
		la $a0, msgPar
		jal imprimeString
		jal encerraPrograma
		
	#funcao que verifica se o argumento $a0 e impar
	#retorna 1 se impar
	#retorna 0 se par
	ehImpar:
		li $t0, 2
		div $a0, $t0
		
		mfhi $v0
		jr $ra
	
	#recebe e imprime uma string de $a0	
	imprimeString:
		li $v0, 4
		syscall
		jr $ra
		
	#funcao que le um inteiro e o roetorna em $v0
	leInteiro:
		li $v0, 5
		syscall 
		jr $ra
		
	#encerra o programa
	encerraPrograma:
		li $v0, 10
		syscall