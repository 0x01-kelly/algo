rn = 10; cn = 10;
G       = makeG(rn, cn);                % ����ͼ
tau     = 8 .* ones(rn, cn);            % ��ʼ����Ϣ��
MaxGen  = 100;                          % ��������
N       = 50;                           % ���ϸ���
S       = 1;            % ·����ʼ��
E       = rn * cn;      % ·���յ�
Alpha   = 1;            % ��Ϣ����Ҫ�̶�
Beta    = 30;           % ����ʽ������Ҫ�̶�
Rho     = 0.3;          % ��Ϣ�ػӷ�ϵ��
Q       = 5;            % ��Ϣ������ϵ��

Eta     = makeEta(G);   % ���뵹������

gpath = zeros(MaxGen, rn*cn+1);     % ÿ������·�� [�ص���� �ص㡭��]

for g = 1:MaxGen
    npath = zeros(N, rn*cn+1);          % ÿ��·�� [�ص���� �ص㡭��]
    for n = 1:N
        D = Eta;                        % ���ɾ���
        path = zeros(1, rn*cn+1);       % ·��

        % ���µ㡢·���ͽ��ɾ���
        point = S;
        path(1, 1) = path(1, 1) + 1;
        path(1, path(1,1)+1) = point;
        D(point) = 0;

        % ������һ��������귶Χ
        nextlist = getNextList(point, rn, cn, D);
        % һֱǰ����ֱ������ʳ�������������ͬ
        while point ~= E && ~isempty(nextlist)
            % ���̶��㷨ȡ��һ��
            p = zeros(1, length(nextlist));
            for i = 1:length(nextlist)
                p(1, i) = (tau(nextlist(i))^Alpha) * (Eta(nextlist(i))^Beta);
            end
            nextpoint = nextlist(getNextPoint(p));

            % ���µ㡢·���ͽ��ɾ���
            point = nextpoint;
            path(1, 1) = path(1, 1) + 1;
            path(1, path(1,1)+1) = point;
            D(point) = 0;
            nextlist = getNextList(point, rn, cn, D);
        end
        % ��¼�ɹ��ɹ������յ�����ϵ�·��
        if (path(1, 1+path(1,1)) == E)
            npath(n, :) = path;
        end
    end
    npath = npath(find(sum(npath,2)), :);       % ���������յ��·��
    lk = calLk(npath, rn, cn);                  % ����lk����
    % ������Ϣ��
    tau = (1 - Rho) .* tau;
    for i = 1:size(npath, 1)
        for j = 2:npath(i,1)+1
            tau(npath(i,j)) = tau(npath(i,j)) + Q / lk(i);
        end
    end
    [~, minindex] = min(lk);
    if size(npath, 1) > 0
        gpath(g, :) = npath(minindex, :); 
    end
end
lk = calLk(npath, rn, cn);
[minvalue, minindex] = min(lk);
fprintf("min length: %f\n", minvalue);
bestpath = gpath(minindex,:);
bestpath = bestpath(2:1+bestpath(1,1));
figure;
imagesc(G);
hold on;
for i = 2:length(bestpath)
    [x1, y1] = ind2sub([rn, cn], bestpath(i-1));
    [x2, y2] = ind2sub([rn, cn], bestpath(i));
    plot([y1, y2], [x1, x2], 'r');
    hold on;
end