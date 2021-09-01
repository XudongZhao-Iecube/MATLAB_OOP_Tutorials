%% 枚举、字符串和字符向量的关系运算
% 对于涉及关系运算符 eq (==) 和 ne (~=) 的表达式，如果其中一个操作数是枚举，则允许另一个操作数为 char 类型。
% 在执行运算之前，MATLAB® 将 char 向量转换为枚举标量，或将 char 向量元胞数组转换为枚举数组。

today = WeekDays.Friday;
today == "Friday";
% ans =
% 
%   logical
% 
%    1
   
wd = [WeekDays.Monday WeekDays.Wednesday WeekDays.Friday];
wd == 'Friday';
% ans =
% 
%   1×3 logical array
% 
%    0   0   1

sa = ["Monday" "Wednesday" "Friday"];
md = [WeekDays.Tuesday WeekDays.Thursday WeekDays.Friday];
md ~= sa
% ans =
% 
%   1×3 logical array
% 
%    1   1   0