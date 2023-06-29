{Z_1_41 Печать простых чисел.}
{Ввести два целых положительных числа A и B и напечатать все простые числа, лежащие
на этом интервале (включая крайние). Сделать два варианта программы:
1) Когда известно, что A < B
2) Когда соотношение между A и B неизвестно.}
var
  firstNumber, lastNumber, currentNumber, divisor, shift: integer;
  empty, primeNumber: boolean;

begin
  repeat
    write('Введите целое положительное число A, пожалуйста: ');
    readln(firstNumber);
    
    write('Введите целое положительное число B, пожалуйста: ');
    readln(lastNumber);
  until (firstNumber > 0) and (lastNumber > 0);
  
  // Для 1-го варианта удалите строки 20 ... 24.
  if firstNumber > lastNumber then begin
    shift := firstNumber;
    firstNumber := lastNumber;
    lastNumber := shift;
  end;
  empty := true;
  
  for currentNumber := firstNumber to lastNumber do
  begin
    divisor := 0;
    primeNumber := true;
    
    repeat
      begin
        divisor += 1;
        if (currentNumber mod divisor = 0) and (divisor <> 1) and (currentNumber <> divisor) then
          primeNumber := false;
        
        if primeNumber = false then break;        
      end;
    until currentNumber <= divisor;
    
    if primeNumber then begin
      empty := false;  
      write('Число ', currentNumber, ' проcтое. ');
    end;
  end;
  
  if empty then
    writeln('Пусто.');
end.