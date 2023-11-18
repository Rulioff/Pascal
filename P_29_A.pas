{ P_29_A – Напишите программу для преобразования второго варианта базы данных
«Police.txt» (с несколькими числами в строке) в первый вариант (по одному числу
в строке). }

program P_29_A;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  InputFile, OutputFile: Text;
  Line: string;
  CarNumbers: array of string;
  Index: integer;

begin
  Assign(InputFile, 'InputPoliceDB_29_A.txt');
  Assign(OutputFile, 'OutputPoliceDB_29_A.txt');
  Reset(InputFile);
  Rewrite(OutputFile);

  while not EOF(InputFile) do
  begin
    ReadLn(InputFile, Line);
    CarNumbers := Line.Split(' ');

    for Index := 0 to High(CarNumbers) do
      WriteLn(OutputFile, CarNumbers[Index]);
  end;
  Close(InputFile);
  Close(OutputFile);
  ReadLn;
end.
