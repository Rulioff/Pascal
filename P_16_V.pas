﻿{P_16_V Возраст. Доработать для вампиров.}
{Пусть пользователь введет число — свой возраст в годах. Ваша программа
должна напечатать фразу: «Вам столько-то лет» с правильным окончанием,
например: «Вам 20 лет», или «Вам 34 года», или «Вам 41 год». Подсказка: надо
определить последнюю цифру года операцией MOD 10. Некоторые числа
выпадают из общего правила, их надо проверить особо (например, 11, 12, 13, 14).}
var
  age : integer;
  ending : string;
begin
  writeln('Введите Ваш возраст пожалуйста.');
  read(age); //Ошибка типа данных, если вводим не число.
{  if (age > 4) and (age < 21)
    then ending := ' лет.';}
  
  case age mod 10 of
  0,5..9 : ending := ' лет.';
  1 : ending := ' год.';
  2,3,4 : ending := ' года.';
  end;
  
  case age mod 10 of
    5..19 : ending := ' лет.';
  end;
  writeln('Вам ', age, ending);
end.