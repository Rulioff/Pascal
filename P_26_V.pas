{Скопировать один файл в другой:
· с перестановкой местами четных и нечетных строк;
· с перестановкой строк в обратном порядке (см. условие задачи «Е» к 25-й
главе).
Для первого решения программа готова к использованию, а для второго нужно
раскоментировать 54 стр. и закоментировать строки: 56, 58 - 64, 66 - 67,
а также в 16 стр. удалить переменную "Count".}
program P_26_V;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  FileTxtFirst, FileTxtAnother: Text;
  StringNumber, Count, CountOut: integer;

  function CountLine(var FileTxt: Text): integer;

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

  function LastString(var FileTxtOne: Text; LastStringNumber: integer): string;

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
  Assign(FileTxtFirst, 'Example_First_26_V.txt');
  Assign(FileTxtAnother, 'Example_Another_26_V.txt');

  Rewrite(FileTxtAnother);
  StringNumber := CountLine(FileTxtFirst);
  //  for CountOut := StringNumber downto 1 do
  Count := 0;
  CountOut := 1;
  while Count < StringNumber + 1 do
  begin
    if Count mod 2 = 0 then
      CountOut := (Count - 1)
    else
    if Count mod 2 <> 0 then
      CountOut := (Count + 1);
    WriteLn(FileTxtAnother, LastString(FileTxtFirst, CountOut));
    Inc(Count);
  end;

  Close(FileTxtFirst);
  Close(FileTxtAnother);
  ReadLn;
end.
