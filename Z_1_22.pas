{Z_1_22 Два ближайших числа.}
{Программа принимает три числа и печатает пару тех из них, что меньше отличаются друг
от друга.}
var
  number1, number2, number3, difference1, difference2 : integer;
  
  begin
    write('Введите 1-е число, пожалуйста: ');
    readln(number1);
    
    write('Введите 2-е число, пожалуйста: ');
    readln(number2);
    
    write('Введите 3-е число, пожалуйста: ');
    readln(number3);
    
    if (number1 < number2) and (number2 < number3)
      then
        difference1 := number2 - number1;
   
    writeln('Меньше отличается друг от друга числа: ', difference1, ' и ', difference2, '.');
  end.