{P_17_E Сумма последовательности.}
{Напишите программу, вычисляющую сумму чисел от 1 до N, где N —
число, вводимое пользователем.}
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