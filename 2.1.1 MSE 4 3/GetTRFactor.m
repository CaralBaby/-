function [ output_args ] = GetTRFactor( Y_star_k_1,Y_star_k,Y_star_predict_k )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
output_args = (Y_star_k_1 - Y_star_k)/(Y_star_k_1 - Y_star_predict_k);

end

