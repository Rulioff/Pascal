{ P_23_1 – функция для подсчета заданных символов в строке }
program P_23_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

  function CountSymbol(const LineSent: string; Symbol: char): integer;
  var
    Count, Index: integer;
  begin
    Count := 0; { обнуляем счетчик }
    for Index := 1 to Length(LineSent) do
      if LineSent[Index] = Symbol then Count := Count + 1;
    CountSymbol := Count;
    { передаем результат через имя функции }
  end;

var
  Line: string;
begin {--- главная программа ---}
  Line := 'PASCAL';
  Writeln(CountSymbol(Line, 'A'));
  Writeln(CountSymbol('BANAN', 'N') + CountSymbol('BANAN', 'B'));
  Readln;
end.
