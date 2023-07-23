{ P_19_D Пользователь вводит строку с телефонным номером (только цифры),
количество цифр заранее неизвестно. Ваша программа должна дополнить номер
дефисами, разбивающими его на триады, т.е. по три цифры двумя способами:
· начиная с первых цифр, например 112-345-1;
· начиная с последних цифр, например 1-123-451. }

program P_19_D;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line, PhoneNumber, Symbol: string;
  Index, Count: integer;

begin
  Write('Введите номер телефона, пожалуйста: ');
  Readln(Line);
  PhoneNumber := '';
  for Index := 1 to Length(Line) do
  begin
    Symbol := Line[Index];
    PhoneNumber := PhoneNumber + Symbol;
    if (Index mod 3 = 0) and (Index < Length(Line)) then
      PhoneNumber := PhoneNumber + '-';
  end;
  Writeln('Номер сохранён: ', PhoneNumber);

  PhoneNumber := '';
  Count := 1;
  for Index := Length(Line) downto 1 do
  begin
    Symbol := Line[Index];
    PhoneNumber := Symbol + PhoneNumber;
    if (Count mod 3 = 0) and (Index > 1) then
      PhoneNumber := '-' + PhoneNumber;
    Inc(Count);
  end;

  Writeln('Номер сохранён: ', PhoneNumber);
  Readln;
end.
