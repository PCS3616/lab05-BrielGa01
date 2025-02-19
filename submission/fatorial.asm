lv /001 ; Carrega a constante 1 no acumulador
mm /102 ; Carrega 1 na posicao 0102 da memoria
ld /100 ; Carrega o valor de N no acumulador
jz /00A ; Verifica se N = 0
sc fatorial ; Chamada de sub-rotina
hm /000 ; Fim da execução

@ /100
N   k =7 ; Armazena o N
RES k =1 ;Armazena o resultado
    k =1 ; Armazena o número de passos feitos
    k =1 ; Valor constante para somar os passos
    k =1 ; Valor parcial da multiplicacao

@ /200
fatorial k /000 ; Início da sub-rotina

ld /100 ; Carrega o N no acumulador
sb /104 ; Subtrai o numero de passos ja realizados
jz /218 ; Verifica se passos == N, se sim, finaliza a sub-rotina

ld /104 ; Carrega o numero de passos feitos
ad /106 ; Soma 1 na qtd de passos feitos
mm /104 ; Atualiza o numero de passos feitos
ld /108 ; Carrega a multiplicacao parcial
ml /104 ; Multiplica o valor parcial pelo numero de passos feitos
mm /108 ; Armazena o valor da multiplicacao parcial
mm /102 ; Armazena o valor final
jp /202 ; Volta ao comeco da chamada
rs fatorial ; Fim da sub-rotina