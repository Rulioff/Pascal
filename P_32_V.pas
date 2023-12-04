{P_32_V Процедура печати Writeln не способна распечатать название месяца,
представленного в перечислении. Напишите для этого свою собственную
процедуру (объявите тип TMonth и воспользуйтесь оператором CASE).}

program P_32_V;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

type
  TMonth = (January, February, March, April, May, June, July, August,
    September, October, November, December);

  procedure WriteMonth(Month: TMonth);
  begin
    case Month of
      January: WriteLn('January');
      February: WriteLn('February');
      March: WriteLn('March');
      April: WriteLn('April');
      May: WriteLn('May');
      June: WriteLn('June');
      July: WriteLn('July');
      August: WriteLn('August');
      September: WriteLn('September');
      October: WriteLn('October');
      November: WriteLn('November');
      December: WriteLn('December')
      else //No else
    end;
  end;

var
  Month: TMonth;

begin
  Month := January;
  repeat
    WriteMonth(Month);
    Inc(Month);
  until Ord(Month) = 12;
  ReadLn;
end.
