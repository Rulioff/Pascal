{P_15_A В каких пределах будут генерироваться числа?}
begin
  randomize; // <--
  writeln(10 + random(10));
  writeln(random(10) + random(10));
  writeln(random(5) + random(5) + random(5) + random(5));
end.