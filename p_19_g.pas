{ P_19_G Напишите и испытайте процедуру, принимающую два параметра — числа,
и печатающую их сумму и их разность }

program P_19_G;

  procedure Arithmetic(Sum, Difference: integer);

  var
    NumberFirst, NumberSecond: integer;

  begin
    Sum := NumberFirst + NumberSecond;
    Difference := NumberFirst - NumberSecond;
  end;

begin
  Write('Введите первое число, пожалуйста: ');
  Readln(NumberFirst);
  Write('Введите второе число, пожалуйста: ');
  Readln(NumberSecond);
  Arithmetic(Sum);
  Arithmetic(Difference);
  Readln;
end.
