{ P_24_A Измените программу шифрования с тем, чтобы ключ задавать с
клавиатуры и передавать в процедуры и функции через параметр. Заголовки
процедур и функций сделайте такими:
function EncryptChar(Symbol: char; Key: integer): char;
procedure EncryptStr(var Symbol: string; Key: integer). }
program P_24_A;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

{––––– Зашифровка одного символа –––––}
  function EncryptChar(Symbol: char; Key: integer): char;
  var
    PosChar: integer;
  begin
    PosChar := Ord(Symbol) + Key;
    if PosChar > 255 then PosChar := PosChar - 256 + 32;
    EncryptChar := Chr(PosChar);
  end;

  {––––– Расшифровка одного символа –––––}
  function DecryptChar(Symbol: char; Key: integer): char;
  var
    PosChar: integer;
  begin
    PosChar := Ord(Symbol) - Key;
    if PosChar < 32 then PosChar := PosChar + 256 - 32;
    DecryptChar := Chr(PosChar);
  end;

  {––––– Зашифровка строки –––––}
  procedure EncryptStr(var Symbol: string; Key: integer);
  var
    CountSymbol: integer;
  begin
    for CountSymbol := 1 to Length(Symbol) do
      Symbol[CountSymbol] := EncryptChar(Symbol[CountSymbol], Key);
  end;

  {––––– Расшифровка строки –––––}
  procedure DecryptStr(var Symbol: string; Key: integer);
  var
    CountSymbol: integer;
  begin
    for CountSymbol := 1 to Length(Symbol) do
      Symbol[CountSymbol] := DecryptChar(Symbol[CountSymbol], Key);
  end;

  {––––– Главная программа –––––}
var
  Line: string;
  Key: integer;
  Operation: integer;
begin
  repeat
    Write('Введите ключ Цезаря от 1 до 25: ');
    Readln(Key);
    Write('Введите строку: ');
    Readln(Line);
    Writeln('Укажите операцию: 1– шифровать,' +
      ' 2– расшифровать,' + ' Прочие – выход');
    Readln(Operation);
    case Operation of
      1: EncryptStr(Line, Key);
      2: DecryptStr(Line, Key);
      else
        Break;
    end;

    Writeln(Line); { печатаем результат }
  until False;
end.
