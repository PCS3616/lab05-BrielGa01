GD /000      ; Carrega x do teclado para o acumulador
SB NUM_ASCII ; Subtrai /3030 
MM X         ; Armazena em X
GD /000      ; Carrega um espaco e um digito de Y
ML SHIFT     ; Desloca para a esquerda para se livrar do espaco
MM Y         ; Armazena o valor descolcado em y
GD /000      ; Le o segundo digito de y e um LF
DV SHIFT     ; Desloca para a direita
AD Y         ; Soma os dois para criar y com dois digitos
SB NUM_ASCII ; subtrai /3030
MM Y         ; Armazena o valor em Y
AD X         ; Soma y e x
MM SOMA      ; Armazena o valor da soma
ML SHIFT     ; Desloca duas casas para a esquerda
DV SHIFT     ; Isola o número mais a direita
MM X1        ; Armazena o resultado em X1
LD COMP      ; Carrega o valor 000A no acumulador
SB X1        ; Faz 000A-X1
JN /100      ; Pula para 0100 se X1>000A
LD SOMA      ; Carrega o valor da soma
AD NUM_ASCII ; Adiciona /3030 para representar a soma em ascii
MM SOMA      ; Armazena a soma em ascii
PD /100      ; Mostra a soma no monitor
HM /000      ; Encerra a execucao

@ /100
LD SOMA      ; Carrega o valor da soma
SB COMP      ; Subtrai 000A
AD SHIFT     ; Soma /0100
AD NUM_ASCII ; Transforma o valor para ascii
MM SOMA      ; Armazena a soma
PD /100      ; Mostra a soma no monitor
HM /000      ; Encerra a execucao

@ /F00
SHIFT    k /0100 ; Desloca os valores duas casas
X        k =0    ; Valor de x
Y        k =0    ; Valor de y
SOMA     K =0    ; Resultado da soma
X1       k =0    ; Algarismo menos significativo da soma
COMP     k /A    ; Valor para comparacao do algoritmo
NUM_ASCII K /3030 ; Para converter os valores para ascii