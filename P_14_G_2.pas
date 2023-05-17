{P_14_G_2 Определить ширину.}
var side_a, side_b, brick_x, brick_y, brick_z, buffer : integer;

begin
  repeat
     write('Введите ширину отверстия: ');
     readln(side_a);

     write('Введите высоту отверстия: ');
     readln(side_b);

     if side_a > side_b then begin
       buffer := side_a;
       side_a := side_b;
       side_b := buffer;
     end;

     write('Введите ширину кирпича: ');
     readln(brick_x);

     write('Введите высоту кирпича: ');
     readln(brick_y);

     write('Введите длину кирпича: ');
     readln(brick_z);

     if (brick_x > brick_y) then begin
       buffer := brick_x;
       brick_x := brick_y;
       brick_y := buffer;
     end;

     if (brick_x > brick_z) then begin
       buffer := brick_y;
       brick_y := brick_z;
       brick_z := buffer;
     end;

     if (brick_x > brick_y) then begin
       buffer := brick_x;
       brick_x := brick_y;
       brick_y := buffer;
     end;

     if (side_a >= brick_x) and (side_b >= brick_y)
          then writeln('Кирпич провалился')
     else writeln('Кирпич застрял.');
  until true;
end.