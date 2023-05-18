{Z_1.1 Стоимость учебников.}
var rub, kop, quantity, price : integer;

begin
  write('Введите рубли за 1 учебник:');
  readln(rub);
  write('Введите копейки за 1 учебник:');
  readln(kop);
  write('Введите количество учебников:');
  readln(quantity);
  if kop > 100 then begin
    rub := rub + 1;
    kop := kop - 100;
  end;
  writeln('На ', quantity, ' учебников потрачено: ', rub * quantity, 'рублей и ', kop * quantity, ' копеек.');
end.