%��Ⱥ�㷨��⺯�����ֵf = -(x.^4 + 3*y.^4 - 0.2*cos(3*pi*x) - 0.4*cos(4*pi*y) + 0.6);

clear;
clc;

Ant     =   300;    % ��������
Times   =   80;     % �����ƶ�����
Rho     =   0.9;    % ��Ϣ�ػӷ�ϵ��
P0      =   0.2;    % ת�Ƹ��ʳ���
xl = -1; xu = 1;    % ����������Χ
yl = -1; yu = 1;
step = 0.05;

ants = initant(Ant, xl, xu, yl, yu);    % ��ʼ����Ⱥ
tau = calObjFun(ants);                  % ���������Ϣ��
firstants = ants;

for t = 1:Times
    ants = edgeselection(ants, tau, P0, 1/t, xl, xu, yl, yu);    % ת��+Լ��
    tau = (1 - Rho) .* tau + calObjFun(ants);               % ������Ϣ��
end

figure(1);
plotobjfun(xl, xu, yl, yu, step);
hold on;
plot3(firstants(:,1), firstants(:,2), calObjFun(firstants), 'b*');
hold on;
plot3(ants(:,1), ants(:,2), calObjFun(ants), 'r*');
hold off;