classdef RespondToToggle < handle
    
    properties
        ListenerHandle 
    end
    
   methods
      function obj = RespondToToggle(toggle_button_obj)
         hl = addlistener(toggle_button_obj,'ToggleState',@RespondToToggle.handleEvnt);
         obj.ListenerHandle = hl; % Save listener handle
      end
   end
   methods (Static)
      function handleEvnt(src,~)
         if src.State
            disp('ToggledState is true')
         else
            disp('ToggledState is false')
         end
      end
   end
end