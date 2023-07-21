{Напишите ещё одну версию процедуры Pause, выводящую сообщение либо на русском,
либо на английском языке. Параметр этой процедуры должен быть булевым и работать
она должна так. Pause(true); -печатается «Нажмите Enter…» -Pause(false);
-печатается «Press Enter…»-}
program P_19_A;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Language: string;
  //  HasRus: boolean;

  {--- объявление процедуры с параметром HasRus ---}
  procedure Pause(HasRus: boolean);
  begin
    if HasRus then
      Writeln('Нажмите Ввод')
    else;
    Writeln('Press Enter');
    Readln;
  end;

begin{--- главная программа ---}
  Write('Выберите язык, пожалуйста: ');
  Readln(Language);
  if Language = 'Ru' then
    Pause(True);

  if Language = 'Ru' then
    Pause(False);
end.
