%2. Adjacente(X, Y, Xs) - verifica se X e Y ocorrem um ao lado do outro na lista Xs.
% Exemplo: Adjacente(2,3,[1,2,3,4]).

% Caso de parada -> Os dois primeiros elementos sejam iguais na lista a ser procurada
adjacente(X,Y,[X,Y|Zs]) :- true.
% Caso sejam diferentes, remove o primeiro elemento da lista a ser procurada
adjacente(X,Y,[W,V|Zs]) :- adjacente(X,Y,[V|Zs]).
