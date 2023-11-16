{P_27_G Программа будет моделировать поведение микропроцессора. Входной
файл содержит последовательность нулей и единиц (по одному символу в строке).
Первый символ примите как исходное значение сигнала, а дальше сигнал на
выходе программы формируется так: если три подряд идущие значения совпадают,
то берется это новое значение, а иначе сохраняется текущее.}

program P_27_G;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  InputFile, OutputFile: Text;
  PreviousLine, Line, OutputLine: string;
  CheckTrigger: integer;

begin
  Assign(InputFile, 'Input_27_G.txt');
  Reset(InputFile);
  Assign(OutputFile, 'Output_27_G.txt');
  Rewrite(OutputFile);
  CheckTrigger := 0;
  ReadLn(InputFile, Line);
  PreviousLine := Line;
  OutputLine := Line;
  WriteLn(OutputFile, Line, ' ', OutputLine);

  while not EOF(InputFile) do
  begin
    ReadLn(InputFile, Line);
    if line = PreviousLine then
      CheckTrigger := 0
    else
      Inc(CheckTrigger);
    if (CheckTrigger = 3) then
    begin
      OutputLine := Line;
      PreviousLine := Line;
      CheckTrigger := 0;
    end;
    WriteLn(OutputFile, Line, ' ', OutputLine);
  end;

  Close(InputFile);
  Close(OutputFile);
  ReadLn;
end.
