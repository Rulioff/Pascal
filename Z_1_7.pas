{Z_1_7 Укладка коробок.}
var drawerL, drawerM, drawerN, boxP, boxQ, boxR, boxCount, buffer : integer;
begin
    write('Введите 1-ю сторону ящика в сантиметрах: ');
    readln(drawerL);
  
    write('Введите 2-ю сторону ящика в сантиметрах: ');
    readln(drawerM);
    
    if drawerL < drawerM then begin //Проверка длины и ширины ящика.
       buffer := drawerL;
       drawerL := drawerM;
       drawerM := buffer;
    end;  
  
    write('Введите 3-ю сторону ящика в сантиметрах: ');
    readln(drawerN);      
    
    if drawerM > drawerN then begin //Проверка ширины и высоты ящика.
       buffer := drawerM;
       drawerM := drawerN;
       drawerN := buffer;
    end;
  
    write('Введите 1-ю сторону коробки в сантиметрах: ');
    readln(boxP);
    
    write('Введите 2-ю сторону коробки в сантиметрах: ');
    readln(boxQ);
    
    if boxP > boxQ then begin //Проверка длины и ширины коробки.
       buffer := boxP;
       boxP := boxQ;
       boxQ := buffer;
    end;     
          
    write('Введите 3-ю сторону коробки в сантиметрах: ');
    readln(boxR);
    
    if boxQ > boxR then begin //Проверка длины и высоты коробки.
       buffer := boxQ;
       boxQ := boxR;
       boxR := buffer;
    end;
       
    boxCount := (drawerL div boxR) * (drawerM div boxQ) * (drawerN div boxP);

  writeln('Ящик шириной ', drawerM, ', длиной ', drawerL, ' и высотой ', drawerN, ' сантиметров вмещает ', boxCount, ' коробок.')
  
end.