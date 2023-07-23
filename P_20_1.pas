{ P_20_1 – первый этап разработки }

program P_20_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  S: string;
  k: integer;

  {--- Заглушка процедуры ---}
  procedure Scan(arg: string);
  begin
    for k := 1 to Length(arg) do
      if arg[k] = 'A' then arg[k] := 'B';
  end;

begin {--- главная программа ---}
  for k := 1 to 3 do
  begin
    Write('Введите строку: ');
    Readln(S);
    Scan(S);
    Writeln(S);
  end;
end.
