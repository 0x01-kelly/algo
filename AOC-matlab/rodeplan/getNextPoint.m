function nextpointindex = getNextPoint(p)
% ʹ�����̶ķ�������һ����
% p                 input  �����б�
% nextpointindex    output ��һ����
sump = sum(p);
p = p / sump;
cumsump = cumsum(p);
list = find(cumsump >= rand);
nextpointindex = list(1);