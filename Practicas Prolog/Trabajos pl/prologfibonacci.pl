fibonacci(0,0). #Caso base
fiboancci(1,1). #Caso base
fibonacci(N,Y): N>1,
                 N1 IS N -1,
                 fibonacci(N1,Y1),
                 N2 IS N -2,
                 fibonacci(N2,Y2),
                 Y IS Y1+Y2.