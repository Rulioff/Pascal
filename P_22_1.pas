{ P_22_1 – процедура обмена и программа её проверки }

program P_22_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

  // процедура обмена
  procedure Swap(var First, Second: integer);
  var
    Buffer: integer;

  begin
    Buffer := First;
    First := Second;
    Second := Buffer;
  end;

var
  NumberOne, NumberTwo: integer;

  //--- главная программа ---
begin
  NumberOne := 10;
  NumberTwo := 20;
  Writeln('A= ', NumberOne, ' B= ', NumberTwo);
  Swap(NumberOne, NumberTwo);
  Writeln('A= ', NumberOne, ' B= ', NumberTwo);
  Readln;
end.
