{ P_34_V Напишите целочисленную функцию Division для деления первого
числа на второе без применения операции DIV. Вот примеры вызовов:
Writeln( Division(20, 4) ); ( 5 )
Writeln( Division(21, 5) ); ( 4 )
Подсказка: внутри функции вычитайте второе число из первого. Предотвратите
деление на ноль (как результат возвращайте ноль). Сделайте два варианта:
1) деление положительных чисел, 2) деление чисел с учетом знака.}
program P_34_V_2;

{$mode objfpc} {$H+} {$codepage UTF8}

var
  Divisible, Divider: integer;

  function Division(Divisible, Divider: integer): integer;
  var
    IntegerQuotient, Negative: integer;
  begin
    IntegerQuotient := 0;
    Negative := 1;
    if (Divisible < 0) and (Divider > 0) or (Divisible > 0) and (Divider < 0) then
      Negative := -1;
    while (Abs(Divisible) >= Abs(Divider)) and (Divider <> 0) do
    begin
      Divisible := Abs(Divisible) - Abs(Divider);
      Inc(IntegerQuotient);
    end;
    Result := IntegerQuotient * Negative;
  end;

begin
  Write('Введите делимое и делитель, пожалуйста: ');
  Readln(Divisible, Divider);
  Writeln(Division(Divisible, Divider));
  ReadLn;
end.
