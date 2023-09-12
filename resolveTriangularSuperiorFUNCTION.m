%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resolve um sistema linear triangular superior com uma função
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function[x] = resolveTriangularSuperiorFUNCTION(A, b);

[n,n] = size(A);
%Resolvendo via substituições regressivas (retrosubstituições)
printf('\n Resolvendo o sistema linear triangular superior de dimensão %d\n', n);
disp('Exibindo os dados lidos (entrada)');
A
b

x(n) = b(n)/A(n,n);
for i = (n-1):-1:1
  s = 0;
  for j = (i+1):n
    s = s + A(i,j)*x(j);
   endfor
   x(i) = (b(i) - s)/A(i,i);
  endfor

  endfunction

