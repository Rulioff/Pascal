{Создайте процедуру, печатающую все числа, кроме единицы, на которые
без остатка делится число N, где N — параметр процедуры. Напишите программу
для проверки этой процедуры.}

program P_20_B;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Divisible, Divider, Quotient, Index: integer;

  procedure Multiplicity(Divisible: integer);
  begin
for Index 2 to Divider div 2 do
  if Divider mod Index = 0 then
  WriteLn(Index);
ReadLn;
  end;

begin
  Write('Введите число для определения кратности: ');
  ReadLn(Divisible);
  Multiplicity(Divisible);
  Quotient:= Divisible / Divisible;
  WriteLn(Divisible, '/', Divider, '=', Quotient);
end.
