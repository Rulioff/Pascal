{ P_37_B Напишите функцию, принимающую числовое множество и
возвращающую количество содержащихся в нём элементов. }

program P_37_B;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

type
  TypeCardinality = set of byte;

var
  Numbers: TypeCardinality;
  Number: integer;

  function GetCardinality(var aNumbers: TypeCardinality): integer;
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
  Numbers := [];
  WriteLn('Введите эльменты множества от 0 до 255, для выхода любое другое число.');
  while (True) do
  begin
    ReadLn(Number);
    if ((Number >= 0) and (Number <= 255)) then
      Numbers := Numbers + [Number]
    else
      Break;
  end;
  begin
    WriteLn('Мощность множества = ', GetCardinality(Numbers));
    ReadLn;
  end;
end.
