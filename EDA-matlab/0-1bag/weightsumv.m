function wgtsum = weightsumv(stuffs, weights)
% ����һ�����������
% stuffs        input  ��Ʒ����
% weights       input  ��������
% wgtsum        output ��������
wgtsum = sum(weights(stuffs ~= 0));
end