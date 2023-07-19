{ P_18_B Напишите программу, меняющую символы «А» строки на символы «Б».
Подсказка: изменение символа строки делается оператором присваивания вида
S[i]:=… }

program P_18_B;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Line: string;
  Index: integer;
begin
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  for Index := 1 to Length(Line) do
    if (Line[Index] = 'А') then
      Line[Index] := 'Б';

  Writeln('Заменили: ', Line);
  Readln;
end.
