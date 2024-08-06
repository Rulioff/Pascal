{ P_40_A Напишите программу для подсчета различных цифр в файле полицейской
базы данных (считать надо именно цифры, а не числа!). }

program P_40_A;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  NumbersCarsFile: Text;
  CarsNumbersUnicalDigitsCount: array ['0'..'9'] of integer;
  Symbol: char;

begin
  for Symbol := '0' to '9' do
    CarsNumbersUnicalDigitsCount[Symbol] := 0;
  Assign(NumbersCarsFile, 'InputPoliceDB_40_A.in');
  Reset(NumbersCarsFile);
  while not EOF(NumbersCarsFile) do
  begin
    Read(NumbersCarsFile, Symbol);
    if Symbol in ['0'..'9'] then
      Inc(CarsNumbersUnicalDigitsCount[Symbol]);
  end;
  Close(NumbersCarsFile);
  WriteLn('В файле базы номеров машин содержится: ');
  for Symbol := '0' to '9' do
    WriteLn(Symbol, CarsNumbersUnicalDigitsCount[Symbol]: 4, ' шт.');
  ReadLn;
end.
