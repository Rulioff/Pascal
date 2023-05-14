{P_14_V Кирпич проходит?}
var side_a, side_b, brick_x, brick_y, brick_z : integer;
     isHoleError, compareBrick, compareSize : Boolean;
begin
  repeat    
     write('Введите ширину отверстия    ');  readln(side_a);
     write('Введите высоту отверстия    ');  readln(side_b);
//     isHoleError := side_a > side_b;  {compare = true, если ширина больше высоты, выходим из цикла.}
     if side_a > side_b     then break;
     write('Введите ширину кирпича '); readln(brick_x);
     write('Введите высоту кирпича '); readln(brick_y);
     write('Введите длину кирпича '); readln(brick_z);
//     compareBrick := (brick_x > brick_y) or (brick_y > brick_z);  {compare = true, если ширина больше высоты, выходим из цикла.}
     if (brick_x > brick_y) or (brick_y > brick_z)     then break;
//     compareSize := (side_a >= brick_x) and (side_b >= brick_y);  {compare = true, если отверстие больше кирпича.}
     if (side_a >= brick_x) and (side_b >= brick_y)
          then writeln('Кирпич провалился')
     else writeln('Кирпич застрял.');
  until true;
writeln('Ширина должна быть меньше высоты и меньше длины. Поторите ввод.');
writeln('Для завершения нажмите Enter пожалуйста.');   readln();
end.