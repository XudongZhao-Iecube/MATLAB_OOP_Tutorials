classdef SyntaxColors
   properties
      R
      G
      B
   end
   methods
      function c = SyntaxColors(r, g, b)
         c.R = r; c.G = g; c.B = b;
      end
   end
   enumeration
      Error   (1, 0, 0)
      Comment (0, 1, 0)
      Keyword (0, 0, 1)
      String  (1, 0, 1)
   end
end

% 在枚举类中定义属性

% 当必须存储与枚举成员相关的数据时，可向枚举类添加属性。在类构造函数中设置属性值。
% 例如，SyntaxColors 类定义三个属性，当您引用类成员时，构造函数会将这些属性的值赋给输入参数的值。