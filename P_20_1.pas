{ P_20_1 В каждой введенной строке надо заменить латинские буквы «A» —
если они там есть — на латинские буквы «B». Например, приняв строку «ABBA»,
программа должна превратить её в строку «BBBB».
– вариант программы с локальной переменной }

program P_20_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  S: string;
  k: integer; { глобальная переменная }

  procedure Scan(arg: string);
  var
    k: integer; { локальная переменная }
  begin
    for k := 1 to Length(arg) do
      if arg[k] = 'A' then arg[k] := 'B';
  end;

begin { главная программа }
  for k := 1 to 3 do
  begin
    Write('Введите строку: ');
    Readln(S);
    Scan(S);
    Writeln(S);
  end;
end.
