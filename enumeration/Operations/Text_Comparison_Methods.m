% strcmp - 比较枚举成员
% strncmp - 比较枚举成员的前 n 个字符
% strcmpi - 对枚举成员进行不区分大小写的比较
% strncmpi - 对枚举成员的前 n 个字符进行不区分大小写的比较

today = WeekDays.Tuesday;
strcmp(today,'Friday')
% ans =
% 
%      0
strcmp(today,'Tuesday')
% ans =
% 
%      1