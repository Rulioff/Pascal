{P_26_V_2 Скопировать один файл в другой:
· с перестановкой строк в обратном порядке (см. условие задачи «Е» к 25-й
главе).}
program P_26_V_2;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  FileTxtFirst, FileTxtAnother: Text;
  StringNumber, RearrangingLine, SendStringNumber: integer;

  function GetFileLinesNumber(var FileTxt: Text): integer;

  var
    Line: string;
    FirstStringNumber: integer;

  begin
    FirstStringNumber := 0;
    Reset(FileTxt);
    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt, Line);
      Inc(FirstStringNumber);
    end;
    Result := FirstStringNumber;
  end;

  function GetFileLineByNumber(var FileTxtOne: Text; LastStringNumber: integer): string;

  var
    LastLine: string;
    Index: integer;

  begin
    Reset(FileTxtOne);
    for Index := 1 to LastStringNumber do
      ReadLn(FileTxtOne, LastLine);
    Result := LastLine;
  end;

begin
  StringNumber := 0;
  Assign(FileTxtFirst, 'Example_First_26_V_2.txt');
  Assign(FileTxtAnother, 'Example_Another_26_V_2.txt');
  Rewrite(FileTxtAnother);
  StringNumber := GetFileLinesNumber(FileTxtFirst);
  RearrangingLine := 0;
  SendStringNumber := 1;
  repeat
    if RearrangingLine mod 2 = 0 then
      SendStringNumber := (RearrangingLine - 1)
    else
      SendStringNumber := (RearrangingLine + 1);
    WriteLn(FileTxtAnother, GetFileLineByNumber(FileTxtFirst, SendStringNumber));
    Inc(RearrangingLine);
  until RearrangingLine > StringNumber;

  Close(FileTxtFirst);
  Close(FileTxtAnother);
  ReadLn;
end.
