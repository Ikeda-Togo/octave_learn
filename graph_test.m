clear()
pkg load control
A = [0 1;-5 -6];
B = [0 ; 1];
C = [1 0];
Q=[1 0;0 1]
R=1
Q2=[100 0;0 1]
R2=1
x0 = [1; 0];
t = 0: 0.1: 4;
i = 0;

[G, X, L] = lqr (A, B, Q, R)
[G2, X2, L2] = lqr (A, B, Q2, R2)

for n = t
  i =i + 1;
  x = expm((A-B*G) * n) * x0;
  x1(i) = x(1);
  x2(i) = x(2);
  x = expm((A-B*G2) * n) * x0;
  x3(i) = x(1);
  x4(i) = x(2);
  
  endfor
 subplot(1,2,1);
 plot(t,x1,'linewidth',2,t,x2 ,'linewidth', 2)
 legend('x1','x2')
 title('Q=[1 0; 0 1] R=1')
 
 subplot(1,2,2);
 plot(t,x3,'linewidth',2,t,x4 ,'linewidth', 2)
 legend('x3','x4')
 title('Q=[100 0; 0 1] R=1')