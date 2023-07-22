{ P_19_V Напишите процедуру для очистки экрана, она может пригодиться вам в
будущем. Подсказка: можно напечатать несколько десятков пустых строк (не менее
25, что зависит от настройки размера консольного окна). }

program P_19_V;

{$mode objfpc}{$H+}
{$codepage UTF8}

const
  Count = 29;

  procedure ScreenClean;

  var
    Index: integer;

  begin
    for Index := 1 to Count do
      Writeln;
  end;

begin
  Writeln('Для очистки экрана нажмите ввод.');
  Readln;
  ScreenClean;
  Readln;
end.
