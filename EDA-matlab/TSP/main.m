function main()
pos = [randperm(20); randperm(20)];
% pos = load('berlin52.txt'); % 7542
% pos = pos(:, 2:3);
% pos = pos';

popsize = 300;                  % ��Ⱥ��ģ
maxgen = 100;                   % ����������
citysize = size(pos, 2);        % ��������
p = ones(citysize, citysize);   % ���ʾ���
sn = ceil(popsize * 0.5);       % ����Ⱥ���ģ
dm = makedm(pos);               % �������

bestlists = zeros(maxgen, citysize);    % ��¼ÿ�����Ž�
bestfits = zeros(1, maxgen);            % ��¼ÿ�����Ž���Ӧ��ֵ
avgfits = zeros(1, maxgen);             % ��¼ÿ��ƽ����Ӧ��ֵ

for gen = 1:maxgen
    pop = makepop(popsize, citysize, p);    % ������Ⱥ

    fitness = callength(pop, dm);
    [bfit, bfiti] = min(fitness);
    bestlists(gen, :) = pop(bfiti, :);
    bestfits(1, gen) = bfit;
    avgfits(1, gen) = sum(fitness) / popsize;

    spop = selection(pop, sn, fitness);     % ѡ������Ⱥ��
    p = makep(spop);                        % ���¸��ʾ���
end
fitness = callength(bestlists, dm);
[bfit, bfiti] = min(fitness);
fprintf("��̾���: %f\n", bfit);
end