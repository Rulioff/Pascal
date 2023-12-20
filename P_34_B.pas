{ P_24_B Напишите булеву функцию Test и программу для её демонстрации.
Функция должна проверять, делится ли без остатка первое число на второе,
например:
Writeln( Test(20, 4) ); ( true )
Writeln( Test(21, 5) ); ( false ).}
program P_34_B;

{$mode objfpc} {$H+} {$codepage UTF8}

var
  Divisible, Divider: integer;

  function Test(Divisible, Divider: integer): boolean;
  begin
    if (Divisible mod Divider) = 0 then
      Result := True
    else
      Result := False;
  end;

begin
  Write('Введите делимое и делитель, пожалуйста: ');
  Readln(Divisible, Divider);
  Writeln(Test(Divisible, Divider));
  ReadLn;
end.
