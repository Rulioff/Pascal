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
  
  numberN := 0;
  count := 0;
  
  repeat
    begin        
    numberN += 1;
    if number mod numberN = 0 then
      count += 1;
 
    if count > 2 then break;
    
    writeln(number, ' ', numberN, ' ', count);
    end;
  until number <= numberN;
  
  if count <= 2 then
    writeln('Число ', number, ' проcтое? ', 'Да.');
  if count > 2 then
    writeln('Число ', number, ' проcтое? ', 'Нет.');
end.