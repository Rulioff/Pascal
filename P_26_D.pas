{P_26_D Создайте программу для объединения двух файлов (см. условие
предыдущей задачи). Из первого составьте нечетные строки конечного файла, а из
второго — четные.}

program P_26_D;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  TargetTextFile, OddLinesSourceFile, EvenLinesSourceFile: Text;
  AllSourceLineNumber, OddSourceLineNumber, EvenSourceLineNumber,
  CurrentLineNumber: integer;

  function GetFileLinesNumber(var TextFile: Text): integer;
  var
    LineNumber: integer;
    Line: string;

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
  Assign(TargetTextFile, 'Target_Text_26_D.txt');
  Assign(OddLinesSourceFile, 'Odd_Source_Text_26_D.txt');
  Assign(EvenLinesSourceFile, 'Even_Source_Text_26_D.txt');

  Rewrite(TargetTextFile);

  OddSourceLineNumber := GetFileLinesNumber(OddLinesSourceFile);
  EvenSourceLineNumber := GetFileLinesNumber(EvenLinesSourceFile);
  AllSourceLineNumber := OddSourceLineNumber + EvenSourceLineNumber;
  CurrentLineNumber := 1;

  while CurrentLineNumber <= AllSourceLineNumber do
  begin
    if (AllSourceLineNumber mod 2 <> 0) and (CurrentLineNumber <
      OddSourceLineNumber) then
      WriteLn(TargetTextFile, GetFileLinesByNumber(OddLinesSourceFile,
        CurrentLineNumber));
    if (AllSourceLineNumber mod 2 <> 0) and (CurrentLineNumber <=
      EvenSourceLineNumber) then
      WriteLn(TargetTextFile, GetFileLinesByNumber(EvenLinesSourceFile,
        CurrentLineNumber));
    if (AllSourceLineNumber mod 2 <> 0) and (CurrentLineNumber >=
      OddSourceLineNumber) then
      Write(TargetTextFile, GetFileLinesByNumber(OddLinesSourceFile,
        CurrentLineNumber));
    if (AllSourceLineNumber mod 2 = 0) and (CurrentLineNumber <=
      OddSourceLineNumber) then
      WriteLn(TargetTextFile, GetFileLinesByNumber(OddLinesSourceFile,
        CurrentLineNumber));
    if (AllSourceLineNumber mod 2 = 0) and (CurrentLineNumber <
      EvenSourceLineNumber) then
      WriteLn(TargetTextFile, GetFileLinesByNumber(EvenLinesSourceFile,
        CurrentLineNumber));
    if (AllSourceLineNumber mod 2 = 0) and (CurrentLineNumber >=
      EvenSourceLineNumber) then
      Write(TargetTextFile, GetFileLinesByNumber(EvenLinesSourceFile,
        CurrentLineNumber));
    Inc(CurrentLineNumber);
  end;

  Close(EvenLinesSourceFile);
  Close(OddLinesSourceFile);
  Close(TargetTextFile);

  ReadLn;
end.
