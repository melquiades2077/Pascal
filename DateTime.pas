﻿begin
  var year := ReadInteger('Введите год: ');
  Assert(year >= 0);
  
  Print($'Год високосный: {(year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0))}')
end.