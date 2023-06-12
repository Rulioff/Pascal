{Z_1_16 Обмен значений_2.}
{Обменять значения числовых переменных A и B, воспользовавшись третьей переменной.}
var
  numberA, numberB, : integer;
  
  begin
    write('Введите А, пожалуйста: ');
    readln(numberA);
    
    write('Введите B, пожалуйста: ');
    readln(numberB);

    numberA := numberB;
    numberB := buffer;
    
    writeln('Обмен значений A = ', numberA, ' и B = ', numberB, '.');
  end.