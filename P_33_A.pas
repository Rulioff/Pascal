{P_33_A Напишите две функции, округляющие вещественное число:
· до большего значения (например: 3.1 -> 4; 3.9 -> 4);
· до меньшего значения (например: 3.1 -> 3; 3.9 -> 3).}

program P_33_A;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Number: extended;

  function RoundUp(Number: extended): extended;
  begin
    if Number < 0 then
      Result := Trunc(Number)
    else
      Result := Trunc(Number) + 1;
  end;

  function RoundDown(Number: extended): extended;
  begin
    if Number < 0 then
      Result := Trunc(Number) - 1
    else
      Result := Trunc(Number);
  end;

begin
  repeat
    Write('Введите число для округения, пожалуйста, для выхода 0: ');
    ReadLn(Number);
    if Number = 0 then Break;
    Writeln('Округление до большего: ', RoundUp(Number): 2: 0);
    Writeln('Округление до меньшего: ', RoundDown(Number): 2: 0);
  until number = 0;
  ReadLn;
end.
