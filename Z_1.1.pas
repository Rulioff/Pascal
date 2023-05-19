{Z_1.1 Стоимость учебников.}
var rub, kop, quantity, price, priceR, priceK : integer;

begin
  write('Введите рубли за 1 учебник:');
  readln(rub);
  write('Введите копейки за 1 учебник:');
  readln(kop);
  write('Введите количество учебников:');
  readln(quantity);
  priceR := rub * quantity;
  priceK := kop * quantity;
  repeat
    if priceK >= 100 then begin
      priceR := priceR + 1;
      priceK := priceK - 100;
    end;  
  until priceK >= 100;

  writeln('На ', quantity, ' учебников потрачено: ', priceR, ' рублей и ', priceK, ' копеек.');
end.