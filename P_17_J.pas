{P_17_E Сумма последовательности с условием.}
{Напишите программу, вычисляющую сумму только тех чисел от 1 до N,
которые делятся либо на три, либо на пять.}
var
  number, i, sum : integer;
  begin
    write('Введите количество чисел для суммы пожалуйста: ');
    readln(number);
    sum := 0;
//    i := 1;
    
    for i := 1 to number do
      sum := i + sum;
    
    writeln(number);
    writeln('Сумма ', number, ' чисел = ', sum);
  end.