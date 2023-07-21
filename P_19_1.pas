{P_19_1 Пример применения процедуры. Теоретическая задача.}
program P_19_1;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Man: string;

  procedure Pause; //--- описание процедуры ---
  begin
    Write('Нажмите Enter…');
    readln;
  end;

begin //--- главная программа ---
  writeln('Как тебя зовут?');
  readln(Man);
  writeln('Здравствуй, ', Man);
  Pause; //Вызов процедуры.
end.
