function pop = makepop(popsize, stuffsize, p)
% ��ʼ����Ⱥ����û����������
% popsize       input  ��Ⱥ��ģ
% stuffsize     input  ��Ʒ��Ŀ
% p             input  ��������
% pop           output �������Ⱥ
pop = zeros(popsize, stuffsize);
for i =1:popsize
    pop(i, :) = makepopv(stuffsize, p);
end
end