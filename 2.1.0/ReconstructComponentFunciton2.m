function [ output_args, sample_point, sample_value] = ReconstructComponentFunciton2( f, sample_point, sample_value, new_sample, new_value, f_0_old, f_0_new)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
new_value = new_value - f{1,1}.func(new_sample(1)) - f{1,2}.func(new_sample(2)) - f_0_old;
sample_point{2,1} = [sample_point{2,1}; new_sample];
sample_value{2,1} = [sample_value{2,1}; new_value];
sample_value{2,1} = sample_value{2,1} - repmat(f_0_new - f_0_old,length(sample_value{2,1}),1);
[sample_point{2,1},ia,ic] = unique(sample_point{2,1},'rows');
sample_value{2,1} = sample_value{2,1}(ia);
theta = [10 10]; lob = [1e-1 1e-1]; upb = [20 20];
[dmodel, perf] = dacefit(sample_point{2,1}, sample_value{2,1}, @regpoly0, @corrgauss, theta, lob, upb);
pre.dmodel = dmodel;
pre.perf = perf;
pre.mse = @(x)-Get_MSE(@predictor, pre.dmodel, x);
pre.func = @(x)predictor(x,pre.dmodel);
output_args = pre;


end



