{ P_18_A Напишите программу для подсчета букв «А» во введенной пользователем
строке. }

program P_18_A;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Line: string;
  Index, CountA: integer;
begin
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  CountA := 0;
  for Index := 1 to Length(Line) do
    if (Line[Index] = 'А') or (Line[Index] = 'а') then
      Inc(CountA);
  Writeln('Строка содержит: ', CountA, ' символов A.');
  Readln;
end.
