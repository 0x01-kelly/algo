function [objvalue] = calobjvalue(pop, lx, ux)
% ����Ŀ�꺯��ֵ�������ʵ�������д
% pop       input  ��Ⱥ
% lx        input  �Ա�����Сֵ
% ux        input  �Ա������ֵ
% objvalue  output Ŀ�꺯��ֵ
decchrom = decodechrom(pop, 1, size(pop, 2));  % ��������ת��Ϊʮ����
x = decchrom / (2^size(pop ,2)-1) * (ux - lx) + lx;
objvalue = 9 * sin(5 * x) + 8 * cos(4 * x);
end