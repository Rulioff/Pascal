﻿{Z_1_25 Определение квартала по месяцам.}
{Год делится на четыре квартала: январь-март — это первый квартал и т.д. Программа
принимает целое число — номер месяца, — а затем печатает номер соответствующего
квартала или слово «Ошибка».}
var
  month, quarter: integer;

begin
  write('Введите месяц, пожалуйста: ');
  readln(month);
  
  if (month >= 1) and (month < 13) then begin
    quarter := (month + 2) div 3;
    writeln(quarter, '-й квартал.');
  end
  
  else
      writeln('Ошибка.');
end.