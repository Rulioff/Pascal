{ P_23_A Напишите функцию для поиска буквы в заданной строке. Она должна
возвращать TRUE, если в строке есть хоть одна эта буква, и FALSE в противном
случае. Напишите программу для проверки функции. }
program P_23_A;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Line: string; { глобальная переменная }

  function FindSymbol(SearchEngine: string): boolean;
  var
    Index: integer; { локальная переменная }
  begin
    for Index := 1 to Length(SearchEngine) do
      if SearchEngine[Index] = 'A' then
        Result := True;
  end;

begin
  Write('Введите строку, пожалуйста: ');
  Readln(Line);
  FindSymbol(Line);
  Writeln('В строке присутствует символ - A: ',
    FindSymbol(Line), '.');
  ReadLn;
end.
