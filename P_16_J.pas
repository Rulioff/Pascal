{P_16_J Шахматная доска.}
{Программа запрашивает в цикле два числа: вертикаль и горизонталь
шахматной доски, а затем печатает цвет клетки на их пересечении.
Если хотя бы одно из чисел равно нулю, цикл завершается. Если числа выходят за
указанные пределы, сообщает об ошибке и повторяет запрос чисел.}
var
  vertical, horizontal : byte;
begin
  repeat
  vertical := 1;
  
  write('Введите № горизонтали на доске пожалуйста: ');
  readln(horizontal);
  
  if horizontal = 0
    then break;
    
  if (horizontal > 0) and (horizontal < 9) then begin
    write('Введите № вертикали на доске пожалуйста: ');
    readln(vertical);
    
    if vertical = 0
      then break;
    
    if (vertical > 0) and (vertical < 9) then begin
      if ((vertical + horizontal) mod 2) = 0
        then writeln('Чёрная клетка.')
        else writeln('Белая клетка.')
  
  end else begin
      writeln('Ошибка по вертикали.');
    end
  
  end else begin
    writeln('Ошибка по горизонтали.');
  end
  
  until (vertical = 0) or (horizontal = 0);
  
  writeln('Играйте в шахматы!0');
end.