function wgtsum = weightsum(pop, weights)
% ������Ⱥ������
% pop           input  ��Ⱥ
% weights       input  ��������
% wgtsum        output ��Ⱥ����
popsize = size(pop, 1);
wgtsum = zeros(popsize, 1);
for i = 1:popsize
    wgtsum(i, 1) = weightsumv(pop(i, :), weights);
end
end