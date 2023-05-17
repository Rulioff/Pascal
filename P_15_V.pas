{P_15_V А если в начало предыдущей программы вставить Randomize?}
var x : integer;
begin
  randomize; // <--
  repeat
  x := Random(20);
  writeln(x);
until x=1;
end.