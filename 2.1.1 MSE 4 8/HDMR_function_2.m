function [ output_args] = HDMR_function_2(f,f_0,x,dimension_number,second_order_count, K)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
sum = f_0;
for i = 1:dimension_number
    sum = sum + f{1,i}.func(x(i));
end
for i = 1:second_order_count
    sum = sum + f{2,i}.func(x(1:i+1));
end
output_args = sum;

end

