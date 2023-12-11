{P_33_V Напечатайте с тремя знаками после точки 20 случайных вещественных
чисел в диапазоне от 0 до 10. Подсказка: для формирования дробных чисел можно
делить случайное число на другое число, например, Random(10000)/1000.}

program P_33_V;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Index: byte;
begin
  Randomize;
  for Index := 1 to 20 do
    Write(Random(10000) / 1000: 7: 3);
  ReadLn;
end.
