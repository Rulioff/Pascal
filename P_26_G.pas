{P_26_G Для передачи по интернету секретного текстового файла разбейте его на
два других: в первый запишите нечетные строки исходного файла, а во второй —
четные.}

program P_26_G;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceTextFile, OddLinesSourceFile, EvenLinesSourceFile: Text;
  SourceLineNumber, CurrentLineNumber: integer;

  function GetFileLinesNumber(var TextFile: Text): integer;
  var
    LineNumber: integer;
    Line: string;

  begin
    LineNumber := 1;
    Reset(TextFile);
    while not EOF(TextFile) do
    begin
      ReadLn(TextFile, Line);
      Inc(LineNumber);
    end;
    Result := LineNumber;
  end;

  function GetFileLinesByNumber(var TextFile: Text; LineNumber: integer): string;
  var
    Index: integer;
    CurrentLine: string;

  begin
    Reset(TextFile);
    for Index := 1 to LineNumber do
      ReadLn(TextFile, CurrentLine);
    Result := CurrentLine;
  end;

begin
  Assign(SourceTextFile, 'Source_Text_26_G.txt');
  Assign(OddLinesSourceFile, 'Odd_Lines_Source_File_26_G.txt');
  Assign(EvenLinesSourceFile, 'Even_Lines_SourceFile_26_G.txt');
  Rewrite(OddLinesSourceFile);
  Rewrite(EvenLinesSourceFile);
  SourceLineNumber := GetFileLinesNumber(SourceTextFile);
  CurrentLineNumber := 1;

  while CurrentLineNumber <= SourceLineNumber do
  begin
    if (CurrentLineNumber mod 2 <> 0) and (CurrentLineNumber <
      (SourceLineNumber - 2)) then
      WriteLn(OddLinesSourceFile, GetFileLinesByNumber(SourceTextFile,
        CurrentLineNumber))
    else if (CurrentLineNumber mod 2 <> 0) and (CurrentLineNumber <=
      (SourceLineNumber - 1)) then
      Write(OddLinesSourceFile, GetFileLinesByNumber(SourceTextFile,
        CurrentLineNumber))
    else if (CurrentLineNumber mod 2 = 0) and (CurrentLineNumber <
      (SourceLineNumber - 2)) then
      WriteLn(EvenLinesSourceFile, GetFileLinesByNumber(SourceTextFile,
        CurrentLineNumber))
    else
      Write(EvenLinesSourceFile, GetFileLinesByNumber(SourceTextFile,
        CurrentLineNumber));
    Inc(CurrentLineNumber);
  end;
  Close(SourceTextFile);
  Close(OddLinesSourceFile);
  Close(EvenLinesSourceFile);
  ReadLn;
end.
