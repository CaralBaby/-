function [ output_args ] = UpdateDelta(r,X_star_k,X_star_k_1,c1,c2,r1,r2,Delta)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if r < r1
    output_args = c1*abs(X_star_k - X_star_k_1);
elseif r > r2
        output_args = min(c2*abs(X_star_k - X_star_k_1),Delta);
else
    output_args = abs(X_star_k - X_star_k_1);
end
end

