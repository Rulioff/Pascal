{ P_37_A Напишите процедуры для ввода и вывода множества символов. Можно ли
здесь для счетчика цикла применить символьную переменную? }

program P_37_A;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

type
  TypeSet = set of 'a'..'z';

  procedure ReadSet(var ArgumentFile: Text; var ArgumentSet: TypeSet);
  var
    Symbol: char;

  begin
    while not EOLn(ArgumentFile) do
    begin
      Read(ArgumentFile, Symbol);
      ArgumentSet := ArgumentSet + [Symbol];
    end;
  end;

  procedure WriteSet(var ArgumentFile: Text; const ArgumentSet: TypeSet);
  var
    Symbol: char;
  begin
    for Symbol := 'a' to 'z' do
      if Symbol in ArgumentSet then
        Write(ArgumentFile, Symbol: 4);
  end;

var
  SymbolSet: TypeSet;
  TextFile: Text;
  Symbol: char;

begin
  SymbolSet := ['a'..'z'];

  for Symbol := 'a' to 'z' do
    if Symbol in SymbolSet then
      Write(Symbol: 4);

  WriteLn;

  Assign(TextFile, 'TextFile.txt');
  Rewrite(TextFile);
  WriteSet(TextFile, SymbolSet);
  Close(TextFile);

  SymbolSet := [];

  Assign(TextFile, 'TextFile.txt');
  Reset(TextFile);
  ReadSet(TextFile, SymbolSet);
  Close(TextFile);

  for Symbol := 'a' to 'z' do
    if Symbol in SymbolSet then
      Write(Symbol: 4);

  ReadLn;
end.
