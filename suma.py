X=[16,-25, -32, -10, -300, 14, -1 ,-60 ,120 ,10, -155,2, -7]

Y=[1400,1500,1900,2300,2500,3000,3000,3450,6100,6200,6600,6600,7500]
totalA = 0


for i in range(0,12):
    s =(X[i]-32.923)*(Y[i]-4003.846)
    print(s," + ", end='')
    totalA= totalA +s

A = totalA
print("\n")
totalB = 0
for i in range(0, 12):
    p = (X[i]-32.923)*(X[i]-32.923)
    print(p," + ", end='')
    totalB= totalB +p


import math
B = math.sqrt(totalB)
print("\n")
totalC = 0
for i in range(0, 12):  
    h = (Y[i]-4003.846)*(Y[i]-4003.846)
    totalC = totalC + h
import math
C = math.sqrt(totalC)
print("\n")
print(A, B, C)

print("\n")
print("Resultados")
print(A/(B*C))
