{Z_1.3 Чётность цифр.}
var number, count : integer;
  even, odd : byte;
  bool : boolean;
  
begin  
    writeln('Введите число, которе содержит только чётные цифры: ');
    readln(number);
    odd := 0;
    count := number;
    while number > 0 do begin
      if number mod 2 = 0
        then even := even + 1
      else
        odd := odd +1;       
      number := number div 10;
    end;
    writeln('Чётных ', even);
    writeln('Нечётных ', odd);
    if odd = 0
      then bool := true;
    writeln(count, ' содержит только чётные числа. ', (bool));
end.