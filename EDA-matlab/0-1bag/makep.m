function np = makep(pop, p, alpha)
% ���¸�������
% pop           input  ��Ⱥ
% p             input  ��������
% alpha         input  ѧϰ����
% np            output ���º�ĸ�������
popsize = size(pop, 1);
np = (1 - alpha) .* p + alpha .* sum(pop) ./ popsize;
end