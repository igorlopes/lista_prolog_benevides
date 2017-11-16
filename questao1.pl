%1. Contem(Xs, Ys) - verifica se todos os elementos de Xs ocorrem em Ys.
% Exemplo: Contem([1,2], [3,1,4,5,2]).

%Caso de parada -> Quando terminar de varrer a lista com números a procurar
contem([],Z) :- true.
%Caso os primeiros elementos das listas sejam iguais, remove os dois valores e
%continua com a recursividade
contem([X|Xs],[X|Ys]) :- contem(Xs,Ys).
%Caso os primeiros elementos da lista sejam diferentes, utiliza uma regra auxiliar,
%onde passa a Head dos elemntos procurados, a Tail da lista a ser procurada e
%as listas inicias como forma de backup
contem([X|Xs],[Y|Ys]) :- contem_aux([X|Xs], [Y|Ys], X, Ys).
%Parada geral, caso não encontre um elemento qualquer na lista
contem_aux(X, Y, Z, []) :- false.
%Caso o elemento procurado seja igual ao próximo elemento da lista a ser procurada,
%retorna para o primeiro contem() com o resto da lista de elementos procurados
%e com a lista de elementos a ser procurada.
contem_aux([Xi|Xis], Yi, X, [X|Ys]) :- contem(Xis, Yi).
%Caso o elemento procurado não seja igual ao próximo elemento da lista a ser
%procurada, retira o elemento+1 da lista a ser procurado e vai para o elemento+2
%e assim sucessivamente.
contem_aux([Xi|Xis], Yi, X, [Y|Ys]) :- contem_aux([Xi|Xis], Yi, X, Ys).
