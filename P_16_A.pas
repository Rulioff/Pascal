﻿{P_16_A – игра «вопрос – ответ» Random(100).}
{Какой ответ будет выпадать чаще других, если условием в операторе CASE
нашей программы поставить выражение Random(100)?}
var askAns : string;
begin
  randomize; //чтобы случайный ряд не повторялся.
  repeat
    write('Задайте вопрос пожалуйста: ');
    readln(askAns);
    
    if askAns = ''
      then break; //Завершение цикла, если строка пуста.
    
    case random(100) of
      0: askAns := 'Когда рак на горе свиснет';
      1: askAns := 'После дождика в четверг';
      2: askAns := 'За углом налево';
      3: askAns := 'Это элементарно, Ватсон!';
      4: askAns := 'Какая разница? Главное, что Вы знаете, что такое преобразование Ляпляса!';
      5: askAns := 'А вот Краснов знает, да?';
      else askAns :='Не знаю, я не местный';
    end;
    writeln(askAns); //Чаще выпадает вариант ответа else.
  until false;  //Бесконечный цикл.
end.