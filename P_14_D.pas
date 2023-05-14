{P_14_D Сравнение площади.}
var
  sideA1, sideB1, sideA2, sideB2, square1, square2 : integer;   maxSquare, maxSide1, maxSide2 : boolean;
begin
  repeat
   {1-й участок.}
   write('Введите сторону A1  '); readln(sideA1);
   write('Введите сторону B1  '); readln(sideB1);
   square1 := sideA1 * sideB1;
   {2-й участок.}
   write('Введите сторону A2  '); readln(sideA2);
   write('Введите сторону B2  '); readln(sideB2);
   square2 := sideA2 * sideB2;

     maxSquare := square1 > square2; {Определение участка с максимальной площадью.}
     if maxSquare then maxSide1 := sideA1 < sideB1;    {Если 1 участок больше.}
     if maxSquare and maxSide1
          then writeln('Ширина участка с максимальной площадью = ', sideA1, ', а длина = ', sideB1);
     if maxSquare and not maxSide1
          then writeln('Ширина участка с максимальной площадью = ', sideB1, ', а длина = ', sideA1);
     
     if not maxSquare then maxSide2 := sideA2 < sideB2;     {Если 1 участок больше.}
     if not maxSquare and maxSide2
          then writeln('Ширина участка с максимальной площадью = ', sideA2, ', а длина = ', sideB2);
     if not maxSquare and not maxSide2
          then writeln('Ширина участка с максимальной площадью = ', sideB2, ', а длина = ', sideA2);
  until (sideA1 or sideA2) and (sideB1 or sideB2) = 0;
end.