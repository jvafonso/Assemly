.text

    li $t0, 10     # int a
    li $t1, 20     # int b
    li $t2, 30     # int c
    
    #Operacoes
    mul $s0, $t2, $t2  #(c*c)
    
    mul $s1, $t0, $t0  #(a*a)
    
    div $s0, $s1     # (c*c)/(a*a)
    mflo $s2
    
    add $v0, $s2, $t1     # d = ((c*c)/(a*a)) + b
    