{ P_19_G Напишите и испытайте процедуру, принимающую два параметра — числа,
и печатающую их сумму и их разность }

program P_19_G;

{$mode objfpc}{$H+}
{$codepage UTF8}
  procedure Arithmetic(NumberFirst, NumberSecond: integer);

  begin
    Writeln('Сумма = ', NumberFirst + NumberSecond, '. Разность = ',
      NumberFirst - NumberSecond);
  end;

begin
  Arithmetic(22, 11);
  Arithmetic(10, 24);
  Readln;
end.
