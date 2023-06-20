{Z_1_38 Числа Фибоначчи.}
{Числа Фибоначчи — это последовательность, где первые два числа равны единице, а
каждое следующее равно сумме двух предыдущих:
1, 1, 2, 3, 5, 8, 13, 21, 34, 55 . . .
Программа должна запросить порядковый номер числа в этом ряду (N) и вывести N-е
число Фибоначчи (N = 1 ... 20).}
var
  numberF, numberN, number, buffer: integer;

begin
  repeat
    write('Введите порядковый номер числа N - от 1 до ∞, пожалуйста: ');
    readln(numberN);
  until numberN > 0;
  
  number := 1;
  buffer := 0;
  for var i := 1 to numberN do
    if (numberN = 1) or (numberN = 2) then
      numberF := 1
    else
    begin
      numberF := number + buffer;
      number := buffer;
      buffer := numberF;
    end;
  writeln('Число Фибоначчи = ', numberF);
end.