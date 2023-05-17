{P_15_2 -Пятикратный вызов функции Random (100) после Randomize.}
begin
  randomize;
  writeln(random(100));
  writeln(random(100));
  writeln(random(100));
  writeln(random(100));
  writeln(random(100));
end.