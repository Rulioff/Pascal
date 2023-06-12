{Z_1_21 Номер несовпадающего числа.}
{Пользователь вводит три числа, два из которых совпадают. Программа печатает то из них,
что отличается от прочих.}
var
  number1, number2, number3, unequal : integer;
  
  begin
    write('Введите 1-е число, пожалуйста: ');
    readln(number1);
    
    write('Введите 2-е число, пожалуйста: ');
    readln(number2);
    
    write('Введите 3-е число, пожалуйста: ');
    readln(number3);
    
    if number1 = number2
      then
        unequal := number3;
    
    if number1 = number3
      then
        unequal := number2;
    
    if number2 = number3
      then
        unequal := number1;
    
    writeln('Отличается от 2-х других число: ', unequal, '.');
  end.