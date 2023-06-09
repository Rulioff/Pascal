{P_17_E Сумма последовательности с условием.}
{Напишите программу, вычисляющую сумму только тех чисел от 1 до N,
которые делятся либо на три, либо на пять.}
var
  number, i, split3, split5, sum : integer;

  begin
    write('Введите количество чисел для суммы пожалуйста: ');
    readln(number);
    sum := 0;
    split3 := (i mod 3);
    split5 := (i mod 5);
    
    for i := 1 to number do
      if (split3 = 0) or (split5 = 0)
        then
          sum := i + sum;
    
    writeln(number);
    writeln('Сумма ', number, ' чисел = ', sum);
  end.