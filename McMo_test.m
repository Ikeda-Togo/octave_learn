A = [-5 -2; 4 1]
B = [1; -1]
C = [0 1]

Mc = [B A*B]
result_Mc = det(Mc)

Mo = [C ; C*A]
result_Mo = det(Mo)

