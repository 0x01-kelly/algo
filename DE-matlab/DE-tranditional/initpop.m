function pop = initpop(popsize, chromlength, xl, xu)
% ���ɳ�ʼ��Ⱥ
% popsize           input  ��Ⱥ��ģ
% chromlengt        input  Ⱦɫ�峤��
% xl                input  x����
% xu                input  x����
% pop               output ��Ⱥ
pop = rand(popsize, chromlength) * (xu - xl) + xl;
end