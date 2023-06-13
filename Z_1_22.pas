{Z_1_22 Два ближайших числа.}
{Программа принимает три числа и печатает пару тех из них, что меньше отличаются друг
от друга.}
var
  number1, number2, number3, difference1, difference2, buffer : integer;
  
  begin
    write('Введите 1-е число, пожалуйста: ');
    readln(number1);
    
    write('Введите 2-е число, пожалуйста: ');
    readln(number2);
    
    write('Введите 3-е число, пожалуйста: ');
    readln(number3);

    if number1 > number2 then begin
      buffer := number1;
      number1 := number2;
      number2 := buffer;
    end;
    
    if number2 > number3 then begin
      buffer := number2;
      number2 := number3;
      number3 := buffer;
    end;
    
    if number1 > number3 then begin
      buffer := number1;
      number1 := number3;
      number3 := buffer;
    end;
          
    difference1 := number2 - number1;
    difference2 := number3 - number2;
    
    if difference1 < difference2
      then
        writeln('Меньше отличается друг от друга числа: ', number1, ' и ', number2, '.')
      else
        writeln('Меньше отличается друг от друга числа: ', number2, ' и ', number3, '.');      
  end.