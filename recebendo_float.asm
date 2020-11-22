.data 
	msg: .asciiz "Forneca um numero decimal: "
	zero: .float 0.0
	
.text
	#impriminso mensagem para o usario
 	li $v0,4
 	la $a0, msg
 	syscall
 	
 	#lendo o numero
 	li $v0, 6
 	syscall #valor lido estara em $f0
 	
 	lwc1 $f1, zero  #load word coprocessador 1
 	add.s $f12, $f1, $f0  #adicao de float
 	
 	#imprimindo o numero 
 	li $v0, 2
 	syscall