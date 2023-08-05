{ P_23_1 – функция для подсчета заданных символов в строке }
program P_23_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

function Count(const str : string; ch: char): integer;
var N, i: integer;
begin
N:=0; { обнуляем счетчик }
for i:=1 to Length(str) do
if str[i]=ch then N:= N+1;
Count:= N; { передаем результат через имя функции }
end;

var S: string;
begin {--- главная программа ---}
S:='PASCAL';
Writeln( Count(S, 'A'));
Writeln( Count('BANAN', 'N') + Count('BANAN', 'B'));
Readln;
end.

