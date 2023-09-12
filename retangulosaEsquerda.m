%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   INTEGRACAO via Retangulos aa ESQUERDA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; % limpa as variaveis
clc;       % limpa a tela
%
disp('INTEGRACAO via Retangulos aa ESQUERDA para o problema da integracao  com f(x)=x^2 ')
% Dados iniciais
a=input('Digite o limite inferior (a): ')
b=input('Digite o limite superior (b): ')
N=input('Digite a qte de subintervalos (N): ')

disp('O espacamento entre os pontos é:')
h=(b-a)/(N)
disp(h);

x = a;
s= 0;

%   TAREFA 1: implementar a solucao
for i = 1:N
   s = s + x^2;
   x = x + h; %atualiza o valor de x para o próximo ponto
endfor

Int_ret = h*s;  % Valor obtido da integral usando o método dos retângulos à esquerda
printf('Com  N = %d, a integral via retangulos à ESQUERDA  é: %.8f \n' , N ,Int_ret);

%Para calcular o erro relativo, é preciso saber o erro absoluto e dividí-lo pelo valor aproximado da integral calculada pelo
%método dos retângulos à esquerda.
solucao_exata = 7/3;
erro_absoluto = abs(solucao_exata - Int_ret);
erro_relativo = (erro_absoluto)/(Int_ret);

%Exibe o erro relativo em valor absoluto
printf('Com N = %d, o erro relativo é de %.8f e o absoluto é de %.8f\n\n', N, erro_relativo, erro_absoluto);

disp('----- ERROS EM PORCENTAGEM: -----')
printf('Absoluto: %.8f \nRelativo: %.8f\n', erro_absoluto*100, erro_relativo*100);

disp('----- Fim----  ')







