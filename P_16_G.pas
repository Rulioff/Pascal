﻿{P_16_G Времена года.}
{Пользователь вводит число — номер месяца от 1 до 12, а программа
должна сообщить соответствующее ему время года: зима, весна, лето, осень.}
var
  month : integer;
begin
  writeln('Введите № месяца пожалуйста.');
  read(month); //Ошибка типа данных, если вводим не число.
  
  case month of
    1,2,12 : writeln('зима.');
    3..5 : writeln('весна.');
    6..8 : writeln('лето.');
    9..11 : writeln('осень.');
  else writeln('В году всего 12 месяцев.');
  end;
end.