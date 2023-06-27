{Z_1_39 Проверка на Фибоначчи.}
{Дано число, программа должна напечатать «ДА», если оно принадлежит ряду Фибоначчи,
и «НЕТ» в противном случае.}
var
  fibonacciPrevious, inputNumber, fibonacciNumber, increment: integer;
  hasFibonacci: boolean;

begin
  write('Введите число - от 1 до ∞, пожалуйста: ');
  readln(inputNumber);
  
  fibonacciPrevious := 1;
  increment := 0;
  hasFibonacci := false;
  fibonacciNumber := 1;
  
{  while inputNumber <= fibonacciNumber do
  begin
      if (inputNumber =1) or (inputNumber = fibonacciNumber) then begin
      hasFibonacci := true;
      break;
      end;
      fibonacciNumber := fibonacciPrevious + increment;
      fibonacciPrevious := increment;
      increment := fibonacciNumber;
  end;}
  repeat
    if (inputNumber = 1) or (inputNumber = fibonacciNumber) then
      hasFibonacci := true;
      break;
      fibonacciNumber := fibonacciPrevious + increment;
      fibonacciPrevious := increment;
      increment := fibonacciNumber;     

  until inputNumber > fibonacciNumber;
  
  writeln(inputNumber, ' ', fibonacciNumber, ' ', hasFibonacci);
  
  if hasFibonacci then
    writeln('Число ', inputNumber, ' принадлежит ряду Фибоначчи? ', 'Да.')
  else
    writeln('Число ', inputNumber, ' принадлежит ряду Фибоначчи? ', 'Нет.')
end.