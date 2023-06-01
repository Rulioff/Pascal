{P_17_A Отказ от сдачи экзамена.}
{Позвольте ученику отказаться от сдачи экзамена. Признаком отказа будет
ввод нуля в качестве ответа. В этом случае надо досрочно выйти из цикла и обойти
выставляющий оценку оператор.}
var
  number, numberTwo, amount : integer; { сомножители и произведение }
  count, error : integer; { счетчик вопросов и счетчик ошибок }
  score: string;
begin
  randomize;
  error := 0; { обнуляем счетчики ошибок }
  count := 1;
  writeln('Для отмены экзамена нажмите 0 пожалуйста.');
  repeat

    number := 1 + random(10);
    numberTwo := 1 + random(10);
    write(count, ' Сколько будет ', number,' * ', numberTwo, ' ? ');
    readln(amount);
    if amount = 0
      then break;
    inc(count);  
  
    { Если ответ неверный, увеличиваем счетчик ошибок }
    if (number * numberTwo <> amount) and (amount <> 0)
      then inc(error);
    
    case error of { выставляем оценку }
      0 : score := 'Отлично!';
      1,2 : score := 'Хорошо';
      3..5 : score := 'Удовлетворительно';
    else score := 'Неуд!';    
    end;
    
  until count > 15; //15 вопросов. 
writeln(score, ' Нажмите Enter');
readln;
end.