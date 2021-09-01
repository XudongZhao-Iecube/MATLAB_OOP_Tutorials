methods('WeekDays');

% 类 WeekDays 的方法:
% 
% WeekDays              char                  intersect             isequaln              ismember              setdiff               strcmp                string                strncmpi              
% cellstr               eq                    isequal               isequalwithequalnans  ne                    setxor                strcmpi               strncmp               union     

% WeekDays 方法将文本格式转换为枚举。 支持的格式包括字符串、字符向量、字符串数组和字符向量元胞数组。 例如：

f = WeekDays(["Monday" "Friday"]);

% f = 
% 
%   1×2 WeekDays 枚举数组
% 
%     Monday    Friday