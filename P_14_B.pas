{P_14_B Экзаменатор без процедуры break и логической переменной compare и строковой answer.}
var
  multiplier_1, multiplier_2, res_1, res_2 : integer; {Множители, произведение и ответ студента.}
//  compare : Boolean;     {Логическое сравнение.}
//  answer : string;  {Вывод оценки.}
begin
  repeat
    write('Введите 1-й множитель:  ');  readln(multiplier_1);
    write('Введите 2-й множитель:  ');  readln(multiplier_2);
    write('Введите произведение:  ');  readln(res_2);
    res_1 := multiplier_1 * multiplier_2;
    if res_1 = res_2 {Проверяем ответ.}
      then writeln('Верно!')
    else writeln('Повторите таблицу пожалуйста.');
     writeln('Для завершения экзамена введите 0 пожалуйста.');   readln();
  until res_2 = 0;    {Выход из цикла при вводе 0.}
end.