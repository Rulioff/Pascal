﻿{P_16_V Возраст для долгожителей, вампиров и неоргаников.}
{Пусть пользователь введет число — свой возраст в годах. Ваша программа
должна напечатать фразу: «Вам столько-то лет» с правильным окончанием,
например: «Вам 20 лет», или «Вам 34 года», или «Вам 41 год». Подсказка: надо
определить последнюю цифру года операцией MOD 10. Некоторые числа
выпадают из общего правила, их надо проверить особо (например, 11, 12, 13, 14).}
var
  age, onesNumber : integer;
  tensNumber : boolean;
  ending: string;

begin
  write('Введите Ваш возраст пожалуйста: ');
  read(age);
  ending := ' лет.';
  tensNumber := (age mod 100) div 10 = 1; // Проверка исключений 11, 12..19 лет.
  onesNumber := age mod 10;
  
  if tensNumber then
    case onesNumber of
      1, 2, 3, 4 : ending := ' лет.';
    end
  else
      case onesNumber of
        1 : ending := ' год.';
        2, 3, 4 : ending := ' года.';
      end;
    
  writeln('Ваш возраст ', age, ending);
end.