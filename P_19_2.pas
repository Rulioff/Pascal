{P_19_2 Применение процедуры с параметром.}
var
  man: string;

procedure Pause (msg : string); //--- объявление процедуры с параметром msg ---
begin
  write(msg);
  readln;
end;

begin //--- главная программа ---
  writeln('Как тебя зовут?');
  readln(Man);
  writeln('Здравствуй, ', man);
  Pause('Нажмите Enter…'); //Вызов процедуры.
  Pause('Ещё раз…');
  Pause('И ещё разок!');
end.