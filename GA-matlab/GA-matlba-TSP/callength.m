function len = callength(D, pop)
% ������Ⱥ��ÿ����������Ӧ��·�߾���
% D             input  �������
% pop           input  ��Ⱥ
% len           output ����
n = size(pop,1);
len = zeros(n, 1);
for i = 1:n
    for j = 1:(size(pop,2)-1)
        len(i,1) = len(i,1) + D(pop(i, j), pop(i, j+1));
    end
    len(i,1) = len(i,1) + D(pop(i,1), pop(i,end));
end
end