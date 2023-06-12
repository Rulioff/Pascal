{Z_1_20 Среднее из трёх.}
{Пользователь вводит три числа, а программа печатает среднее из них.}
var
  number1, number2, number3, middle : integer;
  
  begin
    write('Введите 1-е число, пожалуйста: ');
    readln(number1);
    
    write('Введите 2-е число, пожалуйста: ');
    readln(number2);
    
    write('Введите 3-е число, пожалуйста: ');
    readln(number3);
    
    middle := ((number1 > number2) and (number1 < number3)) ? number1 : number2;
    middle := ((number1 > number3) and (number1 < number2)) ? number1 : number3;
    middle := ((number2 > number1) and (number2 < number3)) ? number2 : number3;
    middle := ((number2 > number3) and (number2 < number1)) ? number2 : number1;
    middle := ((number3 > number1) and (number3 < number2)) ? number3 : number1;
    middle := ((number3 > number2) and (number3 < number1)) ? number3 : number2;
    
    writeln('Среднее из 3-х число: ', middle, '.');
  end.