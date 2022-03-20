%Metodo de Newton
clear all();
syms x;
format long;
f(x) = input("Ingrese la función: ");
p0 = input("Ingrese la aproximación inicial: ");
tol = input("Ingrese la tolerancia: ");
n = input("Ingrese el numero de iteraciones: ");
fp(x) = diff(f(x),x);
i = 1;
while i <= n
    p = p0-(f(p0)/fp(p0));
    if abs(p-p0) < tol
        disp(['iteracion ', num2str(i), ': ', num2str(double(p))])
        break;
    end
    i = i+1;
    p0=p;
end