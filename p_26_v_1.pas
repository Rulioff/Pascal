{P_26_V_1 Скопировать один файл в другой с перестановкой местами четных и нечетных строк.}

program P_26_V_1;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, OutputTextFile: Text;
  LineNumber, NewLineNumber: integer;

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
  Assign(SourceTextFile, 'Source_Text_26_V.txt');
  Assign(OutputTextFile, 'Output_Text_26_V_1.txt');

  Rewrite(OutputTextFile);
  LineNumber := GetFileLinesNumber(SourceTextFile);
  for NewLineNumber := LineNumber downto 1 do
    WriteLn(OutputTextFile, GetFileLineByNumber(SourceTextFile, NewLineNumber));

  Close(SourceTextFile);
  Close(OutputTextFile);
  ReadLn;
end.
