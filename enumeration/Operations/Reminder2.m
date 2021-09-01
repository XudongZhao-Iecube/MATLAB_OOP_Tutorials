function c = Reminder2(day)
   switch(day)
      case 'Monday'
         c = 'Department meeting at 10:00';
      case 'Tuesday'
         c = 'Meeting Free Day!';
      case {'Wednesday' 'Friday'}
         c = 'Team meeting at 2:00';
      case 'Thursday'
         c = 'Volleyball night';
   end
end