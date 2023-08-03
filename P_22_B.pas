{ P_22_B – Измените программу P_20_1 так, чтобы заменяемый и замещаемый
символы передавались в процедуру Scan через параметры. }

program P_22_B;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string;
  SymbolOne, SymbolTwo: char;
  Index: integer; { глобальная переменная }

  procedure Scan(var LineSent: string; var SymbolOne, SymbolTwo: char);
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
    Write('Введите символ, который будем менять, пожалуйста: ');
    Readln(SymbolOne);
    Write('Введите символ, на который будем менять, пожалуйста: ');
    Readln(SymbolTwo);
    Scan(Line, SymbolOne, SymbolTwo);
    Writeln(Line);
    ReadLn;
  end;
end.
