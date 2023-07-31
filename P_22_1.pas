{ P_22_1 – процедура обмена и программа её проверки }

program P_22_1;

{$mode objfpc}{$H+}
{$codepage UTF8}

  // процедура обмена
  procedure SWAP(var x, y: integer);
  var
    t: integer;

  begin
    t := x;
    x := y;
    y := t;
  end;

var
  A, B: integer;

  //--- главная программа ---
begin
  A := 10;
  B := 20;
  Writeln('A= ', A, ' B= ', B);
  SWAP(A, B);
  Writeln('A= ', A, ' B= ', B);
  Readln;
end.
