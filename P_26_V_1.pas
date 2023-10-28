{P_26_V_1 Скопировать один файл в другой с перестановкой местами четных и нечетных строк.}

program P_26_V_1;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, TargetTextFile: Text;
  SourceLineNumber, CurentLineNumber: integer;

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
  Assign(TargetTextFile, 'Target_Text_26_V_1.txt');
  Rewrite(TargetTextFile);
  SourceLineNumber := GetFileLinesNumber(SourceTextFile);
  CurentLineNumber := 1;

  while CurentLineNumber <= SourceLineNumber + (SourceLineNumber mod 2) do
  begin
    if CurentLineNumber mod 2 <> 0 then
    begin
      WriteLn(TargetTextFile, GetFileLineByNumber(SourceTextFile,
        CurentLineNumber + 1));
      if CurentLineNumber = SourceLineNumber + (SourceLineNumber mod 2) - 1 then
        Write(TargetTextFile, GetFileLineByNumber(SourceTextFile, CurentLineNumber))
      else
        WriteLn(TargetTextFile, GetFileLineByNumber(SourceTextFile, CurentLineNumber));
      Inc(CurentLineNumber, 2);
    end;
  end;

  Close(SourceTextFile);
  Close(TargetTextFile);
  ReadLn;
end.
