function len = callength(pop, dm)
% ��·������
% pop           input  ��Ⱥ
% dm            input  �������
% len           output ����
[NP, D] = size(pop);
pop = [pop pop(:,1)];
sum = zeros(NP, 1);
for i = 1:NP
    for j = 1:D
        sum(i,1) = sum(i,1) + dm(pop(i, j), pop(i, j+1));
    end
end
len = sum;
end