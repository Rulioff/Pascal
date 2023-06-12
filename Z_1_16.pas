{Z_1_16 Обмен значений_2.}
{Обменять значения числовых переменных A и B, не применяя третьей переменной.}
var
  numberA, numberB : integer;
  
  begin
    write('Введите А, пожалуйста: ');
    readln(numberA);
    
    write('Введите B, пожалуйста: ');
    readln(numberB);
    
    numberA := numberA + numberB;
    numberB := numberA - numberB;
    numberA := numberA - numberB;
    
    writeln('Обмен значений A = ', numberA, ' и B = ', numberB, '.');
  end.