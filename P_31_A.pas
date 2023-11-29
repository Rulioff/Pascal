{ P_31_A Напишите программу для преобразования первого варианта базы данных
«Police.txt» (которая содержит по одному числу в строке) во второй вариант (будет
содержать по три числа в строке). }

program P_31_A;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  InputFile, OutputFile: Text;
  CarNumber, Index: longint;

begin
  Assign(InputFile, 'InputPoliceDB_31_A.txt');
  Reset(InputFile);
  Assign(OutputFile, 'OutputPoliceDB_31_A.txt');
  Rewrite(OutputFile);
  Index := 0;

  while not EOF(InputFile) do
  begin
    Read(InputFile, CarNumber);
    Inc(Index);
    if Index < 3 then
      Write(OutputFile, CarNumber, ' ')
    else
    begin
      WriteLn(OutputFile, CarNumber);
      Index := 0;
    end;
  end;
  Close(OutputFile);
  Close(InputFile);
  ReadLn;
end.
