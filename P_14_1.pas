{P_14_1 Экзаменатор базовый.}
var
  Multiplier_1, Multiplier_2 : integer; Result : Boolean; Answer : string;
begin
  Repeat
    Write('Введите 1-й множитель:  ');  Read(Multiplier_1);
    Write('Введите 2-й множитель:  ');  Read(Multiplier_2);
    Write('Введите произведение:  ');  Read(Result);
    if Result = 0 then Break;
     if Result = Multiplier_1 * Multiplier_2 then Result := ('Верно!')
     else Result := ('Повторите таблицу пожалуйста.');
     Writeln(Result); Readln();
  until Result = 0;
end.