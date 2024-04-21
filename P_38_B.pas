{ P_38_B На острове действовали забавные законы по части транспортных средств
— автобусов, грузовиков и легковушек. Во-первых, общее количество автомобилей
на острове не должно было превышать 256. Автомобилям назначались номера с 0
до 255, при этом соблюдались следующие правила.
Номера, делившиеся без остатка на 7, назначались автобусам. Те, что
делились без остатка на 5, назначались грузовикам, а все прочие — легковушкам.
Например, номера 35 и 70 (они делятся и на 7, и на 5) доставались автобусам, а не
грузовикам.
Схожие правила применялись и к окраске автомобилей, а именно: если номер
авто делился на 4, его красили красным, если на 3 — желтым, если на 2 — белым, а
остальные автомобили красили черным.
· Сформируйте три множества по классам автомобилей – автобусы, грузовики
и легковушки. Вычислите количество машин каждого класса (Ответ: 37, 44,
175).
· Сформируйте четыре множества по цвету автомобилей – красные, желтые,
белые и черные. Определите количество машин каждого цвета (Ответ: 64,
64, 43, 85).
· Столица того государства – деревня Кокосовка – страдала от пробок. Для их
устранения ввели ограничение на въезд транспорта. Так, в один из дней
недели в столицу пускали только красные легковушки, белые грузовики и
все автобусы. Найдите номера всех этих машин. Сколько всего автомобилей
могло въехать в столицу в тот день? }
program P_38_B;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

const
  CountMax = 255;
type
  TypeSet = set of 0..CountMax;
var
  TrustCars, Buses, Truckes, Cars, Red, Yellow, Black, White: TypeSet;
  Index: byte;
  CarNumbers: string;

  procedure WriteTrustCars(const ArgumentSet: TypeSet);
  var
    Number: byte;
  begin
    for Number := 0 to 255 do
      if Number in ArgumentSet then
        Write(Number: 4);
  end;

  function GetCardinality(var aNumbers: TypeSet): integer;
  var
    Index: byte;
    Cardinality: integer;
  begin
    Cardinality := 0;
    for Index := 0 to 255 do
      if Index in aNumbers then
        Inc(Cardinality);
    Result := Cardinality;
  end;

begin
  CarNumbers := '';
  TrustCars := [];
  Buses := [];
  Truckes := [];
  Cars := [0..255];
  Red := [];
  Yellow := [];
  Black := [0..255];
  White := [];
  for Index := 0 to 255 do
  begin
    if Index mod 7 = 0 then
    begin
      Buses := Buses + [Index];
      Continue;
    end;
    if Index mod 5 = 0 then
      Truckes := Truckes + [Index];
  end;
  Cars := Cars - Buses - Truckes;
  WriteLn('Автобусов = ', GetCardinality(Buses));
  WriteLn('Грузовиков = ', GetCardinality(Truckes));
  WriteLn('Легковых автомобилей = ', GetCardinality(Cars));
  WriteLn('');

  for Index := 0 to 255 do
  begin
    if Index mod 4 = 0 then
    begin
      Red := Red + [Index];
      Continue;
    end;
    if Index mod 3 = 0 then
    begin
      Yellow := Yellow + [Index];
      Continue;
    end;
    if Index mod 2 = 0 then
      White := White + [Index];
  end;

  Black := Black - Red - Yellow - White;

  WriteLn('Красных = ', GetCardinality(Red));
  WriteLn('Жёлтых = ', GetCardinality(Yellow));
  WriteLn('Белых = ', GetCardinality(White));
  WriteLn('Чёрных = ', GetCardinality(Black));
  WriteLn('');

  TrustCars := Red * Cars + White * Truckes + Buses;
  Write('Разрешён въезд автомобилям с номерами: ');
  WriteTrustCars(TrustCars);
  WriteLn('');
  WriteLn('Всего может проехать: ', GetCardinality(TrustCars));
  ReadLn;
end.
