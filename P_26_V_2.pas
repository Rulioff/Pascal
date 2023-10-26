{P_26_V_2 Скопировать один файл в другой с перестановкой строк в обратном порядке (см. условие задачи «Е» к 25-й
главе).}
program P_26_V_2;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, OutputTextFile: Text;
  SourceLineNumber, OutputLineNumber: integer;

  function GetFileLinesNumber(var TxtFile: Text): integer;

  var
    Line: string;
    LineNumber: integer;

  begin
    LineNumber := 0;
    Reset(TxtFile);
    while not EOF(TxtFile) do
    begin
      ReadLn(TxtFile, Line);
      Inc(LineNumber);
    end;
    Result := LineNumber;
  end;

  function GetFileLineByNumber(var TxtFile: Text; LastLineNumber: integer): string;

  var
    CurrentLine: string;
    Index: integer;

  begin
    Reset(TxtFile);
    for Index := 1 to LastLineNumber do
      ReadLn(TxtFile, CurrentLine);
    Result := CurrentLine;
  end;

begin
  Assign(SourceTextFile, 'Source_Text_26_V.txt');
  Assign(OutputTextFile, 'Output_Text_26_V_2.txt');

  Rewrite(OutputTextFile);
  SourceLineNumber := GetFileLinesNumber(SourceTextFile);
  for OutputLineNumber := SourceLineNumber downto 1 do
    WriteLn(OutputTextFile, GetFileLineByNumber(SourceTextFile, OutputLineNumber));

  Close(SourceTextFile);
  Close(OutputTextFile);
  ReadLn;
end.
