{ P_24_G Для введенной пользователем строки напечатать позиции всех
встречающихся в ней символов, кроме пробелов, в порядке их следования в строке.
Например, для слова «PASCAL»:
P – 1
A – 2 5
S – 3
C – 4
L – 6}
program P_24_G;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

var
  Line: string;
  Symbol: char;
  FullIndex, PartialIndex: integer;

begin
  Write('Line = ');
  Readln(Line);

  for FullIndex := 1 to Length(Line) do
  begin
    Symbol := Line[FullIndex];

    //Исключаем пробел
    if Symbol <> char(32) then
    begin
      Write(Symbol, ' - ');

      for PartialIndex := FullIndex to Length(Line) do
        if Symbol = Line[PartialIndex] then
        begin
          Write(PartialIndex, ' ');

          //Заменяем символ на пробелs
          Line[PartialIndex] := char(32);
        end;
      Writeln;
    end;
  end;
  ReadLn;
end.
