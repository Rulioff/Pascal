{P_14_V Определить ширину.}
var side_a, side_b, brick_x, brick_y, brick_z : integer;
     compareHole, compareBrick, compareSize : Boolean;
begin
  repeat    
     write('Введите ширину отверстия    ');  readln(side_a);
     write('Введите высоту отверстия    ');  readln(side_b);
     compareHole := side_a < side_b;  {compare = true, если side_a меньше, то это ширина.}
     if compareHole
          then writeln('Ширина = ', (side_a)); writeln('Высота = ', (side_b));
     if compareHole = false
          then writeln('Ширина = ', (side_b)); writeln('Высота = ', (side_a));
     write('Введите ширину кирпича '); readln(brick_x);
     write('Введите высоту кирпича '); readln(brick_y);
     write('Введите длину кирпича '); readln(brick_z);
     compareBrick := (brick_x > brick_y) or (brick_y > brick_z);  {compare = true, если ширина больше высоты, выходим из цикла.}
     if compareBrick     then break;
     compareSize := (side_a > brick_x) and (side_b > brick_y);  {compare = true, если отверстие больше кирпича.}
     if compareSize
          then writeln('Кирпич провалился')
          else writeln('Кирпич застрял.');
  until compareHole or compareBrick;
writeln('Ширина должна быть меньше высоты и меньше длины. Поторите ввод.');
writeln('Для завершения нажмите Enter пожалуйста.');   readln();
end.