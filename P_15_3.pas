{ P_15_3 – программа-экзаменатор, версия 2 }
var a, b, c : integer; //Сомножители и произведение.
  
begin
  randomize;  //Перемешиваем билеты.
  repeat
    a := 1 + random(10);
    b := 1 + random(10);
    writeln('Сколько будет ', a, '*', b, '?');
    readln(c);
    if c = 0
      then break; //Выходим из циклы, если произведение = 0.
    if a * b = c  //Проверяем правильность ответа.
      then writeln('Верно!')
      else writeln('Неверно!');
  until false; //Бесконечный цикл.

end.