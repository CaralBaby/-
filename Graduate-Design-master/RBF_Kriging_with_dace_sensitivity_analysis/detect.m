function [ output_args ] = detect( new_point, old_point )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if abs((new_point - old_point)/(old_point+eps)) <= 0.001
    output_args = 1;
else
    output_args = 0;
end
end

