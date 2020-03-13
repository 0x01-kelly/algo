function main()
capacity = load("p08_c.txt");       % ��������
bks = load("p08_s.txt");            % ���Ž�
bks = bks';
weights = load("p08_w.txt");        % ����
weights = weights';
profits = load("p08_p.txt");        % ����
profits = profits';

popsize = 100;                  % Ⱥ���ģ
maxgen = 50;                    % ��������
stuffsize = length(weights);    % ��Ʒ����
p = ones(1, stuffsize) .* 0.5;  % ��������
alpha = 1;                      % ѧϰ����
sn = 0.7;                       % ���Ƹ�������
sn = ceil(popsize * sn);

bestselection = zeros(maxgen, stuffsize);   % ��¼ÿ������ѡ��
avgweights = zeros(1, maxgen);              % ��¼ÿ��ƽ������

for gen = 1:maxgen
    pop = makepop(popsize, stuffsize, p);               % ������Ⱥ
    pop = capacitylimit(pop, capacity, weights, p);     % ��������

    wgtsum = weightsum(pop, weights);
    [~, index] = max(wgtsum);
    bestselection(gen, :) = pop(index, :);
    avgweights(1, gen) = sum(wgtsum) / popsize;

    spop = selection(pop, sn, profits);     % ѡ�����Ƹ���
    p = makep(spop, p, alpha);              % ���¸�������
end
wgtsum = weightsum(bestselection, weights);
[~, index] = max(wgtsum);
figure(1);
plot(1:1:maxgen, wgtsum');
title("ÿ������ѡ������ͼ");
figure(2);
plot(1:1:maxgen, avgweights);
title("ÿ��ƽ������ͼ");
end