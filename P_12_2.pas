{P_12_2 Программа работает в цикле при 2-х условиях.}
var Password : string;
begin
    repeat
      Writeln('Введите пожалуйста пароль:  '); Readln(Password);
      if Password <> '' then
          if Password = 'pascal'
               then Writeln('Проходите пожалуйста.')
               else Writeln('Доступ запрещён.');
    until Password = ''; {Окончание цикла}
Writeln('Для завершения нажмите пожалуйста Enter.');  Readln;
end.