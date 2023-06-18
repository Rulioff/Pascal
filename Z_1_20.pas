{Z_1_20 Среднее из трёх.}
{Пользователь вводит три числа, а программа печатает среднее из них.}
var
  number1, number2, number3, middle: integer;

begin
  write('Введите 1-е число, пожалуйста: ');
  readln(number1);
  
  write('Введите 2-е число, пожалуйста: ');
  readln(number2);
  
  write('Введите 3-е число, пожалуйста: ');
  readln(number3);
  
  middle := 0;
  
    // 123, 231, 312, 132, 321, 213
  
  if ((number1 <= number2) and (number2 <= number3)) then middle := number2; //123
  if ((number1 >= number2) and (number2 >= number3)) then middle := number2; //321
  
  if ((number1 <= number2) and (number2 >= number3)) then middle := number1; //231
  if ((number1 >= number2) and (number2 <= number3)) then middle := number1; //213
  
  if ((number1 >= number2) and (number2 <= number3)) then middle := number3; //312
  if ((number1 <= number2) and (number2 >= number3)) then middle := number3; //132
  
  writeln('Среднее из 3-х число: ', middle, '.');
end.