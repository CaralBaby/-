function [ output_args ] = vectorization(x,func)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[m n] = size(x);
for i = 1:m
    for j = 1:n
        output_args(i,j) = func(x(i,j));
    end
end
output_args = output_args.^2;
end
for i = 1:100
    y(i) = f{1,1}(i*0.01);
end
plot(y)
hold 
for i = 1:100
    y(i) = f{1,2}(i*0.01);
end
plot(y)
hold 
for i = 1:100
    y(i) = f{1,3}(i*0.01);
end
plot(y)


