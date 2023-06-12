{Z_1_15 Обмен значений_1.}
{Обменять значения числовых переменных A и B, воспользовавшись третьей переменной.}
var
  numberA, numberB, buffer : integer;
  
  begin
    write('Введите А, пожалуйста: ');
    readln(numberA);
    
    write('Введите B, пожалуйста: ');
    readln(numberB);
    
    buffer := numberA;
    numberA := numberB;
    numberB := buffer;
    
    writeln('Обмен значений A = ', numberA, ' и B = ', numberB, '.');
  end.