var
  City, Street, Home, Apartment : string;
begin
  Writeln('Введите пожалуйста Ваш адрес:');
  Writeln('Город?');  Readln(City);
  Writeln('Улица?');  Readln(Street);
  Writeln('Дом?');  Readln(Home);
  Writeln('Квартира');  Readln(Apartment);
  Writeln('Город: ', City, '  Улица:  ', Street, '  Квартира: ', Apartment);
  Readln;
end.