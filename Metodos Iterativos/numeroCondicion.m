% Numero de condicion
% Segun la pg 478 del libro se calcula K(A) = || A || * || A^-1 ||
% Segun el libro, para la matriz [1, 2 ; 1.0001, 2]  
% el numero de condicion de la matriz seria 60002

clear all();
A = input('Matriz para hallar numero de condicion: ');
[f,c]=size(A);

if(f == c)
    P = cond(A,inf);
    K = norm(A, "inf") * norm(inv(A), inf);

    disp('Calculo a Mano norm(A) * norm(inv(A))')
    vpa(K)
    disp('Funcion de Matlab')
    vpa(P)
end