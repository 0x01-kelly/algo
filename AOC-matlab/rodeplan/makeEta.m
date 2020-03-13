function eta = makeEta(G)
% ��������ʽ���Ӿ��󣨵��յ���뵹�����ϰ���Ϊ0��
% G         input  ���ξ���
% eta       output ����ʽ���Ӿ���
eta = G;
[rn, cn] = size(G);
for i = 1:rn
    for j = 1:cn
        if G(i, j) == 1
            eta(i, j) = 0;
        elseif (i == rn && j == cn)
            eta(i, j) = 1;
        else
            eta(i, j) = 1 / ( (rn-i)^2+(cn-j)^2 )^0.5;
        end
    end
end