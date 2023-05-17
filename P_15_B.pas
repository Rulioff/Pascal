{P_15_B Сколько чисел будет напечатано следующей программой?}
var x : integer;
begin
  repeat
  x := Random(20);
  writeln(x);
until x=1;
end.