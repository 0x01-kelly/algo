function [newpop] = selection(pop, fitvalue)
% ѡ�����̶ķ������������
% pop       input  ��Ⱥ
% fitvalue  input  ��Ӧ��ֵ
% newpop    output ѡ������Ⱥ
totalfit = sum(fitvalue);
fitvalue = fitvalue / totalfit;
fitvalue = cumsum(fitvalue); %����ÿһ��Ԫ��ǰ��sum
[n, l] = size(pop);
newpop = zeros(n, l);
rnumber = sort(rand(n,1));
fitindex = 1;
newindex = 1;
while newindex <= n
    if rnumber(newindex) < fitvalue(fitindex)
        newpop(newindex,:) = pop(fitindex,:);
        newindex = newindex + 1;
    else
        fitindex = fitindex + 1;
    end
end
end