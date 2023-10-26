{P_26_V_1 Скопировать один файл в другой с перестановкой местами четных и нечетных строк.}

program P_26_V_1;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, OutputTextFile: Text;
  SourceLineNumber, RearrangingLine, NewLineNumber: integer;

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
  SourceLineNumber := 0;
  Assign(SourceTextFile, 'Source_Text_26_V.txt');
  Assign(OutputTextFile, 'Output_Text_26_V_1.txt');
  Rewrite(OutputTextFile);
  SourceLineNumber := GetFileLinesNumber(SourceTextFile);
  RearrangingLine := 0;
  NewLineNumber := 1;
  repeat
    if RearrangingLine mod 2 = 0 then
      NewLineNumber := (RearrangingLine - 1)
    else
      NewLineNumber := (RearrangingLine + 1);
    WriteLn(OutputTextFile, GetFileLineByNumber(SourceTextFile, NewLineNumber));
    Inc(RearrangingLine);
  until RearrangingLine > SourceLineNumber;

  Close(SourceTextFile);
  Close(OutputTextFile);
  ReadLn;
end.
