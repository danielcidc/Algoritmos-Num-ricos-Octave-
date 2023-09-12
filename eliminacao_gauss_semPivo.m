%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Triangularização via Método de Gauss (sem pivô)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function[x] = eliminacao_gauss_semPivo(A,b)

%Verifique se a matriz A é quadrada
[m,n] = size(A);

if m ~= n
  error('A matriz A deve ser quadrada.')
endif

%Construa uma matriz aumentada [A | b]
Ab = [A, b];

%Fase de eliminação
for k = 1:n-1
  for i = k+1:n
    factor = Ab(i, k)/Ab(k,k);
    Ab(i, k:end) = Ab(i, k:end) - factor*Ab(k, k:end);
    endfor
  endfor

  %Fase de retrosubstituição
  x = zeros(n, 1);
  for i = n:-1:1
    x(i) = (Ab(i,end) - Ab(i,i+1:n) * x(i+1:n))/Ab(i,i);
  endfor

 endfunction

