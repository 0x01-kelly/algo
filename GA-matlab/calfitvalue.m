function fitvalue = calfitvalue(objvalue, opt)
% ����Ŀ�꺯��ֵ������Ӧ��ֵ�������ʵ�������д
% objvalue      input  Ŀ�꺯��ֵ
% opt           input  ����ģʽ��ָ��Ϊ'min'��'max'
% fitvalue      output ��Ӧ��ֵ
fitvalue = zeros(size(objvalue,1), 1);
for i = 1 : size(objvalue, 1)
    if strcmp(opt, 'min')
        if objvalue(i) < 0
            temp = -objvalue(i);
        else
            temp = 0;
        end
    else
        if objvalue(i) > 0
            temp = objvalue(i);
        else
            temp = 0;
        end
    end
    fitvalue(i) = temp;
end
fitvalue = fitvalue'; %����ת��
end