﻿{Z_1_5 Размещение палаток (1)}
var campingN, campingM, tentK, tentQ, buffer : integer;
begin

    write('Введите ширину кемпинга в метрах: ');
    readln(campingN);
  
    write('Введите длину кемпинга в метрах: ');
    readln(campingM);
    
    write('Введите длину сторон квадратной палатки в метрах: ');
    readln(tentK);
    
    tentQ := (campingN div tentK) * (campingM div tentK);
      
  writeln('Кемпинг площадью ', campingN, ' на ', campingM, ' метров вмещает ', tentQ, ' палток.')
  
end.