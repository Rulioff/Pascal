{P_14_1 Экзаменатор базовый.}
var
  multiplier_1, multiplier_2, res : integer; compare : Boolean; answer : string;
begin
  repeat
    write('Введите 1-й множитель:  ');  read(Multiplier_1);
    write('Введите 2-й множитель:  ');  read(Multiplier_2);
    write('Введите произведение:  ');  read(Result);
    if res = 0 then Break; {Конец цикла при 0.}
    {Проверяем ответ.}
     if res = Multiplier_1 * Multiplier_2 then Result := ('Верно!')
     else Result := ('Повторите таблицу пожалуйста.');
     Writeln(Result); Readln();
  until Result = 0;
end.