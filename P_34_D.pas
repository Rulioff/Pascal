{ P_34_D Напишите функцию для ввода целого числа. Она принимает строку-
приглашение и возвращает введенное число, например:
X:= GetNumber(‘Введите стоимость покупки=’);}
program P_34_D;

{$mode objfpc} {$H+} {$codepage UTF8}

  function GetNumber(Line: string): integer;
  var
    IntegerNumber: integer;
  begin
    WriteLn(Line);
    ReadLn(IntegerNumber);
    Result := IntegerNumber;
  end;

begin
  Write('Введите стоимость покупки, пожалуйста: ',
    GetNumber(' потратили '), ' руб.', GetNumber(' и '), ' коп.');
  ReadLn;
end.
