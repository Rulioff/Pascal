{Z_1_39 Проверка на Фибоначчи.}
{Дано число, программа должна напечатать «ДА», если оно принадлежит ряду Фибоначчи,
и «НЕТ» в противном случае.}
var
  fibonacciPrevious, inputNumber, indexNumber, fibonacciNumber, increment: integer;
  hasFibonacci: boolean;

begin
  write('Введите число - от 1 до ∞, пожалуйста: ');
  readln(inputNumber);
  
  fibonacciPrevious := 1;
  increment := 0;
  hasFibonacci := false;
  fibonacciNumber := 1;
  
  for var i := 1 to 57 do
    if (indexNumber = 1) or (indexNumber = 2) then
      fibonacciNumber := 1
    else
    begin
      fibonacciNumber := fibonacciPrevious + increment;
      fibonacciPrevious := increment;
      increment := fibonacciNumber;
      if inputNumber = fibonacciNumber then begin
        hasFibonacci := true;
        break;
      end;
    end;
  
  if hasFibonacci then
    writeln('Число ', inputNumber, ' принадлежит ряду Фибоначчи? ', 'Да.')
  else
    writeln('Число ', inputNumber, ' принадлежит ряду Фибоначчи? ', 'Нет.')
end.