﻿{Z_1_40 Проверка числа на простоту.}
{Ввести целое положительное число и напечатать «ДА», если это простое число и «НЕТ» в
противном случае. Простым называется число, делящееся без остатка лишь на 1 и само на
себя.}
var
  number, numberN, buffer: integer;
  numberPrime: boolean;

begin
  write('Введите целое положительное число, пожалуйста: ');
  readln(number);
  (numberN <> number) and (numberN <> 1);
  numberPrime := (number div numberN <> 0);
   
   repeat
    if number div number then begin
      numberPrime := false;
      break;
    end;
  until number > numberN;
  
  //Точка отладки. writeln(numberE, ' ', numberF, ' ', hasFibonacci);
  
  if numberPrime then
    writeln('Число ', number, ' проcтое? ', 'Да.')
  else
    writeln('Число ', number, ' проcтое? ', 'Нет.')
end.