import sympy as sp
from sympy.abc import x
import numpy as np



fx = input("F(x) : ")



a = float(input("Punto a: "))
b = float(input("Punto b: "))

tol = float(input("tolerancia: "))

fx = sp.sympify(fx)
fa = fx.evalf(subs = {x:(a)})

n = int(input("Iteraciones: "))

for i in range(1,n):
    p = a + (b-a)/2
    fp = fx.evalf(subs={x: (p)})

    if fp == 0 or (b-a)/2 < tol:
        print("iteraciones: " + str(i))
        print("Aproximacion Final: " + str(p))
        #print(p)
        break

    if(fa*fp>0):
        a = p
        fa = fp
    else:
        b = p


