{P_25_E Напишите процедуру для вывода на экран N-й строки файла, где N —
параметр процедуры. Воспользовавшись этой процедурой, напишите программу
для распечатки строк файла в обратном порядке. Подсказка: предварительно
посчитайте количество строк в файле.}

program P_25_E;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  FileName: Text;
  StringNumber, Index: integer;

  function CountLine(var FileTxt: Text): integer;

  var
    Line: string;
    TheStringNumber: integer;

  begin
    TheStringNumber := 0;
    Reset(FileTxt);
    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt, Line);
      Inc(TheStringNumber);
    end;
    Result := TheStringNumber;
  end;

  procedure PrintStringN(var FileTxt: Text; LastStringNumber: integer);

  var
    LastString: string;
    Index: integer;

  begin
    Reset(FileTxt);
    for Index := 1 to LastStringNumber do
      ReadLn(FileTxt, LastString);
    WriteLn(LastString);
  end;

begin
  StringNumber := 0;
  Assign(FileName, 'Example_25_E.txt');
  StringNumber := CountLine(FileName);
  for Index := StringNumber downto 1 do
    PrintStringN(FileName, Index);
  Close(FileName);
  ReadLn;
end.
