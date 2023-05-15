{P_14_G Кирпич проходит?}
var sideA, sideB, brickX, brickY, brickZ : integer;

begin
  repeat    
     write('Введите ширину отверстия: ');  readln(sideA);
     write('Введите высоту отверстия: ');  readln(sideB);
//     isHoleError := side_a > side_b;  {compare = true, если ширина больше высоты, выходим из цикла.}
     if sideA > sideB
      then break;
      write('Введите ширину кирпича: '); readln(brickX);
      write('Введите высоту кирпича: '); readln(brickY);
      write('Введите длину кирпича: '); readln(brickZ);
//     compareBrick := (brick_x > brick_y) or (brick_y > brick_z);  {compare = true, если ширина больше высоты, выходим из цикла.}
     if (brickX > brickY) or (brickY > brickZ)     then break;
//     compareSize := (side_a >= brick_x) and (side_b >= brick_y);  {compare = true, если отверстие больше кирпича.}
     if (sideA >= brickX) and (sideB >= brickY)
      then writeln('Кирпич провалился.')
     else writeln('Кирпич застрял.');
  until true;
writeln('Ширина должна быть меньше высоты и меньше длины.');
end.