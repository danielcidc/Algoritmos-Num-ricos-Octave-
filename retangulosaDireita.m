%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    INTEGRAÇÃO VIA RETÂNGULOS À DIREITA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
clc;
%
disp('Integração via Retângulos à direita para o problema com integração f(x) = x^2')
%Dados iniciais
a = input('Digite o limite de integração inferior: ');
b = input('Digite o limite de integração superior: ');
N = input('Digite a quantidade de subintervalos: ');
%
disp('O espaçamento entre os pontos é')
h = (b - a)/(N)
disp(h);

x = a + h;
s = 0;
%
%   TAREFA 1: implementar a solução
for i = 1:N
  s = s + x^2;
  x = x - h;
endfor

Int_ret_direita = h*s;

%Exibe o resultado
printf('Com N = %d, o valor da integral via retângulos à DIREITA é %.8f.\n', N, Int_ret_direita);
disp('----- Fim! -----')
