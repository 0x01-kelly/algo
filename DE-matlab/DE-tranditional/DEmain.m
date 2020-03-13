clc;
clear;

NP  = 20;       % ��Ⱥ��ģ
D   = 2;        % ��������
G   = 30;       % ����������
F   = 0.5;      % ��������
Cr  = 0.8;      % ��������

xl  = -4;       % x���ޣ�Ҳ��y���ޣ�
xu  = 4;        % x���ޣ�Ҳ��y���ޣ�

bestvalue = zeros(3, G);

% �Ż�
gen = 0;
pop = initpop(NP, D, xl, xu);
objvalue = calobj(pop);
while gen < G
    mpop = mutation(pop, F);                    % ����
    cpop = crossover(pop, mpop, Cr);            % ����
    cpop = constrictboundary(cpop, xl, xu);     % Լ���߽�
    pop = selection(pop, cpop);                 % ѡ��
    objvalue = calobj(pop);
    gen = gen + 1;

    % ��¼����
    [~, index] = min(objvalue);
    bestvalue(1:2, gen) = pop(index,:)';
    bestvalue(3,gen) = objvalue(index);
end

fprintf('bestX = %f, bestY = %f, bestZ = %f\n', ...
    bestvalue(1,end), bestvalue(2,end), bestvalue(3,end));

% ��ͼ
figure(1);
x = [-4:0.1:4]; y = [-4:0.1:4];
[X, Y] = meshgrid(x, y);
Z = 3 * cos(X .* Y) + X + Y;
surf(X, Y, Z);
hold on;
scatter3(bestvalue(1,:), bestvalue(2,:), bestvalue(3,:), ...
    'MarkerEdgeColor','k', 'MarkerFaceColor',[0 .75 .75]);
xlabel('x'); ylabel('y'); zlabel('z'); title('����ͼ');
hold off;

figure(2);
plot(bestvalue(3,:));
xlabel('��������'); ylabel('����Ŀ�꺯��ֵ'); title('Ŀ�꺯��ֵ�仯ͼ');
