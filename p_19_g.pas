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
{  Write('Введите первое число, пожалуйста: ');
  Readln(NumberFirst);
  Write('Введите второе число, пожалуйста: ');
  Readln(NumberSecond);}
  Arithmetic(25, 15);
  Arithmetic(10, 20);
  Readln;
end.
