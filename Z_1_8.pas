{Z_1_8 Логические выражения для чисел}
{Вводятся три целых положительных числа, программа печатает TRUE или FALSE для
следующих булевых выражений:
· все числа совпадают;
· все числа разные;
· два из трёх чисел совпадают;
· все числа нечётные.}
var first, second, third : integer;
//  equally, different, two, odd : boolean;
begin
  write('Введите положительное целое число: ');
  readln(first);
  
  write('Введите положительное целое число: ');
  readln(second);
  
  write('Введите положительное целое число: ');
  readln(third);
  
// equally := (first = second) and (first = third) and (second = third);
        
// different := (first <> second) and (first <> third) and (second <> third);
    
// two := (first = second) or (first = third) or (second = third);
  
// odd := (first mod 2 <> 0) and (second mod 2 <> 0) and (third mod 2 <> 0);
    
  writeln('Все числа совпадают  ', (first = second) and (first = third) and (second = third));
  writeln('Все числа разные ', (first <> second) and (first <> third) and (second <> third));
  writeln('Два из трёх чисел совпадают  ', (first = second) or (first = third) or (second = third));
  writeln('Все числа нечётные ', (first mod 2 <> 0) and (second mod 2 <> 0) and (third mod 2 <> 0));
end.