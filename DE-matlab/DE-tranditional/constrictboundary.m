function newpop = constrictboundary(pop, xl, xu)
% Լ���߽磨�߽����գ�
% pop       input  ��Ⱥ
% xl        input  �Ա�����Сֵ��������
% xu        input  �Ա������ֵ��������
% newpop    output Լ���߽�����Ⱥ
newpop = pop;
newpop(newpop < xl) = xl;
newpop(newpop > xu) = xu;
end