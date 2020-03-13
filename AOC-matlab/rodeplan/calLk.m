function lk = calLk(npath, rn, cn)
% ����·������
% npath         input  ·��
% rn            input  ��ͼ����
% cn            input  ��ͼ����
% lk            output ·������ rnx1
[nr, ~] = size(npath);
lk = zeros(nr, 1);
for i = 1:nr
    path = npath(i, 2:1+npath(1,1));
    for j = 2:length(path)
        [x1, y1] = ind2sub([rn, cn], path(j-1));
        [x2, y2] = ind2sub([rn, cn], path(j));
        lk(i) = lk(i) + ((x2-x1)^2+(y2-y1)^2)^0.5;
    end
end
end