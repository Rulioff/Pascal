{P_14_1 Экзаменатор базовый.}
var
  multiplier_1, multiplier_2, res : integer; {Множители и произведение.}
  compare : Boolean;     {Логическое сравнение.}
  answer : string;  {Вывод оценки.}
begin
  repeat
    write('Введите 1-й множитель:  ');  readln(multiplier_1);
    write('Введите 2-й множитель:  ');  readln(multiplier_2);
    write('Введите произведение:  ');  readln(res);
    if res = 0 then break; {Конец цикла при 0.}
    {Проверяем ответ.}
     compare := multiplier_1 * multiplier_2 = res;   {compare = true, если ответ верный.}
     if compare
          then answer := 'Верно!'
     else answer := 'Повторите таблицу пожалуйста.';
     writeln(answer);
     writeln('Для завершения экзамена введите 0 пожалуйста.');   readln();
  until res = 0;    {Бесконечный цикл.}
end.