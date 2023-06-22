{Z_1_40 Проверка числа на простоту.}
{Ввести целое положительное число и напечатать «ДА», если это простое число и «НЕТ» в
противном случае. Простым называется число, делящееся без остатка лишь на 1 и само на
себя.}
var
  number, numberN, count: integer;

begin
  repeat
    write('Введите целое положительное число, пожалуйста: ');
    readln(number);
  until number > 0;
  
  numberN := 1;
  count := 0;
  
  repeat    
    
    if number mod numberN = 0 then begin
      count := count + 1;
      numberN := numberN + 1;       
    end;
    
    if count > 2 then break;
    writeln(number, ' ', numberN, ' ', count);
  until number > numberN;
  

  
  if count < 2 then
    writeln('Число ', number, ' проcтое? ', 'Да.')
  else
    writeln('Число ', number, ' проcтое? ', 'Нет.')
end.