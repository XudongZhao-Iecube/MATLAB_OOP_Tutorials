today = WeekDays.Wednesday;
isenum(today)
% ans =
% 
%      1
% 对于空枚举对象，isenum 返回 true：

noday = WeekDays.empty;
isenum(noday)
% ans =
% 
%      1
% 要确定某变量类的类是否为枚举类，请使用 meta.class 对象。

today = WeekDays.Wednesday;
mc = metaclass(today);
mc.Enumeration
% ans =
% 
%      1