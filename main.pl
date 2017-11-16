/* Baixe o SWI Prolog aqui:
   http://www.swi-prolog.org/download/stable

   DICA: Voc� pode abrir esse arquivo no SWI Prolog e testar as
   coisas conforme l� este texto!

   Toda linha em Prolog deve ser terminada com um ponto final (.).
   Ele � equivalente ao ponto-e-v�rgula (;) de C e vai dar ruim se
   voc� esquecer.

   Para definir um fato como verdadeiro em Prolog, apenas escreva
   ele: */

isso_e_um_fato_verdadeiro. /* Todo fato deve come�ar com letra
                              min�scula! */

/* Dentro do console do Prolog, voc� pode fazer a pergunta:
   ?- isso_e_um_fato_verdadeiro.
   E ele dar� o output "true.". Qualquer query que seja feita e n�o
   seja um fato verdadeiro dar� o output "false.".

   Tamb�m � poss�vel definir rela��es dentro de prolog de maneira
   parecida. */

relacao(argumento_1, argumento_2). /* Rela��es e argumentos tamb�m
                                      precisam come�ar com letra
                                      min�scula sempre! */

/* A query "?- relacao(argumento_1, argumento_2)." retornar�
   "true.". Note que qualquer outra query rela��o(), mas com outros
   argumentos, retornar� "false.", pois ela n�o est� definida como
   verdadeira no c�digo!

   Vari�veis s�o definidas com letras mai�sculas. Elas s�o
   substitu�das de acordo com as regras de unifica��o aprendidas
   em aula. */

ama(joao, maria).
ama(fred, barney).

/* Fazendo a query "?- ama(joao, Quem).", o prolog retornar� o
   seguinte output:

   "Quem = maria."

   O output mostra a unifica��o que pode ser feita para que a
   query seja verdadeira.

   Fazendo a query "?- ama(barney, Quem).", o output ser� apenas

   "false."

   Pois, n�o h� unifica��o para Quem nesse caso que torne a
   query verdadeira.

   Tamb�m � poss�vel definir regras usando o operador ":-". */

mortal(X) :- humano(X).
humano(socrates).

/* Essa regra define que, quem � humano � mortal. E logo abaixo,
   h� uma rela��o definindo que socrates � mortal. Logo, uma query
   "?- mortal(socrates)." retornar� "true.".

   Uma query "?- mortal(fred)." obviamente retornaria "false.", pois
   a rela��o de mortal com o argumento fred n�o foi definida. 

   Por fim, daremos uma olhada em listas, que s�o a estrutura de
   dados mais importante do Prolog. Uma lista em prolog � uma
   sequ�ncia de argumentos entre colchetes "[" e "]". */

lista([a, b, c]).

/* Na rela��o acima, a lista [a, b, c] � um argumento da rela��o
   lista. A unifica��o de listas funciona de modo um pouco diferente,
   pois ela s� pode sempre ser dividida em head e tail, na seguinte
   forma: [Head|Tail].

   O Head sempre vai conter o primeiro elemento da lista, e Tail
   conter� o resto da lista. Se fizessemos uma query:

   "?- lista([Head|Tail])"

   O output seria:

   "Head = a,"
   "Tail = [b, c]." */