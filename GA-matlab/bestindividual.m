function bestindex = bestindividual(pop, fitvalue, opt)
% �õ���Ⱥ�����ŵĸ��������
% pop               input  ��Ⱥ
% fitvalue          input  ��Ӧ��ֵ
% opt               input  ����ģʽ:'min'����Сֵ,'max'�����ֵ
% bestindex         output ���Ÿ�������
if strcmp(opt, 'min')
    [~, bestindex] = min(fitvalue);
else
    [~, bestindex] = max(fitvalue);
end
end