{P_26_B Программа для нумерации строк файла. Строки исходного файла должны
копироваться в конечный файл с добавлением перед каждой строкой её номера.}

program P_26_B;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  FileTxtIn, FileTxtOut: Text;
  Line: string;
  Number: integer;

begin
  Number := 1;
  Assign(FileTxtIn, 'Example_In_26_B.txt');
  Reset(FileTxtIn);
  Assign(FileTxtOut, 'Example_Out_26_B.txt');
  Rewrite(FileTxtOut);

  while not EOF(FileTxtIn) do
  begin
    ReadLn(FileTxtIn, Line);
    WriteLn(FileTxtOut, Number);
    Inc(Number);
    WriteLn(FileTxtOut, Line);
  end;

  CloseFile(FileTxtIn);
  CloseFile(FileTxtOut);
  ReadLn;
end.
