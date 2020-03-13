function [newpop] = mutation(pop, pm)
% ����
% pop           input  ��Ⱥ
% pm            input  �������
% newpop        output ����֮�������Ⱥ
[n, l] = size(pop);
newpop = zeros(n, l);
for i = 1:n
    newpop(i, :) = pop(i, :);
    if rand < pm
        mpoint = round(rand * l);
        if mpoint <= 0
            mpoint = 1;
        end
        if any(newpop(i, mpoint)) == 0
            newpop(i, mpoint) = 1;
        else
            newpop(i, mpoint) = 0;
        end
    end
end
end