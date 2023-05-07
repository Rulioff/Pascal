{P_14_V Определение наибольшего из 3-х чисел.}
var number_a, number_b, number_c, max : integer;
     compare : Boolean;
begin
  repeat
     write('Введите число A    ');  readln(number_a);
     write('Введите число B    ');  readln(number_b);
     write('Введите число C    ');  readln(number_c);
     compare := (number_a > number_b) and (number_b > number_c);  {compare = true, если number_a наибольшее число.}
     if compare
          then max := number_a;
     if (number_b > number_a) and (number_b > number_c)
          then max := number_b
     else max := number_c;
     writeln('Наибольшим является  ', max);
     writeln('Для выхода из программы введите все нули.');
  until max = 0; 
end.