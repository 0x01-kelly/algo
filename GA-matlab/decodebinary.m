function rpop = decodebinary(pop)
% �������ƾ����е�ÿһ��ת��Ϊʮ������
% pop   input  �����ƾ���
% rpop  output ʮ����������
[n, l] = size(pop);
temp = zeros(l, 1);
for i = 1:l
    temp(i,1) = 2^(l-i);
end
rpop = pop * temp;
end