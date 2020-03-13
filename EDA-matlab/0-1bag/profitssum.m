function pftsum = profitssum(pop, profits)
% ������Ⱥ����
% pop       input  ��Ⱥ
% profits   input  ��������
% pftsum    output ��Ⱥ����
popsize = size(pop, 1);
pftsum = zeros(popsize, 1);
for i = 1:popsize
    pftsum(i, 1) = sum(profits(pop(i, :) ~= 0));
end
end