%% 将枚举成员转换为字符串或字符向量

% string
string(WeekDays.Monday) + " is our meeting day.";

% ans = 
% 
%     "Monday is our meeting day."

% char
['Today is ' char(WeekDays.Friday) '.'];

% ans =
% 
%     'Today is Friday.'

%% 将枚举数组转换为字符串数组或字符向量元胞数组

sa = [WeekDays.Tuesday WeekDays.Thursday];
Str = string(sa);

% ans = 
% 
%   1×2 string 数组
% 
%     "Tuesday"    "Thursday"
    
Cell = cellstr(sa);

% ans =
% 
%   1×2 cell 数组
% 
%     {'Tuesday'}    {'Thursday'}