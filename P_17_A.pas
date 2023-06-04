{P_17_A Отказ от сдачи экзамена.}
{Позвольте ученику отказаться от сдачи экзамена. Признаком отказа будет
ввод нуля в качестве ответа. В этом случае надо досрочно выйти из цикла и обойти
выставляющий оценку оператор.}
var
  number, numberTwo, amount : integer; // Сомножители и произведение.
  count, error : integer; // Счётчик вопросов и счетчик ошибок.
  score: string;
  
begin
  randomize;
  error := 0; // Обнуляем счетчики ошибок.
  count := 1;
  writeln('Для отмены экзамена введит 0 пожалуйста.');
  
  repeat
    number := 1 + random(10);
    numberTwo := 1 + random(10);
    write(count, ' Сколько будет ', number,' * ', numberTwo, ' ? ');
    readln(amount);
    if amount = 0
      then break;
    inc(count);  
  
    // Если ответ неверный, увеличиваем счетчик ошибок.
    if (number * numberTwo <> amount) and (amount <> 0)
      then inc(error);
    
    case error of // Выставляем оценку.
      0 : score := 'отлично!';
      1,2 : score := 'хорошо';
      3..5 : score := 'удовлетворительно';
    else score := 'неуд!';    
    end;    
  until count > 15; // 15 вопросов.
  
  if amount <> 0
    then writeln('Ваша оценка ', score);
end.