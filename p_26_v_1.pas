{P_26_V_1 Скопировать один файл в другой с перестановкой местами четных и нечетных строк.}

program P_26_V_1;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, OutputTextFile: Text;
  LineNumber, RearrangingLine, NewLineNumber: integer;

  function GetFileLinesNumber(var SourceTxtFile: Text): integer;

  var
    Line: string;
    LineNumberSource: integer;

  begin
    LineNumberSource := 0;
    Reset(SourceTxtFile);
    while not EOF(SourceTxtFile) do
    begin
      ReadLn(SourceTxtFile, Line);
      Inc(LineNumberSource);
    end;
    Result := LineNumberSource;
  end;

  function GetFileLineByNumber(var SourceTxtFile: Text; LastLineTxt: integer): string;

  var
    CurrentLine: string;
    Index: integer;

  begin
    Reset(SourceTxtFile);
    for Index := 1 to LastLineTxt do
      ReadLn(SourceTxtFile, CurrentLine);
    Result := CurrentLine;
  end;

begin
  LineNumber := 0;
  Assign(SourceTextFile, 'Source_Text_26_V.txt');
  Assign(OutputTextFile, 'Output_Text_26_V_2.txt');
  Rewrite(OutputTextFile);
  LineNumber := GetFileLinesNumber(SourceTextFile);
  RearrangingLine := 0;
  NewLineNumber := 1;
  repeat
    if RearrangingLine mod 2 = 0 then
      NewLineNumber := (RearrangingLine - 1)
    else
      NewLineNumber := (RearrangingLine + 1);
    WriteLn(OutputTextFile, GetFileLineByNumber(SourceTextFile, NewLineNumber));
    Inc(RearrangingLine);
  until RearrangingLine > LineNumber;

  Close(SourceTextFile);
  Close(OutputTextFile);
  ReadLn;
end.
