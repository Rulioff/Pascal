{P_15_G Ряд случайных булевых значений (False, True)}
{Найдите способ сформировать ряд случайных булевых значений (False, True),
напечатайте 20 из них.}

var number : integer;

begin
  randomize; // <--
  number := 0;
  repeat
    writeln(random(2) = random(2));
    number := number + 1;
  until number = 20;
end.