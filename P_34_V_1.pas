{ P_34_V Напишите целочисленную функцию Division для деления первого
числа на второе без применения операции DIV. Вот примеры вызовов:
Writeln( Division(20, 4) ); ( 5 )
Writeln( Division(21, 5) ); ( 4 )
Подсказка: внутри функции вычитайте второе число из первого. Предотвратите
деление на ноль (как результат возвращайте ноль). Сделайте два варианта:
1) деление положительных чисел, 2) деление чисел с учетом знака.}
program P_34_V_1;

{$mode objfpc} {$H+} {$codepage UTF8}

var
  Divisible, Divider: integer;

  function Division(Divisible, Divider: integer): integer;
  var
    IntegerQuotient: integer;
  begin
    IntegerQuotient := 0;
    while (Divisible >= Divider) and (Divider > 0) do
    begin
      Divisible := Divisible - Divider;
      Inc(IntegerQuotient);
    end;
    Result := IntegerQuotient;
  end;

begin
  Write('Введите делимое и делитель, пожалуйста: ');
  Readln(Divisible, Divider);
  Writeln(Division(Divisible, Divider));
  ReadLn;
end.
