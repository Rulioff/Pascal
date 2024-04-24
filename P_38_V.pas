{ P_38_V Полицейская база островного государства содержала номера угнанных
автомобилей — числа от 1 до 255. Это был текстовый файл такого, например, вида:
120 31 16 25
То есть, номера перечислялись через пробел и следовали в произвольном
порядке, что неудобно при поиске вручную. Ваша программа должна создать файл
с номерами, упорядоченными по возрастанию. Подсказка: примените множество
чисел. }
program P_38_V;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

const
  CountMax = 255;
type
  TypeSet = set of 1..CountMax;

  procedure ReadSet(var ArgumentFile: Text; var ArgumentStolenCars: TypeSet);
  var
    Index: integer;
  begin
    while not Eoln(ArgumentFile) do
    begin
      Read(ArgumentFile, Index);
      ArgumentStolenCars := ArgumentStolenCars + [Index];
    end;
  end;

  procedure WriteSet(var ArgumentFile: Text; const ArgumentStolenCars: TypeSet);
  var
    Index: integer;
  begin
    for Index := 1 to 255 do
      if Index in ArgumentStolenCars then
        Write(ArgumentFile, Index, ' ');
  end;

var
  StolenCars: TypeSet;
  FileIn, FileOut: Text;

begin
  Assign(FileIn, 'P_38_V.in');
  Reset(FileIn);

  Assign(FileOut, 'P_38_V.out');
  Rewrite(FileOut);
  StolenCars := [];
  ReadSet(FileIn, StolenCars);

  WriteSet(FileOut, StolenCars);
  Close(FileIn);
  Close(FileOut);
end.
