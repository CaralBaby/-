function [ output_args ] = phy2( x,X,c)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[m n] = size(X);%�ж�������
[p q] = size(x);
for j = 1:p
    for i = 1:m
        output_args(j,i) = phy(x(j,:)',X(i,:)',c); 
    end
end
output_args = output_args';
end

