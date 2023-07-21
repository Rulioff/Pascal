{P_19_2 Применение процедуры с параметром.}
program P_19_2;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Man: string;

  procedure Pause(Msg: string);
  //--- объявление процедуры с параметром Msg ---
  begin
    Write(Msg);
    readln;
  end;

begin //--- главная программа ---
  writeln('Как Вас зовут?');
  readln(Man);
  writeln('Здравствуйте, ', Man);
  Pause('Нажмите Enter:');
  //Вызов процедуры с параметром.
  Pause('Ещё раз:');
  Pause('И ещё разок!');
end.
