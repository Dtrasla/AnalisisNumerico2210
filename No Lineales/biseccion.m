%Metodo Biseccion segun el libro pg 49
clear all();
syms x;
format long;
f(x) = input("Ingrese la funcion ");
a = input("Ingrese el punto a ");
b = input("Ingrese el punto b ");

tol = input("ingrese la tolerancia ");
n = input("ingrese la cantidad de iteraciones ");

FA = f(a);

for i = 1:n
    p = a + (b-a)/2;
    FP = f(p);

    if(FP == 0 || ((b-a)/2 < tol ))
        disp(['iteracion final ', num2str(i), ': ', num2str(p)])
        break       
    end
    
    if(FA*FP>0)
        a = p;
        FA = FP;
    else
        b = p;
    end

    disp(['iteracion ', num2str(i), ' :', num2str(p)])

    
end