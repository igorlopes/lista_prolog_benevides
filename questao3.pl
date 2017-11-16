% 3. Duplicar(Xs, Zs) - a lista Zs é composta de todos os elementos de Xs
%duplicados na mesma ordem.
% Exemplo: Duplicar([1,2],[1,1,2,2]).

duplicar([],Zs).
duplicar([X|Xs],Zs) :- duplicar(Xs,[X,X,Zs]), write(Zs).
