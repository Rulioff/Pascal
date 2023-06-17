{Z_1_23 Стороны треугольника.}
{Программа принимает три числа и печатает «Да», если они могут выражать длины сторон
треугольника, и «Нет» в противном случае.}
var
  side1, side2, side3 : integer;
  triangular : string;
  
  begin
    write('Введите 1-ю сторону треугольника, пожалуйста: ');
    readln(side1);
    
    write('Введите 2-ю сторону треугольника, пожалуйста: ');
    readln(side2);
    
    write('Введите 3-ю сторону треугольника, пожалуйста: ');
    readln(side3);

   triangular := (side1 < side2 + side3) and (side2 < side1 + side3) and (side2 < side1 + side3) ? ('Да.') : ('Нет.');
   writeln(triangular);
  end.