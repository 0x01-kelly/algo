function newpop = selection(pop, npop)
% ѡ��Сֵ�Ż���
% pop           input  ��Ⱥ1��ԭʼ��Ⱥ��
% pop           input  ��Ⱥ2������-������Ⱥ��
% newpop        output ѡ������Ⱥ
newpop = pop;
index = find(calobj(npop) <= calobj(pop));
newpop(index, :) = npop(index, :);
end