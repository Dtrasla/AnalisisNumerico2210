%Metodo Punto fijo segun libro, pg 59-60

clear all();
syms x;
format long;
f(x) = input("Ingrese la funcion: ");
g(x) = x - f(x);

p0 = input("Ingrese la aproximacion inicial: ");
tol = input("ingrese la tolerancia ");
n = input("ingrese la cantidad de iteraciones ");


i = 1;
while(i <= n)
    p = g(p0);
    if( abs(p-p0) < tol)
        disp(  ['iteracion final ', num2str(i), ': ', num2str(double( (p) ) )  ]  ) 
        break;    
    end
    disp(['iteracion ', num2str(i), ' :', num2str(double(p))])


    i = i+1;
    p0 = p;

end
