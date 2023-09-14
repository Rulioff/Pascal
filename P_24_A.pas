{ P_24_A Измените программу шифрования с тем, чтобы ключ задавать с
клавиатуры и передавать в процедуры и функции через параметр. Заголовки
процедур и функций сделайте такими:
function EncryptChar(arg: char; key: integer): char;
procedure EncryptStr(var arg: string; key: integer). }
program P_24_A;

{$mode objfpc}{$H+}
{$codepage UTF8}

const CKey = 2; { Ключ Цезаря }
{––––– Зашифровка одного символа –––––}
function Encrypt(arg: char): char;
var x: integer;
begin
x:= Ord(arg)+ CKey;
if x>255 then x:= x–256+32;
Encrypt:= Chr(x);
end;
{––––– Расшифровка одного символа –––––}
function Decrypt(arg: char): char;
var x: integer;
begin
x:= Ord(arg)– CKey;
if x<32 then x:= x+256–32;
Decrypt:= Chr(x);
end;
{––––– Зашифровка строки –––––}
procedure EncryptStr(var arg: string);
var k: integer;
begin
for k:=1 to Length(arg) do
arg[k]:= Encrypt(arg[k]);
end;
{––––– Расшифровка строки –––––}
procedure DecryptStr(var arg: string);
var k: integer;
begin
for k:=1 to Length(arg) do
arg[k]:= Decrypt(arg[k]);
end;
{––––– Главная программа –––––}
var S: string;
Oper: integer;
begin
repeat
Write('Введите строку: '); Readln(S);
Writeln('Укажите операцию: 1– шифровать,’+
’ 2– расшифровать,’+
’ Прочие – выход');
Readln(Oper);
case Oper of
1: EncryptStr(S);
2: DecryptStr(S);
else Break;
end;
Writeln(S); { печатаем результат }
until false;
end.
