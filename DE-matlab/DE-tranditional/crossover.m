function crossoverpop = crossover(pop, mpop, cr)
% ����
% pop           input  ��Ⱥ
% mpop          input  ��������Ⱥ
% cr            input  �������
% crossoverpop  output ��������Ⱥ
[popsize, chromlength] = size(pop);
crossoverpop = mpop;
r = rand(popsize, chromlength);
index = find (r > cr);
crossoverpop(index) = pop(index);
jrand = randi(chromlength, 1, popsize);
crossoverpop(sub2ind(size(crossoverpop), [1:popsize], jrand)) ...
    = mpop(sub2ind(size(mpop), [1:popsize], jrand));
end