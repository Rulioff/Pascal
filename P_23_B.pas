{ P_23_B Напишите функцию для определения позиции буквы в заданной строке.
Функция должна вернуть позицию первой такой буквы или ноль, если буквы в
строке нет. Напишите программу для проверки функции }
program P_23_B;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string; { глобальная переменная }

  function PosSymbol(Position: string): integer;
  var
    Index: integer; { локальная переменная }
  begin
    Result := 0;
    for Index := 1 to Length(Position) do
      if Position[Index] = 'A' then
      begin
        Result := Index;
        Break;
      end;
  end;

begin
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  PosSymbol(Line);
  Writeln('Символ - A находится на: ', PosSymbol(Line),
    ' позиции в строке.');
  ReadLn;
end.
