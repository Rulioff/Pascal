{Z_1_41 Печать простых чисел.}
{Ввести два целых положительных числа A и B и напечатать все простые числа, лежащие
на этом интервале (включая крайние). Сделать два варианта программы:
1) Когда известно, что A < B
2) Когда соотношение между A и B неизвестно.}
var
  numberA, numberB, ask, number, numberN, count: integer;
  
begin
  repeat
    write('Введите целое положительное число A, пожалуйста: ');
    readln(numberA);
    
    write('Введите целое положительное число B, пожалуйста: ');
    readln(numberB);
  until (numberA > 0) and (numberB >0);
  
  write('Известно, что A < B? Введите да или нет, пожалуйста: ');
  readln(ask);
  
  numberN := 0;
  count := 0;
  
  repeat
    begin        
    numberN += 1;
    if number mod numberN = 0 then
      count += 1;
 
    if count > 2 then break;
    
    writeln(number, ' ', numberN, ' ', count);
    end;
  until number <= numberN;
  
  if count <= 2 then
    writeln('Число ', number, ' проcтое? ', 'Да.');
  if count > 2 then
    writeln('Число ', number, ' проcтое? ', 'Нет.');
end.