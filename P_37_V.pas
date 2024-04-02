{ P_37_V На основе первого варианта директорской программы придумайте способ
поиска учеников, записавшихся более чем в один кружок. }
program P_37_V;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

const
  CMax = 20; { мощность множества, реально 250 }
type
  TSet = set of 1..CMax; { объявление типа «множество» }

  {---— Процедура чтения множества из файла взята из P_37_2 —---}
  procedure ReadSet(var aFile: Text; var aSet: TSet);
  var
    k: integer;
  begin
    while not Eoln(aFile) do
    begin { пока не конец строки }
      Read(aFile, K); { читаем очередное число }
      aSet := aSet + [K]; { и добавляем к множеству }
    end;
    Readln(aFile); { переход на следующую строку }
  end;

  {---— Процедура распечатки множества в файл взята из P_37_2 —---}
  procedure WriteSet(var aFile: Text; const aSet: TSet);
  var
    k: integer;
  begin
    for k := 1 to 255 do { цикл по всем элементам множества}
      if k in aSet { если входит в множество } then
        Write(aFile, k: 4); { печатаем в строке }
    Writeln(aFile);
    { по окончании переход на следующую строку }
  end;

var
  R, S1, S2, S3: TSet;
  FileIn, FileOut: Text;
begin {---— Главная программа —---}
  { Открытие входного файла }
  Assign(FileIn, 'P_37_V.in');
  Reset(FileIn);
  { Создание выходного файла }
  Assign(FileOut, 'P_37_V.out');
  Rewrite(FileOut);
  { Ввод множеств из входного файла }
  S1 := [];
  ReadSet(FileIn, S1);
  S2 := [];
  ReadSet(FileIn, S2);
  S3 := [];
  ReadSet(FileIn, S3);
  R := (S1 * S2) + (S1 * S3) + (S2 * S3); { Решение }
  WriteSet(FileOut, R); { Вывод решения в выходной файл }
  Close(FileIn);
  Close(FileOut);
end.
