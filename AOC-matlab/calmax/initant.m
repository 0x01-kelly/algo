function ants = initant(num, xl, xu, yl, yu)
% ��ʼ����Ⱥ
% num       input  ��������
% xl        input  x��С
% xu        input  x���
% yl        input  y��С
% yu        input  y���
% ants      output ��Ⱥ
ants = rand(num, 2);
ants(:,1) = xl + (xu - xl) .* ants(:,1);
ants(:,2) = yl + (yu - yl) .* ants(:,2);