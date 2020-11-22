.data 
	msg: .asciiz "Forneca um numero decimal: "
	zero: .double 0.0
	
.text
	#impriminso mensagem para o usario
 	li $v0,4
 	la $a0, msg
 	syscall
 	
 	#lendo o numero
 	li $v0, 7
 	syscall #valor lido estara em $f0
 	
 	ldc1 $f2, zero #load double
 	add.d $f12, $f2, $f0   #adicao de double
 	
 	#imprimindo o numero 
 	li $v0, 3
 	syscall