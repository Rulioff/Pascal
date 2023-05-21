﻿{Z_1.2 Одинаковые цифры.}
var number, dig, count : integer;
  bool : boolean;
  
begin  
    writeln('Введите двузначное число с одинаковым значением разряда: ');
    readln(number);
    dig := 0;
    count := number;
    while number > 0 do begin
      number := number div 10;
      inc(dig);
    end;
    
    if (trunc(count/10) = count mod 10) and (dig = 2)
      then bool := true;
    writeln(dig, ' ', (bool));
end.