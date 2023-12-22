{ P_34_G Пусть ваша программа распечатает все множители (кроме единицы)
введенного пользователем целого положительного числа, например:
Введите число: 60
2 2 3 5.}
program P_34_G;

{$mode objfpc} {$H+} {$codepage UTF8}

var
  IntegerNumber, Multipliers: integer;
begin
  Write('Введите целое положительное число, пожалуйста: ');
  readln(IntegerNumber);
  Multipliers := 2;
  while IntegerNumber > 1 do
  begin
    while IntegerNumber mod Multipliers = 0 do
    begin
      writeln('Множитель: ', Multipliers);
      IntegerNumber := IntegerNumber div Multipliers;
    end;
    Inc(Multipliers);
  end;
  ReadLn;
end.
