{P_36_B Напечатайте 20 случайных чисел в диапазоне от 1 до 50 так, чтобы каждое
число встретилось в распечатке лишь по разу. Подсказка: после генерации числа
функцией Random проверьте его на вхождение в множество уже напечатанных
чисел.}

program P_36_B;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

type
  TypeNumbers = 1..50;

var
  Index: byte;
  Number: TypeNumbers;
  PrintedNumbers: set of TypeNumbers;

begin
  Index := 0;
  Randomize;
  PrintedNumbers := [];

  repeat
    Number := 1 + Random(50);
    if not (Number in PrintedNumbers) then
    begin
      PrintedNumbers := PrintedNumbers + [Number];
      Inc(Index);
      Write(Number, ' ');
    end;
  until Index > 19;

  ReadLn;
end.
