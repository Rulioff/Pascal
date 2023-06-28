{Z_1_41 Печать простых чисел. Исправить работу цикла.}
{Ввести два целых положительных числа A и B и напечатать все простые числа, лежащие
на этом интервале (включая крайние). Сделать два варианта программы:
1) Когда известно, что A < B
2) Когда соотношение между A и B неизвестно.}
var
  firstNumber, lastNumber, currentNumber, indexNumber, primeCount, primeNumber, shift: integer;
  umpty: boolean;

begin
  repeat
    write('Введите целое положительное число A, пожалуйста: ');
    readln(firstNumber);
    
    write('Введите целое положительное число B, пожалуйста: ');
    readln(lastNumber);
  until (firstNumber > 0) and (lastNumber > 0);  

      if firstNumber > lastNumber then begin
        shift := firstNumber;
        firstNumber := lastNumber;
        lastNumber := shift;
      end;
  
  for currentNumber := firstNumber to lastNumber do
  begin
    indexNumber := 0;
    primeCount := 0;
    primeNumber := 0;
    umpty := true;
    
    repeat
      begin
        indexNumber += 1;
        if currentNumber mod indexNumber = 0 then
          primeCount += 1;
        
        if primeCount > 2 then break;
        
    //        writeln(currentNumber, ' ', indexNumber, ' ', primeCount);
      end;
    until currentNumber <= indexNumber;
    
    if primeCount <= 2 then begin
      umpty := false;
      write('Число ', primeNumber, ' проcтое. ');
      
    end;
  end;
  
  if umpty then
  writeln(' Пусто.');
end.