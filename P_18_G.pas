{ P_18_G Пусть ваша программа удалит из такой строки все символы, кроме цифр.
Например, (8)123-45-67 после ввода указанного выше номера она должна
напечатать: 8123456789. }

program P_18_G;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line, PhoneNumber, Symbol: string;
  Index: integer;

begin
  Write('Введите номер телефона, пожалуйста: ');
  Readln(Line);
  PhoneNumber := '';

  for Index := 1 to Length(Line) do
  begin
    Symbol := Line[Index];
    if (Symbol = '0') or (Symbol = '1') or (Symbol = '2') or (Symbol = '3') or
      (Symbol = '4') or (Symbol = '5') or (Symbol = '5') or (Symbol = '6') or
      (Symbol = '7') or (Symbol = '8') or (Symbol = '9') then
      PhoneNumber := PhoneNumber + Symbol;
  end;

  Writeln('Номер сохранён: ', PhoneNumber);
  Readln;
end.
