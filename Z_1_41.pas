{Z_1_41 Печать простых чисел.}
{Ввести два целых положительных числа A и B и напечатать все простые числа, лежащие
на этом интервале (включая крайние). Сделать два варианта программы:
1) Когда известно, что A < B
2) Когда соотношение между A и B неизвестно.}
var
  firstNumber, lastNumber, primeNumber, indexNumber, primeCount, shift: integer;
  empty: boolean;

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
  
  for primeNumber := firstNumber to lastNumber do
  begin
    indexNumber := 0;
    count := 0;
    
    repeat
      begin
        indexNumber += 1;
        if primeNumber mod indexNumber = 0 then
          primeCount += 1;
        
        if primeCount > 2 then break;
        
      end;
    until primeNumber <= indexNumber;
    
    if primeCount <= 2 then begin
      empty := false;  
      write('Число ', primeNumber, ' проcтое. ');
    end;
  end;
  
  if empty then
    writeln('Пусто.');
end.