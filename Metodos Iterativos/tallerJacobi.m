%Metodo de Jacobi con relajacion
clear all();
A=input('Ingrese la matriz: ');
[f,c]=size(A);

if f==c && det(A) ~= 0
    D = diag(diag(A))
    L =-tril(A,-1);
    U =triu(A,1);

    b = input('Ingrese el vector b: ');
    w = input('Ingrese el factor de relajacion: ');
    x = zeros(f,1);
    


    k = 0;
    n = input('cantidad de iteraciones: ');
    difNorma = 100;

    while ( (k<n) )
        disp(['iteracion: ',num2str(k)])
        y = x;
        x=((1-w)*y)+(w*inv(D)*(L+U)*y)+(inv(D)*b)

        
        normx = norm(x-y, inf);
        %normy = norm(y);
        
        
        
        difNorma = norm(x-y, "inf");


        disp(  ['Diferencia de norma; ' , num2str(difNorma)])
        if ((difNorma) < 10^-3)
            return;
        end

        %y = diag(y);
        
        
        k = k + 1;
    end


else
    disp('A no es cuadrada')
end

