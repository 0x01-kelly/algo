function G = makeG(rn, cn)
% �������ξ���
% rn        input  ���ξ�����
% cn        input  ���ξ�����
% G         output ���ξ���
G = zeros(rn, cn);
G(1:3, 2) = 1;
G(7:10, 1:5) = 1;
G(5, 3) = 1;
G(1, 4) = 1;
G(1:5, 5) = 1;
G(5:7, 7:9) = 1;