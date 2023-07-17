{ P_18_1 Распечатка отдельных символов строки.}
program P_18_1;

{$CODEPAGE CP866}
var
  Line: string;
  Symbol: char;
  Index, SymbolsCount: integer;
begin
  repeat
    Write('Введите строку, пожалуйста: ');
    Readln(Line);
    SymbolsCount := Length(Line); { определяем длину строки }
    for Index := 1 to SymbolsCount do
    begin
      Symbol := Line[Index]; { выбираем очередной символ }
      Writeln(Symbol); { и печатаем его в отдельной строке }
    end;
  until SymbolsCount = 0; { SymbolsCount=0, если строка пуста }
  Writeln('Для выхода нажмите Enter, пожалуйста.');
  Readln();
end.
