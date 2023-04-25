// Программа "Метеоцентр"
var Rain, Weather : string;
begin
  Rain := 'Нет';
  Writeln('Сейчас идёт дождь?');
  Readln(Rain);
  if Rain = 'Да'
    then Weather := 'А зонта-то у тебя нет!';
  Writeln(Weather); Readln;
  end.