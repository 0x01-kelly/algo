function mutationpop = mutation (pop, F)
% �������
% pop           input  ��Ⱥ
% F             input  ��������
% mutationpop   output �������Ⱥ
[popsize, chromlength] = size(pop);
mutationpop = zeros(popsize, chromlength);
for i = 1:popsize
    % ȡ3����������� r0 r1 r2
    r = randperm(popsize);
    index = find (r ~= i);
    rn = r(index(1:3));
    r0 = rn(1); r1 = rn(2); r2 = rn(3);
%     fprintf('i = %d, r0 = %d, r1 = %d, r2 = %d\n', i, r0, r1, r2);

    mutationpop(i,:) = pop(r0,:) + F .* (pop(r1,:) - pop(r2,:));
end
end