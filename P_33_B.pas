{P_33_B Ваша процедура принимает строковую переменную, вычисляет среднее
арифметическое кодов её символов и печатает его с двумя цифрами после точки.}

program P_33_B;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Line: string;

  procedure PrintSymbolsCodesArithmeticMean(Line: string);
  var
    Index, Sum: longint;
  begin
    Sum := 0;
    for Index := 1 to Length(Line) do
      Sum := Sum + Ord(Line[Index]);
    WriteLn('Среднеарифметическое кодов символов строки = ', (Sum / Index): 1: 2);
  end;

begin
  repeat
    Write('Введите строку пожалуйста, для выхода нажмите "Ввод": ');
    ReadLn(Line);
    PrintSymbolsCodesArithmeticMean(Line);
  until Line = '';
end.
