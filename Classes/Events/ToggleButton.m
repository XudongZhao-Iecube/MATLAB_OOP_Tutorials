classdef ToggleButton < handle
   properties
      State = false 
   end
   
   events
       ToggleState
   end
   
   methods
       function OnStateChange(obj,newState)  
           if newState ~= obj.State
              obj.State = newState;
              notify(obj,'ToggleState');
           end
       end
   end
   
end