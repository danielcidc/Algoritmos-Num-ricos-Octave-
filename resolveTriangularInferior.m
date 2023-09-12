%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resolve um sistema linear triangular inferior
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function[x] = resolveTriangularInferior(A, b);

[n,n]=size(A);
clear x
printf('\nResolvendo sistema linear triangular inferior de dimensão %d\n', n);
disp('Exibindo os dados de entrada:');
A
b
x(1) = b(1)/A(1,1);
for i = 2:1:n
  s = 0
  for j = 1:(i-1)
    s = s + A(i,j)*x(j);
  endfor
  x(i) = (b(i) - s)/A(i,i);
  endfor
endfunction;

