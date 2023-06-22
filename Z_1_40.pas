{Z_1_40 Проверка числа на простоту.}
{Ввести целое положительное число и напечатать «ДА», если это простое число и «НЕТ» в
противном случае. Простым называется число, делящееся без остатка лишь на 1 и само на
себя.}
var
  number, numberN: integer;
  numberPrime: boolean;

begin
  repeat
    write('Введите целое положительное число, пожалуйста: ');
    readln(number);
  until number > 0;
  
  numberN := 2;
  //numberPrime := true;
  
  repeat
    if (number mod numberN <> 0) then begin
      numberPrime := true;
      break;        
    end
    else
      numberN := numberN + 1;
    
  until number > numberN;
  
  writeln(number, ' ', numberN, ' ', numberPrime);
  
  if numberPrime = true then
    writeln('Число ', number, ' проcтое? ', 'Да.')
  else
    writeln('Число ', number, ' проcтое? ', 'Нет.')
end.