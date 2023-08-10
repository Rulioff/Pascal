{ P_23_2 Вернемся к программе P_20_1, замена символов в строке с применением функции }
program P_23_2;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string;
  Index: integer; { глобальная переменная }

  function Scan(LineSent: string): string;
  var
    Index: integer; { локальная переменная }
  begin
    for Index := 1 to Length(LineSent) do
      if LineSent[Index] = 'A' then
        LineSent[Index] := 'B'; { замена в параметре LineSent }
    Result := LineSent;
  end;

begin { главная программа }
  for Index := 1 to 3 do
  begin
    Write('Введите строку, пожалуйста: ');
    Readln(Line);
    Scan(Line);
    Writeln(Scan(Line));
    ReadLn;
  end;
end.
