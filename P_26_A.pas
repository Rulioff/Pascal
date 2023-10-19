{Программа создает файл, печатает в него несколько строк с числами, а
затем выводит этот файл на экран. Воспользуйтесь одной файловой переменной.}

program P_26_A;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  FileTxt: Text;
  Number: integer;
  Line: string;

begin
  Assign(FileTxt, 'Example_26_A.txt');
  Rewrite(FileTxt);
  for Number := 1 to 21 do
    WriteLN(FileTxt, Number);
  Close(FileTxt);

  Assign(FileTxt, 'Example_26_A.txt');
  Reset(FileTxt);
  while not EOF(FileTxt) do
  begin
    ReadLn(FileTxt, Line);
    WriteLn(Line);
  end;
  Close(FileTxt);
  ReadLn;
end.
