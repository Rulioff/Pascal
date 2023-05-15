{P_14_G Кирпич проходит?}
var sideA, sideB, brickX, brickY, brickZ : integer;

begin
  repeat    
     write('Введите ширину отверстия: ');
     readln(sideA);
     write('Введите высоту отверстия: ');
     readln(sideB);

     if sideA > sideB //Если ширина больше высоты, выходим из цикла.
      then break;
      
      write('Введите ширину кирпича: ');
      readln(brickX);
      write('Введите высоту кирпича: ');
      readln(brickY);
      write('Введите длину кирпича: ');
      readln(brickZ);

     if (brickX > brickY) or (brickY > brickZ)  //Если ширина больше высоты, выходим из цикла.
      then break;

     if (sideA >= brickX) and (sideB >= brickY) // Сравниваем отверстие и кирпич.
      then writeln('Кирпич провалился.')
     else writeln('Кирпич застрял.');
  until true;
  
writeln('Ширина должна быть меньше высоты и меньше длины.');
end.