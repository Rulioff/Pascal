{ P_20_1 В каждой введенной строке надо заменить латинские буквы «A» —
если они там есть — на латинские буквы «B». Например, приняв строку «ABBA»,
программа должна превратить её в строку «BBBB».
– вариант программы с локальной переменной }

program P_20_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string;
  Count: integer; { глобальная переменная }

  procedure Scan(LineSent: string);
  var
    CountA: integer; { локальная переменная }
  begin
    for CountA := 1 to Length(LineSent) do
      if LineSent[CountA] = 'A' then LineSent[CountA] := 'B';
  end;

begin { главная программа }
  for Count := 1 to 3 do
  begin
    Write('Введите строку: ');
    Readln(Line);
    Scan(Line);
    Writeln(Line);
  end;
end.
