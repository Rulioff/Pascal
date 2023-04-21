// Программа проверяет пароль.
var
  Password_Etalon, Paswword, Answer : string;
  begin
    Password_Etalon := 'pascal';
    Writeln('Введите пожалуйста пароль:  '); Readln(Paswword);
    Answer := 'Доступ запрещён!';
    if Password_Etalon = Paswword
      then Answer := 'Проходите пожалйста';
      Writeln(Answer);
      Writeln('Для завершения программы нажмите пожалуйста Enter');  Readln;
  end.