{ P_25_G Объявите две файловые переменные, свяжите их с одним и тем же файлом,
а затем откройте через обе переменные. Вызовет ли это ошибку? Объясните
результат, исходя из здравого смысла.}
program P_25_G;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

var
  FileInputOne, FileInputTwo: Text;
  LineOne, LineTwo: string;

begin
  Assign(FileInputOne, 'P_25_G.pas');
  Assign(FileInputTwo, 'P_25_G.pas');
  Reset(FileInputOne);
  Reset(FileInputTwo);
  while not EOF(FileInputOne) do
  begin
    ReadLn(FileInputOne, LineOne);
    WriteLn(LineOne);
  end;

  while not EOF(FileInputTwo) do
  begin
    ReadLn(FileInputTwo, LineTwo);
    WriteLn(LineTwo);
  end;

  Close(FileInputOne);
  Close(FileInputTwo);
  WriteLn('Ошибки нет, так как файл можно считывать одним приложением ∞ число раз.');
  ReadLn;
end.
