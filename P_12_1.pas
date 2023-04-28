{P_12_1 Программа работает в цикле.}
var Password : string;
begin
    repeat
      Writeln('Введите пожалуйста пароль:  '); Readln(Password);
          if Password = 'pascal'
               then Writeln('Проходите пожалуйста.')
               else Writeln('Доступ запрещён.');
    until Password = ''; {Окончание цикла}
Writeln('Для завершения нажмите пожалуйста Enter.');  Readln;
end.