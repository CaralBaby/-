function [ output_args ] = detect2( new_point, old_point, obj_val )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if abs((new_point - old_point)/(obj_val + eps)) <= 0.01
    output_args = 1;
else
    output_args = 0;
end
end

