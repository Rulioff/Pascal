// Операторные блоки.

var Password : string;
begin
  Writeln('Введите пожалуйста пароль'); Readln(Password);
  if Password = 'pascal' then begin
    Writeln('Открыть ворота!');
    Writeln('Оркестр, тушь!');
    Writeln('Проходите пожалуйста')
  end     else begin
          Writeln('Вы ввели неверный пароль.');
          Writeln('Оставайтесь на месте до выяснения.')
  end;
  Writeln('Нажмите Enter'); Readln;
end.