function y = OutputLowerAndUpperBounds()

global lowerBound;
global upperBound;

disp("��ʱ�½硢�Ͻ�ֱ�Ϊ");
disp(lowerBound);
if isempty(upperBound)
    disp('  ���Ͻ�')
else
    disp(upperBound);
end

end
