{ P_24_V Для введенной пользователем строки напечатать позиции всех входящих в
неё символов (кроме пробелов) в алфавитном порядке. Для символов, которые
встречаются несколько раз, напечатать их позиции в одной строке. Например, для
слова «PASCAL»:
A – 2 5
C – 4
L – 6
p – 1
S – 3}
program P_24_V;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

var
  Line: string;
  Symbol: char;
  Index: integer;
  Marker: boolean;

begin
  Write('Line = ');
  Readln(Line);

  for Symbol := char(33) to char(255) do
  begin
    Marker := False;
    for Index := 1 to Length(Line) do if Symbol = Line[Index] then
      begin
        if not Marker then
          Write(Symbol, ' - ');

        Write(Index, ' ');
        Marker := True;
      end;
    if Marker then
      Writeln;
  end;
  ReadLn;
end.
