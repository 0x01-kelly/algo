% main.m
% ��֧���編
% -----------------------------------------------
% ���ģ�ͣ�
% min z = f * x
% A * x <= b
% x >= 0,��Ϊ����
% ---------------------------------------------------
clear global;
clear;
clc;

global result; % �洢����������
global lowerBound; % �½�
global upperBound; % �Ͻ�
global count; % �����ж��Ƿ�Ϊ��һ�η�֧

count = 1;

f = [-40, -90];
A = [8, 7;
    7, 20;];
b = [56; 70];
Aeq = [];
beq = [];
lbnd = [0; 0];
ubnd = [inf; inf];

BinTree = createBinTreeNode({f, A, b, Aeq, beq, lbnd, ubnd});
if ~isempty(result)
    [fval,flag]=min(result(:,end)); % result��ÿһ�ж�Ӧһ�������⼰��Ӧ�ĺ���ֵ
    Result=result(flag,:);
    disp('�������滮��������Ž�Ϊ��');
    disp(Result(1,1:end-1));
    disp('�������滮���������ֵΪ��');
    disp(Result(1,end));
else
    disp('�������滮�����޿��н�');
end




