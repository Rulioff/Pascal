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
  hasFibonacci := inputNumber = fibonacciNumber;
  fibonacciNumber := 0;
  
  repeat
    begin
      fibonacciNumber := fibonacciPrevious + increment;
      fibonacciPrevious := increment;
      increment := fibonacciNumber;
    end;
    
    if fibonacciNumber = inputNumber then begin
      hasFibonacci := true;
      break;
    end;
  until inputNumber < fibonacciNumber;
  
  //Точка отладки. writeln(inputNumber, ' ', fibonacciNumber, ' ', hasFibonacci);
  
  if hasFibonacci = true then
    writeln('Число ', inputNumber, ' принадлежит ряду Фибоначчи? ', 'Да.')
  else
    writeln('Число ', inputNumber, ' принадлежит ряду Фибоначчи? ', 'Нет.')
end.