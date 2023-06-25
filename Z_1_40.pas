{Z_1_40 Проверка числа на простоту. Доработать нейминг.}
{Ввести целое положительное число и напечатать «ДА», если это простое число и «НЕТ» в
противном случае. Простым называется число, делящееся без остатка лишь на 1 и само на
себя.}
var
  number, numberE, numberF, buffer: integer;
  hasFibonacci: boolean;

begin
  write('Введите число - от 1 до ∞, пожалуйста: ');
  readln(numberE);

  number := 1;
  buffer := 0;
  numberF := 1;
  hasFibonacci := numberE = numberF;

  repeat
    begin
      numberF := number + buffer;
      number := buffer;
      buffer := numberF;
    end;

    if numberF = numberE then begin
      hasFibonacci := true;
      break;
    end;
  until numberE < numberF;

  //Точка отладки. writeln(numberE, ' ', numberF, ' ', hasFibonacci);

  if hasFibonacci then
    writeln('Число ', numberE, ' принадлежит ряду Фибоначчи? ', 'Да.')
  else
    writeln('Число ', numberE, ' принадлежит ряду Фибоначчи? ', 'Нет.')
end.
