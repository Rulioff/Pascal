{Z_1_5 Размещение палаток (1)}
var campingN, campingM, tentK, tentQ, buffer : integer;
begin
  repeat
    write('Введите ширину кемпинга в метрах: ');
    readln(campingN);
  
    write('Введите длину кемпинга в метрах: ');
    readln(campingM);
    
    if campingN > campingM then begin //Проверка длины и ширины.
       buffer := campingN;
       campingN := campingM;
       campingM := buffer;
     end;
  
    write('Введите длину сторон квадратной палатки в метрах: ');
    readln(tentK);
    
    tentQ := (campingN div tentK) * (campingM div tentK);
    
  until true;
  
  writeln('Кемпинг площадью ', campingN, ' на ', campingM, ' метров вмещает ', tentQ, ' палток.')
  
end.