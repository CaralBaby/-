function [ output_args ] = Get_MSE( predictor, dmodel, x )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[~,~,c,~] = predictor(x,dmodel);
output_args = c;

end

