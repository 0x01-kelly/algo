function spop = selection(pop, sn, profits)
% ѡ��
% pop           input  ��Ⱥ
% sn            input  ѡ������
% profits       input  ��������
% spop          output ѡ�����Ⱥ
pftsum = profitssum(pop, profits);
pftsum = pftsum';
[~, index] = sort(pftsum, 'descend');
index = index(1: sn);
spop = pop(index, :);
end