% 在枚举类中定义方法
today = WeekDays.Tuesday;
today.isMeetingDay

% ans =
% 
%   logical
% 
%    0

isMeetingDay(today)

% ans =
% 
%   logical
% 
%    0

isMeetingDay(WeekDays.Wednesday)

% ans =
% 
%   logical
% 
%    1
