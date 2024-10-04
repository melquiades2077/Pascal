begin
  var year := ReadInteger('Введите год: ');
  Assert(year >= 0);
  
  Print($'Год високосный: {(year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0))}');
  
  var (firstDay, firstMonth, secondDay, secondMonth) := ReadInteger4('Введите две даты: ');
  if (12 - firstMonth) < (12 - secondMonth) then
    Print(1)
  else if (12 - firstMonth) > (12 - secondMonth) then
    Print(2)
  else
    if (31 - firstDay) < (31 - secondDay) then
      Print(1)
    else if (31 - firstDay) > (31 - secondDay) then
      Print(2)
    else
      Print(0)
  
end.