// Программа проверяет пароль.
var
  Password_Etalon, Paswword_Ask : string;
  begin
    Password_Etalon := 'pascal';
    Writeln('Введите пожалуйста пароль:  '); Readln(Paswword_Ask);
    if Password_Etalon = Paswword_Ask
      then Writeln('Проходите пожалуйста.')
      else Writeln('Доступ запрещён.');
      Writeln('Для завершения нажмите пожалуйста Enter.');  Readln;
  end.