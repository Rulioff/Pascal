{ P_23_V Напишите функцию и программу для её проверки, принимающую число и
возвращающую строку: слово «четное» или «нечетное» в зависимости от четности
или нечетности параметра. Подсказка: для проверки четности числа N надо
проверить остаток от его деления на два: if (N mod 2) = 0 then. }
program P_23_V;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Number: integer; { глобальная переменная }

  function EvenNumber(Even: integer): string;
  begin
    if (Even mod 2) = 0 then
      Result := ' чётное'
    else
      Result := ' нечётное';
  end;

begin
  Write('Введите число, пожалуйста: ');
  Readln(Number);
  EvenNumber(Number);
  Writeln('Число ', Number, EvenNumber(Number), '.');
  ReadLn;
end.
