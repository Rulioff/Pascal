{ P_18_V Что делают со строкой S следующие операторы?
for i:=1 to Length(S) do S:= S + S[i];
for i:=Length(S) downto 1 do S:= S + S[i]; }

program P_18_V;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Line: string;
  Index: integer;

begin
  Write('Введите строку, пожалуйста: ');
  Readln(Line);

  // Для второго варианта решения используйте 20 строку вместо 18-й.
  //  for Index := 1 to Length(Line) do

  for Index := Length(Line) downto 1 do
    Line := Line + Line[Index];

  Writeln('Преобразованная строка: ', Line);
  Readln;
end.
