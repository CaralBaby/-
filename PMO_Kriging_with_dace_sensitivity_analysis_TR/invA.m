function [ output_args ] = invA(x,c)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[m n] = size(x);
A = ones(m,m);
for i = 1:m
    for j = 1:m
        A(i,j) = phy(x(i,:)',x(j,:)',c);
    end
end
output_args = inv(A);
end

