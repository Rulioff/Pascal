{ P_30_A Функция Trunc выделяет целую часть вещественного числа, например:
Writeln (Trunc( 12.345 )); { 12 }
Исследуйте её и придумайте способ выделения дробной части вещественного
числа. Напишите подходящую функцию и программу для её проверки. }

program P_30_A;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  Number: real;

  function GetNumberFractionalPart(Number: real): real;
  begin
    Result := Number - Trunc(Number);
  end;

begin
  Number := 0;
  repeat
    Write('Введите вещественное число, чтобы получить дробную часть, для выхода 0: ');
    ReadLn(Number);
    if Number = 0 then Break;
    WriteLn('дробная часть числа = ', GetNumberFractionalPart(Number): 10: 6);
  until Number = 0;
  ReadLn;
end.
