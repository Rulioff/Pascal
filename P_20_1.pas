{ P_20_1 В каждой введенной строке надо заменить латинские буквы «A» —
если они там есть — на латинские буквы «B». Например, приняв строку «ABBA»,
программа должна превратить её в строку «BBBB».
– вариант программы с локальной переменной }

program P_20_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string;
  Index: integer; { глобальная переменная }

  procedure Scan(var LineSent: string; SymbolOne, SymbolTwo: char);
  var
    Index: integer; { локальная переменная }
  begin
    for Index := 1 to Length(LineSent) do
      if LineSent[Index] = SymbolOne then
        LineSent[Index] := SymbolTwo;
  end;

begin { главная программа }
  for Index := 1 to 3 do
  begin
    Write('Введите строку, пожалуйста: ');
    Readln(Line);
    Scan(Line);
    Writeln(Line);
    ReadLn;
  end;
end.
