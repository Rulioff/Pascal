{P_16_V Возраст для долгожителей, вампиров и неоргаников.}
{Пусть пользователь введет число — свой возраст в годах. Ваша программа
должна напечатать фразу: «Вам столько-то лет» с правильным окончанием,
например: «Вам 20 лет», или «Вам 34 года», или «Вам 41 год». Подсказка: надо
определить последнюю цифру года операцией MOD 10. Некоторые числа
выпадают из общего правила, их надо проверить особо (например, 11, 12, 13, 14).}
var
  age, onesNumber, tensNumber : integer;
  ending: string;

begin
  write('Введите Ваш возраст пожалуйста: ');
  read(age);
  ending := ' лет.';
  tensNumber := (age mod 100) div 10; // Проверка исключений 11, 12..19 лет.
  onesNumber := age mod 10;
  
  if (tensNumber = 1) and (onesNumber >= 1) and (onesNumber <= 4) then
    ending := ' лет.'

  else if onesNumber = 1 then
    ending := ' год.'
  
  else if (onesNumber >= 2) and (onesNumber <= 4) then
    ending := ' года.';
    
  writeln('Ваш возраст ', age, ending);
end.