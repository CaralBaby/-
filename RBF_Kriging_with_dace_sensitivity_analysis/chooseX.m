function [ S ] = chooseX( LB,UB,N,D )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

S = lhsdesign(N,D,'criterion','maximin');
S = S.*repmat(UB - LB,N,1) + repmat(LB,N,1);

end

