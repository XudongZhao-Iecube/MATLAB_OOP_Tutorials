classdef BasicClass
   properties
      Value {mustBeNumeric}
   end
   methods
       % 构造函数
        function obj = BasicClass(val)
            % 参数有 1 个的时候
            if nargin == 1   
                obj.Value = val;
            end
        end
        function r = roundOff(obj)
            r = round([obj.Value],2);
        end
        function r = multiplyBy(obj,n)
            r = [obj.Value] * n;
        end
        function r = plus(o1,o2)
            r = [o1.Value] + [o2.Value];
        end
	end
end