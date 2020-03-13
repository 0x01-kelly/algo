function [newpop] = crossover(pop, pc)
% ����
% pop       input  ��Ⱥ
% pc        input  �������
% newpop    output ����Ⱥ
[n, l] = size(pop);
newpop = zeros(n, l);
for i = 1:2:n-1   % ������ʣ��һ��
    if rand < pc
        cpoint = round(rand * l);
        newpop(i, :) = [pop(i, 1:cpoint), pop(i+1, cpoint+1:l)];
        newpop(i+1, :) = [pop(i+1, 1:cpoint), pop(i, cpoint+1:l)];
    else
        newpop(i, :) = pop(i,:);
        newpop(i+1, :) = pop(i+1,:);
    end
end
end