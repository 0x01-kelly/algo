function plotobjfun(xl, xu, yl, yu, step)
% ���ƺ���ͼ��
% xl        input  x��Сֵ
% xu        input  x���ֵ
% yl        input  y��Сֵ
% yu        input  y���ֵ
% step      input  ��������
[x, y] = meshgrid(xl:step:xu, yl:step:yu);
f = '-(x.^4 + 3*y.^4 - 0.2*cos(3*pi*x) - 0.4*cos(4*pi*y) + 0.6)';
z = eval(f);
mesh(x, y, z);
