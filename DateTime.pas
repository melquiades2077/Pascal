begin
  var year := ReadInteger('Введите год: ');
  Assert(year >= 0);
  
  var leap := (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0));
  
  Print($'Год високосный: {leap}{newline}');
  
  if leap then
    PrintLn('В году 366 дней')
  else
    PrintLn('В году 365 дней');
  
  var (firstDay, firstMonth, secondDay, secondMonth) := ReadInteger4($'{newline}Введите две даты: ');
  Assert((firstDay in 1..31) and (secondDay in 1..31) and (firstMonth in 1..12) and (secondMonth in 1..12));
  
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
      Print(0);
end.