{P_19_2 Применение процедуры с параметром.}
program P_19_2;
{$CODEPAGE CP866}
var
  man: string;

  procedure Pause(msg: string);
  //--- объявление процедуры с параметром msg ---
  begin
    Write(msg);
    readln;
  end;

begin //--- главная программа ---
  writeln('Как тебя зовут?');
  readln(Man);
  writeln('Здравствуй, ', man);
  Pause('Нажмите Enter:'); //Вызов процедуры.
  Pause('Ещё раз:');
  Pause('И ещё разок!');
end.
