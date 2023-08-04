{ P_22_V – Напишите программу для проверки рассмотренной выше процедуры
Calc, подсчитывающей символ в строке. }

program P_22_V;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string; { глобальная переменная }
  Symbol: char;
  Res: integer;

  procedure Calc(const LineSent: string; var Symbol: char; var Res: integer);
  var
    Index: integer;
  begin
    Res := 0;
    for Index := 1 to Length(LineSent) do
      if LineSent[Index] = Symbol then
        Res := Res + 1;
  end;

begin { главная программа }
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  Write('Введите символ, чтобы узнать его количество в строке, пожалуйста: ');
  Readln(Symbol);
  Calc(Line, Symbol, Res);
  Writeln('Строка ', Line, ' содержит ', Res, ' ', Symbol);
  ReadLn;
end.
