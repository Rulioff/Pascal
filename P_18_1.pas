{ P_18_1 Распечатка отдельных символов строки.}
var S: string;
symbol: char;
k, L : integer;
begin
repeat
Write('Введите строку: '); Readln(S);
L:= Length(S); { определяем длину строки }
for k:=1 to L do begin
symbol:= S[k]; { выбираем очередной символ }
Writeln(symbol); { и печатаем его в отдельной строке }
end;
until L=0; { L=0, если строка пуста }
end.
