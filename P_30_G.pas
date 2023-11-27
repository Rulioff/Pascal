{ P_30_G Сканирование марсианской поверхности дало файл, содержащий высоту
отдельных его точек вдоль одного из направлений, — пусть это будет файл
«Numbers_P_30_G.txt» из предыдущей задачи. Найдите точки, где вероятней всего
обнаружить марсианскую воду. На следующем ниже рисунке они обозначены
буквами W. Программа должна напечатать две колонки: порядковый номер точки
относительно начала файла (счет от нуля) и высоту точки (такие точки математики
называют локальными минимумами). }

program P_30_G;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Numbers: Text;
  PrevNumber, TestNumber, Number, Index: integer;

begin
  Assign(Numbers, 'Numbers_P_30_G.txt');
  Reset(Numbers);
  if not SeekEOLn(Numbers) then
    Read(Numbers, PrevNumber);
  if not SeekEOLn(Numbers) then
    Read(Numbers, TestNumber);
  Index := 1;

  while not Eoln(Numbers) do
  begin
    Read(Numbers, Number);
    Inc(Index);
    if (Number > TestNumber) and (TestNumber < PrevNumber) then
      WriteLn('№ ',
        Index, ' высота точки = ',
        TestNumber, '.');
    PrevNumber := TestNumber;
    TestNumber := Number;
  end;

  Close(Numbers);
  ReadLn;
end.
