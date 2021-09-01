% ismember - 如果枚举数组的元素在集合中，则为 true
% setdiff - 枚举数组的差集
% intersect - 枚举数组的交集
% setxor - 枚举数组的异或集
% union - 枚举数组的并集

today = WeekDays.Tuesday;
teamMeetings = [WeekDays.Wednesday WeekDays.Friday];
ismember(today,teamMeetings);
% ans =
% 
%   logical
% 
%    0
ismember('Tuesday',teamMeetings);
% ans =
% 
%   logical
% 
%    0
ismember(WeekDays.Tuesday,{'Wednesday','Friday'});
% ans =
% 
%   logical
% 
%    0