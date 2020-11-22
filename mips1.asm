.data
       #area de dados na memoria principal
       msg: .asciiz "Ola, mundo!"  #mensagem a ser vista pelo usarios


.text 
       #area de intrucao de programa
       li $v0, 4 #intrucao para impressao de string
       la $a0, msg #indicar o endereco que esta a mensagem
       syscall  #faca imprima						