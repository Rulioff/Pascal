{P_14_V Определить ширину.}
var side1, side2, side_a {ширина}, side_b {высота}, brick1, brick2, brick3, brick_x, brick_y, brick_z : integer;
     compareHole, compareWidth, compareHight, compareLength, compareSize : Boolean;
begin
  repeat    
     write('Введите 1-ю сторону отверстия    ');  readln(side1);
     write('Введите 2-ю сторону отверстия    ');  readln(side2);
     compareHole := side1 < side2;  {compare = true, если side_a меньше, то это ширина.}
     if compareHole
          then side_a := side1; side_b := side2;
     if compareHole = false
          then side_a := side2; side_b := side1;
     writeln('Ширина = ', (side_a), ',   Высота = ', (side_b));
     
     write('Введите 1-ю сторону кирпича '); readln(brick1);
     write('Введите 2-ю сторону кирпича '); readln(brick2);
     write('Введите 3-ю сторону кирпича '); readln(brick3);
     compareWidth := (brick1 < brick2) and (brick1 < brick3);  {compare = true, если ширина меньше высоты, ширина side1.}
     if compareWidth
          then brick_x := brick1;
       if compareWidth = false
          then brick_x := brick3; brick_y := brick2; brick_z := brick1;
     writeln('Ширина = ', (brick_x), ',   Высота = ', (brick_y), ',   Длина = ', (brick_z));
     compareSize := (side_a > brick_x) and (side_b > brick_y);  {compare = true, если отверстие больше кирпича.}
     if compareSize
          then writeln('Кирпич провалился')
          else writeln('Кирпич застрял.');
  until not compareSize;
writeln('Ширина должна быть меньше высоты и меньше длины. Повторите ввод.');
writeln('Для завершения нажмите Enter пожалуйста.');   readln();
end.