function objval = calObjFun(X)
% ����Ŀ�꺯��ֵ
% X         input  ������ [x, y] nx2
% objvalue  output ��� nx1
objval = -(X(:,1) .^ 4 + 3 .* X(:,2) .^ 4 - 0.2 .* cos(3*pi .* X(:,1)) ...
    - 0.4 .* cos(4*pi .* X(:,2)) + 0.6);
