{Z_1_17 Упорядочение чисел.}
{Пользователь вводит два числа, а программа печатает сначала меньшее, затем большее.}
var
  numberA, numberB : integer;
  
  begin
    write('Введите А, пожалуйста: ');
    readln(numberA);
    
    write('Введите B, пожалуйста: ');
    readln(numberB);
    
    numberA := (numberA > numberB) ? numberA + numberB : numberA;
    numberB := (numberA > numberB) ? numberA - numberB : numberB;
    numberA := (numberA > numberB) ? numberA - numberB : numberA;
    
    writeln('Обмен значений A ', numberA, ' < B ', numberB, '.');
  end.