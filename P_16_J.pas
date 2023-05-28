{P_16_J Шахматная доска.}
{Программа запрашивает в цикле два числа: вертикаль и горизонталь
шахматной доски, а затем печатает цвет клетки на их пересечении.
Если хотя бы одно из чисел равно нулю, цикл завершается. Если числа выходят за
указанные пределы, сообщает об ошибке и повторяет запрос чисел.}
var
  vertical, horizontal : byte;
begin
  repeat
  
  write('Введите № вертикали на доске пожалуйста: ');
  readln(vertical);
  
  write('Введите № горизонтали на доске пожалуйста: ');
  readln(horizontal);

  if (vertical = 0) or (horizontal = 0)
    then break;
    
  case (vertical mod 2) and (horizontal mod 2) of
    1 : writeln('Чёрная клетка.');
    0 : writeln('Белая клетка.');
  end;
      
  until ((vertical < 8) or (vertical > 0)) or ((horizontal < 8) or (horizontal > 0));
  
  if ((vertical > 8) or (vertical < 0)) or ((horizontal > 8) or (horizontal < 0))
    then writeln('Ошибка')
end.