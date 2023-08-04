{ P_22_V – Напишите программу для проверки рассмотренной выше процедуры
Calc, подсчитывающей символ в строке. }

program P_22_V;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string;
  Symbol: char;
  Index, Result: integer; { глобальная переменная }

  procedure Calc(const LineSent: string; Symbol: char; var Res: integer);
  var
    Index: integer;
  begin
    Res := 0;
    for Index := 1 to Length(Line) do
      if Line[Index] = Symbol then
        Res := Res + 1;
  end;

begin { главная программа }
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  Write('Введите символ, который будем менять, пожалуйста: ');
  Readln(Symbol);
  Calc(Line, 'a', Result);
  Writeln('Длина строки: ', Result, ' символов.');
  ReadLn;
end.
