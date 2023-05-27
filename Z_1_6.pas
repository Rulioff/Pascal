{Z_1_6 Размещение палаток (2)}
var campingN, campingM, tentK, tentL, tentQ, buffer : integer;
begin
    write('Введите ширину кемпинга в метрах: ');
    readln(campingN);
  
    write('Введите длину кемпинга в метрах: ');
    readln(campingM);
    
    if campingN > campingM then begin //Проверка длины и ширины.
       buffer := campingN;
       campingN := campingM;
       campingM := buffer;
    end;
  
    write('Введите 1-ю сторону палатки в метрах: ');
    readln(tentK);
    
    write('Введите 2-ю сторону палатки в метрах: ');
    readln(tentL);
    
    if tentK < tentL then begin //Проверка длины и ширины.
       buffer := tentK;
       tentK := tentL;
       tentL := buffer;
       
    tentQ := (campingN div tentK) * (campingM div tentL);
    
  until true;
  
  writeln('Кемпинг шириной ', campingN, ' и длиной ', campingM, ' метров вмещает ', tentQ, ' палток.')
  
end.