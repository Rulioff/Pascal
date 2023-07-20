{ P_18_D Пусть ваша программа напечатает введенную пользователем строку
вразрядку, добавляя пробел после каждого символа, например:
'Pascal' > 'P a s c a l'. }

program P_18_D;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line, NewLine, Symbol: string;
  Index: integer;

begin
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  NewLine := '';

  for Index := 1 to Length(Line) do
  begin
    Symbol := Line[Index];
    if Symbol <> '' then
      NewLine := NewLine + Symbol + ' ';
  end;

  Writeln('Преобразованная строка: ', NewLine);
  Readln;
end.
