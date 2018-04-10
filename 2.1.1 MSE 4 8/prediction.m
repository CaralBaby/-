function [ output_args ] = prediction( x,S,Y,theta,U,mS,sS,mY,sY)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% S = pre.S;
% Y = pre.Y;
% theta = pre.theta;
% U = pre.U;
% mS = pre.mS ;
% sS = pre.sS;
% mY = pre.mY;
% sY = pre.sY;

x = (x - mS)./sS;
[m,n] = size(S);
one = ones(m, 1);
mu = (one' * (U\(U'\Y)))/(one'*(U\(U'\one)));
psi = ones(m,1);
for i = 1:m
    psi(i) = exp(-sum(theta.*abs(S(i,:) - x).^2));
end
output_args = mu + psi'*(U\(U'\(Y - one * mu)));
output_args = output_args .* sY + mY;
end

