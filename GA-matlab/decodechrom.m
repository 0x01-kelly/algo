function rpop = decodechrom(pop, spoint, length)
% ��ÿ������Ϊspoint : spoint+length-1�Ķ����ƾ���ת��Ϊʮ������
% pop       input  ��Ⱥ
% spoint    input  ��ʼλ��
% length    input  ����
% rpop      output ʮ����������
tpop = pop(:, spoint: spoint+length-1);
rpop = decodebinary(tpop);
end