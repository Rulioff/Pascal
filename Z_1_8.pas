{Z_1_8 Логические выражения для чисел}
var first, second, third : integer;
  equally, different, two, odd : boolean;
begin
  write('Введите положительное целое число: ');
  readln(first);
  
  write('Введите положительное целое число: ');
  readln(second);
  
  write('Введите положительное целое число: ');
  readln(third);
  
  if (first = second) and (first = third) and (second = third)
    then equally := true;
    
  if (first <> second) and (first <> third) and (second <> third)
    then different := true;
  
  if (first = second) or (first = third) or (second = third)
    then two := true;
  
  if (first mod 2 <> 0) and (second mod 2 <> 0) and (third mod 2 <> 0)
    then odd := true;
    
  writeln('Все числа совпадают  ', equally);
  writeln('Все числа разные ', different);
  writeln('Два из трёх чисел совпадают  ', two);
  writeln('Все числа нечётные ', odd);
end.