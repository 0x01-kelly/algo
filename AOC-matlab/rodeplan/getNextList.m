function nextlist = getNextList(point, rn, cn, D)
% ������ѡ���б�
% point         input  ��ǰ��
% rn            input  ��ͼ����
% cn            input  ��ͼ����
% D             input  ���ɵ�ͼ
% nextlist      output ��ѡ���б�
list = find(D);
nextlist = zeros(1, length(list)+1);
[pointx, pointy] = ind2sub([rn, cn], point);
for i = 1:length(list)
    [indexx, indexy] = ind2sub([rn, cn], list(i));
    if (indexx >= pointx-1 && indexx <= pointx+1 ...
            && indexy >= pointy-1 && indexy <= pointy+1)
        nextlist(1, 1) = nextlist(1, 1) + 1;
        nextlist(1, nextlist(1,1)+1) = list(i);
    end
end
a  = nextlist(1,1);
nextlist = nextlist(1, 2:1+a);