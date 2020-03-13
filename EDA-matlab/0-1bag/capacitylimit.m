function npop = capacitylimit(pop, capacity, weights, p)
% ��������
% pop           input  ��Ⱥ
% capacity      input  ��������
% weights       input  ����
% p             input  ��������
% npop          output ����Ⱥ
npop = pop;
[popsize, stuffsize] = size(pop);
for i = 1:popsize
    wgtsum = weightsumv(npop(i, :), weights);
    while wgtsum > capacity
        npop(i, :) = makepopv(stuffsize, p);
        wgtsum = weightsumv(npop(i, :), weights);
    end
end
end