{P_26_V_2 Скопировать один файл в другой с перестановкой строк в обратном порядке (см. условие задачи «Е» к 25-й
главе).}
program P_26_V_2;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, TargetTextFile: Text;
  SourceLineNumber, TargetLineNumber: integer;

  function GetFileLinesNumber(var TextFile: Text): integer;
  var
    Line: string;
    LineNumber: integer;

  begin
    LineNumber := 0;
    Reset(TextFile);
    while not EOF(TextFile) do
    begin
      ReadLn(TextFile, Line);
      Inc(LineNumber);
    end;
    Result := LineNumber;
  end;

  function GetFileLineByNumber(var TextFile: Text; LineNumber: integer): string;
  var
    CurrentLine: string;
    Index: integer;

  begin
    Reset(TextFile);
    for Index := 1 to LineNumber do
      ReadLn(TextFile, CurrentLine);
    Result := CurrentLine;
  end;

begin
  Assign(SourceTextFile, 'Source_Text_26_V.txt');
  Assign(TargetTextFile, 'Target_Text_26_V_2.txt');
  Rewrite(TargetTextFile);
  SourceLineNumber := GetFileLinesNumber(SourceTextFile);
  for TargetLineNumber := SourceLineNumber downto 1 do
  begin
    if TargetLineNumber = 1 then
      Write(TargetTextFile, GetFileLineByNumber(SourceTextFile, TargetLineNumber))
    else
      WriteLn(TargetTextFile, GetFileLineByNumber(SourceTextFile, TargetLineNumber));
  end;
  Close(SourceTextFile);
  Close(TargetTextFile);
  ReadLn;
end.
