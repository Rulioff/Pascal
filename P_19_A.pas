{Напишите ещё одну версию процедуры Pause, выводящую сообщение
либо на русском, либо на английском языке. Параметр этой процедуры должен
быть булевым и работать она должна так. Pause(true); -печатается «Нажмите Enter…»-
-Pause(false); -печатается «Press Enter…»-}
program P_19_A;

var
  language: string;

{--- объявление процедуры с параметром hasRus ---}
procedure Pause(hasRus: boolean);
begin
  Pause(true);
  Writeln('Нажмите Ввод');
  Pause(false);
  Writeln('Нажмите Ввод');
end;

begin{--- главная программа ---}
  Write('Выберите язык, пожалуйста: ');
  Readln(language);
  if language = 'Ru' then
    Pause(true);
  if language = 'En' then
    Pause(false);
end.