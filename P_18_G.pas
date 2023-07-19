{ P_18_G Пусть ваша программа удалит из такой строки все
символы, кроме цифр. Например, (8)123-45-67 после ввода указанного выше номера она должна
напечатать: 8123456789. }

program P_18_G;

{$mode objfpc}{$H+}
{$codepage UTF8}
var
  Line, PhoneNumber: string;
  Index: integer;

begin
  repeat
    Write('Введите номер телефона, пожалуйста: ');
    Readln(Line);
  until Line;

  for Index := 1 to Length(Line) do
    Line := Line + Line[Index];

  Writeln('Номер сохранён: ', PhoneNumber);
  Readln;
end.
