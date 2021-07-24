A = [0 1;-5 -6]
B =[0;1]
C=[1 0]
[T V] = eig(A)
Ab = inv(T)*A*T
Bb = inv(T)*B
Cb =C*T