function childpop = crossover(pop,pc)
n = size(pop,1);
for i = 1:n
    if rand < pc
        r1 = unidrnd(n);
        r2 = unidrnd(n);
        if r1 == r2
            continue
        end
        [pop(r2,:),pop(r1,:)] = crossvector(pop(r1,:),pop(r2,:));
    end
end

childpop = pop; 
end

function [rv1, rv2] = crossvector(v1, v2)
% ����������������ȷ��ÿ����������ÿ����һ��
% (v1, v2)      input  ��Ҫ�������������
% [rv1, rv2]    ouptut ������ɺ����������

% ������ɽ����
len = length(v1);
r1 = ceil(len * rand);
r2 = ceil(len * rand);
left = min([r1 r2]);
right = max([r1 r2]);
if left == right
    rv1 = v1;
    rv2 = v2;
    return
end
% fprintf('left=%d, right=%d\n', left, right);
% ����
tempv1 = [v1(1:left-1) v2(left:right) v1(right+1:len)];
tempv2 = [v2(1:left-1) v1(left:right) v2(right+1:len)];


% �����ͻ��ȷ��һ��·�߸���ÿ����һ��
conflictindex = isconflict(tempv1, left, right);
while conflictindex ~= 0
    tempindex = find(tempv1(left:right) == tempv1(conflictindex));
    tempv1(conflictindex) = tempv2(tempindex+left-1);
    conflictindex = isconflict(tempv1, left, right);
end
conflictindex = isconflict(tempv2, left, right);
while conflictindex ~= 0
    tempindex = find(tempv2(left:right) == tempv2(conflictindex));
    tempv2(conflictindex) = tempv1(tempindex+left-1);
    conflictindex = isconflict(tempv2, left, right);
end

rv1 = tempv1;
rv2 = tempv2;
end

function index = isconflict(v, left, right)
% �ж��������Ƿ��г�ͻ���Ƿ����ظ��ĳ���
% v             input  ��������
% left          input  ��������������
% right         input  ��������������
% index         output 0��ʾ����ͻ��������ʾ��ͻλ��
index = 0;
for i = 1:length(v)
    if i >= left && i <= right
        continue
    end
    n = size(find(v == v(i)), 2);
    if n ~= 1
        index = i;
        break
    end
end
end

