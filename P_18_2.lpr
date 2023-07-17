{ P_18_2 Задача из теории. Распечатка отдельных символов строки, краткий вариант }
program P_18_2;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Line: string;
  Index : integer;
begin
  repeat
Write('Введите строку: '); Readln(Line);
for Index := 1 to Length(Line) do Writeln(Line[Index]);
until Length(Line)=0;
end.

