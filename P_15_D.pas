{P_15_D Сгенерируйте случайные числа так, чтобы они не совпадали.}
var a, b, c : integer;
begin
  randomize;
  repeat
    a := 1 + random(10);
    b := 1 + random(10);
    c := 1 + random(10);
    if (a <> b) and (a <> c) and (b <> c) //Проверяем, что числа не совпадают.
      then
    writeln('a = ', (a));
    writeln('b = ', (b));
    writeln('c = ', (c));
  until false; //Бесконечный цикл.
end.