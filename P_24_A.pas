{ P_24_A Измените программу шифрования с тем, чтобы ключ задавать с
клавиатуры и передавать в процедуры и функции через параметр. Заголовки
процедур и функций сделайте такими:
function EncryptChar(Symbol: char; key: integer): char;
procedure EncryptStr(var Symbol: string; key: integer). }
program P_24_A;

{$mode objfpc}{$H+}
{$codepage UTF8}

const
  CKey = 2;
  { Ключ Цезаря }
  {––––– Зашифровка одного символа –––––}
  function Encrypt(Symbol: char): char;
  var
    PosChar: integer;
  begin
    PosChar := Ord(Symbol) + CKey;
    if PosChar > 255 then PosChar := PosChar - 256 + 32;
    Encrypt := Chr(PosChar);
  end;

  {––––– Расшифровка одного символа –––––}
  function Decrypt(Symbol: char): char;
  var
    PosChar: integer;
  begin
    PosChar := Ord(Symbol) - CKey;
    if PosChar < 32 then PosChar := PosChar + 256 - 32;
    Decrypt := Chr(PosChar);
  end;

  {––––– Зашифровка строки –––––}
  procedure EncryptStr(var Symbol: string);
  var
    CountSymbol: integer;
  begin
    for CountSymbol := 1 to Length(Symbol) do
      Symbol[CountSymbol] := Encrypt(Symbol[CountSymbol]);
  end;

  {––––– Расшифровка строки –––––}
  procedure DecryptStr(var Symbol: string);
  var
    CountSymbol: integer;
  begin
    for CountSymbol := 1 to Length(Symbol) do
      Symbol[CountSymbol] := Decrypt(Symbol[CountSymbol]);
  end;

  {––––– Главная программа –––––}
var
  Line: string;
  Operation: integer;
begin
  repeat
    Write('Введите строку: ');
    Readln(Line);
    Writeln('Укажите операцию: 1– шифровать,' +
      ' 2– расшифровать,' + ' Прочие – выход');
    Readln(Operation);
    case Operation of
      1: EncryptStr(Line);
      2: DecryptStr(Line);
      else
        Break;
    end;
    Writeln(Line); { печатаем результат }
  until False;
end.
