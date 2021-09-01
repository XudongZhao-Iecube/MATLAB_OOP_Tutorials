% 当引用枚举成员时，构造函数会初始化属性值：

e = SyntaxColors.Error;
e.R

% ans =
% 
%      1

e.G

% ans =
% 
%      0
     
e.B

% ans =
% 
%      0

% 由于 SyntaxColors 是值类（它不从 handle 派生），只有类构造函数可以设置属性值：
e.R = 0;

% 无法设置 'SyntaxColors' 类的 'R' 属性，因为它为只读属性。
% You cannot set the read-only property 'R' of SyntaxColors.
% https://ww2.mathworks.cn/help/matlab/matlab_oop/mutable-handle-vs-immutable-value-enumeration-members.html