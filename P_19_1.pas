{ P_19_1 Пример применения процедуры.}
var
  man: string;

procedure pause; //--- описание процедуры ---
begin
  write('Нажмите Enter…');
  readln;
end;

begin //--- главная программа ---
  writeln('Как тебя зовут?');
  readln(Man);
  writeln('Здравствуй, ', man);
  pause; //Вызов процедуры.
end.