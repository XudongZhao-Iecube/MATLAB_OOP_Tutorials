classdef WeekDays
    enumeration 
        Monday, Tuesday, Wednesday, Thursday, Friday
    end
    
    methods
        function tf = isMeetingDay(obj)
            tf = ~(WeekDays.Tuesday == obj);
        end
    end
end