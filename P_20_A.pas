{P_20_A В 17-й главе нами создан экзаменатор, проверяющий знания таблицы
умножения. Переработайте программу P_17_1 так, чтобы оценка выставлялась в
процедуре, принимающей один параметр — количество допущенных ошибок.}

program P_20_A;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Number, NumberTwo, Amount: integer;
  { сомножители и произведение }
  Count, Error: integer;
  { счетчик вопросов и счетчик ошибок }
  Score: string;

  procedure Rating(Error: integer);
  begin
    case Error of { выставляем оценку }
      0: Score := 'Отлично!';
      1, 2: Score := 'Хорошо';
      3..5: Score := 'Удовлетворительно';
      else
        Score := 'Ну оччччень плохо!';
    end;
  end;

begin
  randomize;
  Error := 0; { обнуляем счетчики ошибок }

  for Count := 1 to 15 do
  begin { 15 вопросов }
    Number := 1 + random(10);
    NumberTwo := 1 + random(10);
    Write(Count, ' Сколько будет ', Number, ' * ', NumberTwo, ' ? ');
    readln(Amount);

    { Если ответ неверный, увеличиваем счетчик ошибок }
    if Number * NumberTwo <> Amount then Inc(Error);
  end; { цикл и блок завершаются здесь}

  Rating(Error);
  writeln(Score, ' Нажмите Enter');
  readln;
end.
