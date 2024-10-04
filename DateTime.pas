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
    Print($'1{newline}')
  else if (12 - firstMonth) > (12 - secondMonth) then
    Print($'2{newline}')
  else
    if (31 - firstDay) < (31 - secondDay) then
      PrintLn($'1{newline}')
    else if (31 - firstDay) > (31 - secondDay) then
      PrintLn($'2{newline}')
    else
      PrintLn($'0{newline}');
    
  var (firstYear, secondYear) := ReadInteger2('Введите два года для определения суммы дней между ними: ');
  Assert((firstYear >= 0) and (secondYear >= 0));
  
  var sumOfDays := 0;
  
  for var i := firstYear to secondYear do
  begin
    if (i mod 4 = 0) and ((i mod 100 <> 0) or (i mod 400 = 0)) then
      sumOfDays += 366
    else
      sumOfDays += 365;
  end;
  
  PrintLn($'Сумма дней в промежутке между двумя годами: {sumOfDays}{newline}');
  
  var hour := ReadInteger('Введите количество часов для подсчета секунд: ');
  Assert(hour >= 0);
  
  Print($'Количество секунд: {hour * 3600}');
  
end.