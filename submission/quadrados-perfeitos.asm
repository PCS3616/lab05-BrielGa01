LOOP     ld PASSO    ; Carrega o valor da iteracao atual
         ml DOIS     ; Multiplica o valor por 2
         ad UM       ; Soma a constante 1
         ad RESULT   ; Soma com o valor obtido até agora
         mm RESULT   ; Armazena o resultado na posicao 0F08
         ld ADDR     ; Carrega o endereco a ser incrementado
         ad DOIS     ; Soma dois ao endereco
         mm ADDR     ; Atualiza o novo endereco inicial
         ad OP_MM    ; Soma o opcode da instrucao
         mm ARMAZENA ; Armazena a nova instrucao em Armazena
         ld RESULT   ; Carrega o resultado no acumulador
ARMAZENA K  /0
         ld PASSO    ; Carrega o passo atual
         ad UM       ; Aumenta o valor do passo atual
         mm PASSO    ; Armazena o valor do novo passo na memoria
         sb FINAL    ; Subtrai do maximo de passos
         jz FIM
         jp LOOP
FIM      hm /000

@ /100
INICIO   k =0        ; Endereco inicial dos resultados 

@ /F00
UM       k =1        ; Valor para icrementar o passo
DOIS     k =2        ; Valor para Multiplicar o passo
PASSO    k =0        ; Iteracao atual
ADDR     k INICIO    ; Endereco do resultado
RESULT   K =0        ; Valor do resultado parcial
OP_MM    MM /000     ; Operador de move to memory que sera somado
FINAL    K =64       ; Valor para verificar se tudo foi calculado