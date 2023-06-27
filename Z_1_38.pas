{Z_1_38 Числа Фибоначчи.}
{Числа Фибоначчи — это последовательность, где первые два числа равны единице, а
каждое следующее равно сумме двух предыдущих:
1, 1, 2, 3, 5, 8, 13, 21, 34, 55 . . .
Программа должна запросить порядковый номер числа в этом ряду (N) и вывести N-е
число Фибоначчи (N = 1 ... 20).}
var
  fibonacciNumber, indexNumber, fibonacciPrevious, increment: integer;

begin
  repeat
    write('Введите порядковый номер числа N - от 1 до 57, пожалуйста: ');
    readln(indexNumber);
  until indexNumber > 0;
  
  fibonacciPrevious := 1;
  increment := 0;
  for var i := 1 to indexNumber do
    if (indexNumber = 1) or (indexNumber = 2) then
      fibonacciNumber := 1
    else
    begin
      fibonacciNumber := fibonacciPrevious + increment;
      fibonacciPrevious := increment;
      increment := fibonacciNumber;
    end;
  writeln('Число Фибоначчи = ', fibonacciNumber, '.');
end.