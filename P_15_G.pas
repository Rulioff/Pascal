{P_15_G Ряд случайных булевых значений (False, True)}
var i : integer;
begin
  randomize; // <--
  i := 0;
  repeat
    writeln(random(2) = random(2));
    i := i + 1;
  until i = 20;
end.