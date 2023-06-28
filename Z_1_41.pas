{Z_1_41 Печать простых чисел. Доработать нейминг и ввести булеву перемнную primeNumber.}
{Ввести два целых положительных числа A и B и напечатать все простые числа, лежащие
на этом интервале (включая крайние). Сделать два варианта программы:
1) Когда известно, что A < B
2) Когда соотношение между A и B неизвестно.}
var
  firstNumber, lastNumber, number, indexNumber, countPrime, numberPrime, buffer: integer;
  primeNumber: boolean;

begin
  repeat
    write('Введите целое положительное число A, пожалуйста: ');
    readln(firstNumber);
    
    write('Введите целое положительное число B, пожалуйста: ');
    readln(lastNumber);
  until (firstNumber > 0) and (lastNumber > 0);  

      if firstNumber > lastNumber then begin
        buffer := firstNumber;
        firstNumber := lastNumber;
        lastNumber := buffer;
      end;
  
  for number := firstNumber to lastNumber do
  begin
    indexNumber := 0;
    countPrime := 0;
    numberPrime := 1;
    primeNumber := false;
    
    repeat
      begin
        indexNumber += 1;
        if number mod indexNumber = 0 then
          countPrime += 1;
        
        if countPrime > 2 then break;
        
            writeln(number, ' ', indexNumber, ' ', countPrime);
      end;
    until number <= indexNumber;
    
    if countPrime <= 2 then begin
      primeNumber := true;    
      write('Число ', numberPrime, ' проcтое. ');
    end;
  end;
  if primeNumber = false then
    writeln(' Пусто.');
end.