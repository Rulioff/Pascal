{P_17_1 – экзаменатор, выставляющий оценку.}
var
  number, numberTwo, amount : integer; { сомножители и произведение }
  count, error : integer; { счетчик вопросов и счетчик ошибок }
  score: string;
begin
  randomize;
  error := 0; { обнуляем счетчики ошибок }
  
  for count := 1 to 15 do begin { 15 вопросов }
    number := 1 + random(10);
    numberTwo := 1 + random(10);
    write(count, ' Сколько будет ', number,' * ', numberTwo, ' ? ');
    readln(amount);
    
    { Если ответ неверный, увеличиваем счетчик ошибок }
    if number * numberTwo <> amount
      then inc(error);
    end; { цикл и блок завершаются здесь}
    
    case error of { выставляем оценку }
      0 : score := 'Отлично!';
      1,2 : score := 'Хорошо';
      3..5 : score := 'Удовлетворительно';
    else score := 'Ну оччччень плохо!';
    
  end;
  
writeln(score, ' Нажмите Enter');
readln;
end.