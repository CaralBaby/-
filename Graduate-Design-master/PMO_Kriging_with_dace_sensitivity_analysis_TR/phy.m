function [ output_args ] = phy( x1,x2,c )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
output_args = ((x1 - x2)'*(x1 - x2)+c^2)^(-0.5);

end

