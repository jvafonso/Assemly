.data 
	saudacao: .asciiz "Ola. Por favor, forneca sua idade: "
	saida: .asciiz "Sua idade e: "
	
.text
	li $v0, 4 #imprimir uma string
	la $a0, saudacao
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall
	
	move $t0, $v0 #valor fornecido esta em t0
	
	li $v0, 4 #imprimir uma string
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall 
	