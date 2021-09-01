today = WeekDays.Tuesday;
today

% today = 
% 
%   WeekDays 枚举
% 
%     Tuesday

%% 基于值的枚举类的实例是唯一的，直到该类被清除并重新加载。
a = WeekDays.Monday;
b = WeekDays.Monday;
isequal(a,b)

% MATLAB® 将 a 和 b 视为等价的
% ans =
% 
%   logical
% 
%    1