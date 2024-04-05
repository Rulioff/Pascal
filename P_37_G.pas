{ P_37_G Напишите две функции, принимающие строку и возвращающие:
· строку, в которой символы исходной строки встречаются лишь по разу и
следуют в алфавитном порядке, например «PASCAL» => «ACLPS»;
· то же, но порядок следования символов такой же, как в исходной строке,
например «PASCAL» => «PASCL». }

program P_37_G;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

  function GetNoDuplicateCharactersByAlphabet(ArgumentLine: string): string;
  var
    NewLine: string;
    Index: byte;
    SymbolSet: set of char;
    Symbol: char;
  begin
    SymbolSet := [];
    NewLine := '';
    for Index := 1 to Length(ArgumentLine) do
      SymbolSet := SymbolSet + [ArgumentLine[Index]];
    for Symbol := 'a' to 'z' do
      if Symbol in SymbolSet then
      begin
        NewLine := NewLine + Symbol;
        SymbolSet := SymbolSet - [Symbol];
      end;
    Result := NewLine;
  end;

  function GetNoDuplicateCharacters(ArgumentLine: string): string;
  var
    NewLine: string;
    Index: integer;
    SymbolSet: set of char;
  begin
    SymbolSet := [];
    NewLine := '';
    for Index := 1 to Length(ArgumentLine) do
      SymbolSet := SymbolSet + [ArgumentLine[Index]];
    for Index := 1 to Length(ArgumentLine) do
      if ArgumentLine[Index] in SymbolSet then
      begin
        NewLine := NewLine + ArgumentLine[Index];
        SymbolSet := SymbolSet - [ArgumentLine[Index]];
      end;
    Result := NewLine;
  end;

var
  Line: string;

begin
  Writeln('Введите строку пожалуйста');
  Readln(Line);
  WriteLn('Строка без повтора символов в алфавитном порядке');
  WriteLn(GetNoDuplicateCharactersByAlphabet(Line));

  WriteLn('Строка без повтора символов');
  WriteLn(GetNoDuplicateCharacters(Line));
  ReadLn;
end.
