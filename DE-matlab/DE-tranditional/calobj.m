function z = calobj (pop)
% ����Ŀ�꺯��ֵ
% pop       input  ��Ⱥ
% z         output Ŀ�꺯��ֵ
z = 3 * cos(pop(:,1) .* pop(:,2)) + pop(:,1) + pop(:,2);
end