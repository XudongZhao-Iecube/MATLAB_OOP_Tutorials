classdef Machine < handle
   properties (SetAccess = private)
      State = MachineState.NotRunning
   end
   
   methods
      function start(obj)
         if obj.State == MachineState.NotRunning
            obj.State = MachineState.Running;
         end
         disp (obj.State.char)
      end
      function stop(obj)
         if obj.State == MachineState.Running
            obj.State = MachineState.NotRunning;
         end
         disp (obj.State.char)
      end
   end
end

% https://ww2.mathworks.cn/help/matlab/matlab_oop/mutable-handle-vs-immutable-value-enumeration-members.html#bsm92sd-1