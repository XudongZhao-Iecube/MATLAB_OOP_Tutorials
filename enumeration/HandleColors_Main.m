a = HandleColors.Red;
a.R

% ans =
% 
%      1

a.R = 0.8;

b = HandleColors.Red;
b.R

% ans =
% 
%     0.8000

%% 属性值a和b是相同的
isequal(a,b)

% ans =
% 
%   logical
% 
%    1

%% 清除工作区变量不会更改枚举成员的当前定义HandleColors.Red
clear
a = HandleColors.Red;
a.R

% ans =
% 
%     0.8000

%% 清除类以重新加载类的定义HandleColors
clear classes
a = HandleColors.Red;
a.R

% ans =
% 
%      1