{ P_18_1 Распечатка отдельных символов строки.}
program P_18_1;

{$CODEPAGE CP866}
var
  line: string;
  symbol: char;
  index, symbolsCount: integer;
begin
  repeat
    Write('Введите строку, пожалуйста: ');
    Readln(line);
    symbolsCount := Length(line); { определяем длину строки }
    for index := 1 to symbolsCount do
    begin
      symbol := line[index]; { выбираем очередной символ }
      Writeln(symbol); { и печатаем его в отдельной строке }
    end;
  until symbolsCount = 0; { symbolsCount=0, если строка пуста }
end.
