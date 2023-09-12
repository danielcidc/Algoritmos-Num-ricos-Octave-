%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resolve um Sistema Linear Triangular Superior
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
[n,n] = size(A); %Resgata a dimensão da matriz que já deve estar na memória
clear x
printf('\nResolvendo o Sitema Linear Triangular Superior de dimensão %d \n', n);

%Resolvendo via substituições regressivas
x(n) = b(n)/A(n,n);
for i = (n-1):(-1):1
  s = 0;
  for j = (i+1):n
    s = s + A(i,j)*x(j);
  endfor;
  x(i) = (b(i) - s)/A(i,i);
endfor
disp('Solução do sistema linear triangular superior abaixo:');
x

