{ P_25_B Напишите программу для вывода на экран файла, имя которого задается с
клавиатуры.}
program P_25_B;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

var
  FileTxt: Text;
  FileName, Line: string;

begin
  Write('Пожалуйста, введите имя файла: ');
  ReadLn(FileName);

  Assign(FileTxt, FileName);
  Reset(FileTxt);
  while not EOF(FileTxt) do
  begin
    ReadLn(FileTxt, Line);
    WriteLn(Line);
  end;
  Close(FileTxt);
  ReadLn;
end.
