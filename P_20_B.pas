{Создайте процедуру, печатающую все числа, кроме единицы, на которые
без остатка делится число N, где N — параметр процедуры. Напишите программу
для проверки этой процедуры.}

program P_20_B;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Divisible, Divider: integer;

  procedure Multiplicity(Divisible: integer);
  begin
    WriteLn('Число ', Divisible, ' кратно числам: ');
    for Divider := 2 to Divisible div 2 do
      if Divisible mod Divider = 0 then
        WriteLn(Divider);
    ReadLn;
  end;

begin
  Write('Введите число для определения кратности: ');
  ReadLn(Divisible);
  Multiplicity(Divisible);
end.
