function c = Reminder(day)
   % Add error checking here
   switch(day)
      case WeekDays.Monday
         c = 'Department meeting at 10:00';
      case WeekDays.Tuesday
         c = 'Meeting Free Day!';
      case {WeekDays.Wednesday WeekDays.Friday}
         c = 'Team meeting at 2:00';
      case WeekDays.Thursday
         c = 'Volleyball night';
   end
end