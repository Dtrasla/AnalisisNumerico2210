#Daniel Traslavina, Andres Torres
#El codigo pregunta por los 4 parametros, b, t, u,l
#A partir de ello genera el maximo y el minimo,
#Despues genera los numeros que se pueden crear sin un exponente
#Con estos numeros generados ya recorre por todas las iteraciones posibles de los exponentes
#Y muestra la lista al final


todosLosNumeros = []

def generarSuma(arreglo, b, t):
    x = 0
    bas = 1
    for i in range (0, t, 1):
        x = x + (arreglo[i]/pow(b,bas))
        bas += 1
    todosLosNumeros.append(x)


def unica(lista):
    unica = []
    for x in lista:
        if x not in unica:
            unica.append(x)

    print()
    print()
    return unica


def ArregloADecimal(numero):
    strings = [str(integer) for integer in numero]
    cadena = "0.".join(strings)
    entero = bin(cadena)
    return entero


#Esta funcion itera por todos los posibles valores que se pueden tomar despues del punto decimal
# ej: 0.100, 0.101, 0.110, 0.111
#Despues de esto se llama a la funcion unica para solo conservar los valores unicos y borrar los repetidos
def iterarArreglo(arreglo, limite, t,b):
    for i in range(t-1,limite,-1):
        iterarArreglo(arreglo, i, t, b)
        for j in range(0,b):
            arreglo[i] = j
            if arreglo[0] != 0:
                generarSuma(arreglo, b, t)
        arreglo[i-1] +=1
        if arreglo[i-1] == b:
            arreglo[i-1] = 0
            return

        reiniciarArreglo(arreglo, t, i)



def reiniciarArreglo(arreglo, t, actual):
    for i in range(actual, t):
        decimales[i] = 0



if __name__ == '__main__':
    b = int(input('digite la Base: '))
    t = int(input('la cantidad de cifras significativas: '))
    l = int(input('ingrese exponente minimo: '))
    u = int(input('Ingrese exponente maximo: '))

    if l > 0:
        l = l*-1

    xmin = (1 / (pow(b,(1-l))))
    print("Valor Minimo ",xmin)

    xmax = 0

    for i in range(1, t+1):
        xmax = xmax + ((b-1)/ pow(b,i))
    xmax = xmax*(pow(b,u))
    print("Valor Maximo ", xmax)

    decimales = [1]*t


    for i in range(1,t):
        decimales[i] = 0




    limite = t-2
    while(limite >= -1):
        iterarArreglo(decimales,limite,t,b)
        limite = limite-1



    uni = unica(todosLosNumeros)

    contador = 1
    for i in range(l,u+1):
        for x in uni:
            valorActual = x*(pow(b,i))
            print("Numero ",contador,": ",valorActual)
            contador +=1




