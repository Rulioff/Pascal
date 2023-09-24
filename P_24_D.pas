{ P_24_D Строки текстовых файлов порой содержат управляющие символы,
например символ горизонтальной табуляции (код 9). Обработка этих символов
нашей программой нарушит структуру файла. Исправьте функции Encrypt и
Decrypt так, чтобы они не изменяли символы, коды которых меньше 32.}
program P_24_D;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

{––––– Зашифровка одного символа –––––}
  function EncryptChar(Symbol: char; Key: integer): char;
  var
    PosChar: integer;
  begin
    if Ord(Symbol) < 33 then
    begin
      EncryptChar := Symbol;
    end
    else
    begin
      PosChar := Ord(Symbol) + Key;
      if PosChar > 255 then PosChar := PosChar - 256 + 32;
      EncryptChar := Chr(PosChar);
    end;
  end;

  {––––– Расшифровка одного символа –––––}
  function DecryptChar(Symbol: char; Key: integer): char;
  var
    PosChar: integer;
  begin
    if Ord(Symbol) < 33 then
    begin
      DecryptChar := Symbol;
    end
    else
    begin
      PosChar := Ord(Symbol) - Key;
      if PosChar < 32 then PosChar := PosChar + 256 - 32;
      DecryptChar := Chr(PosChar);
    end;
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
