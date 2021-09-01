obj(1) = BasicClass(2.7984);
obj(2) = BasicClass(sin(pi/3));
obj(3) = BasicClass(7);

[obj.Value] + 2;
% ans =
% 
%     4.7984    2.8660    9.0000
roundOff(obj);
% ans =
% 
%     2.8000    0.8700    7.0000