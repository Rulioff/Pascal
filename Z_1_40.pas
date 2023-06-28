{Z_1_40 Проверка числа на простоту.}
{Ввести целое положительное число и напечатать «ДА», если это простое число и «НЕТ» в
противном случае. Простым называется число, делящееся без остатка лишь на 1 и само на
себя.}
var
  inputNumber, indexNumber, primeNumber: integer;

begin
  repeat
    write('Введите целое положительное число, пожалуйста: ');
    readln(inputNumber);
  until inputNumber > 0;
  
  indexNumber := 0;
  primeNumber := 0;
  
  repeat
    begin        
    indexNumber += 1;
    if inputNumber mod indexNumber = 0 then
      primeNumber += 1;
 
    if primeNumber > 2 then break;
    
    end;
  until inputNumber <= indexNumber;
  
  if primeNumber <= 2 then
    writeln('Число ', inputNumber, ' проcтое? ', 'Да.')
  else
    writeln('Число ', inputNumber, ' проcтое? ', 'Нет.');
end.