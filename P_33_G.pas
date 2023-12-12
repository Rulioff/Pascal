{P_33_G Напечатайте с тремя знаками после точки 20 случайных чисел в диапазоне
от 0 до 10 так, чтобы числа следовали по возрастанию. Подсказка: сравнивайте
очередное число с предыдущим.}

program P_33_G;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Index: byte;
  PrewNumber, CurrentNumber: extended;

begin
  Randomize;
  PrewNumber := 0;

  for Index := 1 to 20 do
  begin
    repeat
      CurrentNumber := Random(500 * Index) / 1000;
    until CurrentNumber > PrewNumber;
    PrewNumber := CurrentNumber;
    Write(CurrentNumber: 7: 3);
  end;

  ReadLn;
end.
