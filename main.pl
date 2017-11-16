/* Baixe o SWI Prolog aqui:
   http://www.swi-prolog.org/download/stable

   DICA: Você pode abrir esse arquivo no SWI Prolog e testar as
   coisas conforme lê este texto!

   Toda linha em Prolog deve ser terminada com um ponto final (.).
   Ele é equivalente ao ponto-e-vírgula (;) de C e vai dar ruim se
   você esquecer.

   Para definir um fato como verdadeiro em Prolog, apenas escreva
   ele: */

isso_e_um_fato_verdadeiro. /* Todo fato deve começar com letra
                              minúscula! */

/* Dentro do console do Prolog, você pode fazer a pergunta:
   ?- isso_e_um_fato_verdadeiro.
   E ele dará o output "true.". Qualquer query que seja feita e não
   seja um fato verdadeiro dará o output "false.".

   Também é possível definir relações dentro de prolog de maneira
   parecida. */

relacao(argumento_1, argumento_2). /* Relações e argumentos também
                                      precisam começar com letra
                                      minúscula sempre! */

/* A query "?- relacao(argumento_1, argumento_2)." retornará
   "true.". Note que qualquer outra query relação(), mas com outros
   argumentos, retornará "false.", pois ela não está definida como
   verdadeira no código!

   Variáveis são definidas com letras maiúsculas. Elas são
   substituídas de acordo com as regras de unificação aprendidas
   em aula. */

ama(joao, maria).
ama(fred, barney).

/* Fazendo a query "?- ama(joao, Quem).", o prolog retornará o
   seguinte output:

   "Quem = maria."

   O output mostra a unificação que pode ser feita para que a
   query seja verdadeira.

   Fazendo a query "?- ama(barney, Quem).", o output será apenas

   "false."

   Pois, não há unificação para Quem nesse caso que torne a
   query verdadeira.

   Também é possível definir regras usando o operador ":-". */

mortal(X) :- humano(X).
humano(socrates).

/* Essa regra define que, quem é humano é mortal. E logo abaixo,
   há uma relação definindo que socrates é mortal. Logo, uma query
   "?- mortal(socrates)." retornará "true.".

   Uma query "?- mortal(fred)." obviamente retornaria "false.", pois
   a relação de mortal com o argumento fred não foi definida. 

   Por fim, daremos uma olhada em listas, que são a estrutura de
   dados mais importante do Prolog. Uma lista em prolog é uma
   sequência de argumentos entre colchetes "[" e "]". */

lista([a, b, c]).

/* Na relação acima, a lista [a, b, c] é um argumento da relação
   lista. A unificação de listas funciona de modo um pouco diferente,
   pois ela só pode sempre ser dividida em head e tail, na seguinte
   forma: [Head|Tail].

   O Head sempre vai conter o primeiro elemento da lista, e Tail
   conterá o resto da lista. Se fizessemos uma query:

   "?- lista([Head|Tail])"

   O output seria:

   "Head = a,"
   "Tail = [b, c]." */