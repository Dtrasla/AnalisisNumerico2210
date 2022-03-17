%MEtodo secante
clear all();
syms x;
format long;
f(x) = input("Ingrese la función: ");
p0 = input("Ingrese la aproximación inicial: ");
p1 = input("Ingrese la segunda aproximación: ");
tol = input("Ingrese la tolerancia: ");
n = input("Ingrese el numero de iteraciones: ");
q0=f(p0);
q1=f(p1);
if q0 == q1
    disp("Invalido");
else
    i=2;
    while i <= n
        p=p1-(q1*(p1-p0)/(q1-q0));
        if abs(p-p1) < tol
            double(p)
        end
        i=i+1;
        p0=p1;
        q0=q1;
        p1=p;
        q1=f(p);
    end
end