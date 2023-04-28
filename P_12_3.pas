{ P_12_3 – часовой с досрочным выходом из цикла }
var Password : string;
begin
    repeat
      Writeln('Введите пожалуйста пароль:  '); Readln(Password);
      if Password = '' then Break;
          if Password = 'pascal'
               then Writeln('Проходите пожалуйста.')
               else Writeln('Доступ запрещён.');
    until Password = ''; {Окончание цикла}
Writeln('Для завершения нажмите пожалуйста Enter.');  Readln;
end.