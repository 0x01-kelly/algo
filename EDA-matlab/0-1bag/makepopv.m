function pop = makepopv(stuffsize, p)
% ��ʼ�����壬û����������
% stuffsize     input  ��Ʒ��Ŀ
% p             input  ��������
% pop           output ����ĸ���
tpop = rand(1, stuffsize);
pop = zeros(1, stuffsize);
for j = 1:stuffsize
    if tpop(1, j) <= p(1, j)
        pop(1, j) = 1;
    end
end
end