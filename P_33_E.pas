{ P_33_E Квадратный корень. Квадрат — это равносторонний прямоугольник, его
площадь вычисляется по формуле S=D•D, где D — сторона квадрата. А когда
площадь S известна, и надо определить сторону D? Тогда из S извлекают
квадратный корень (обозначается символом √). Так, если S=9, то D=√9=3.
Для извлечения корня в Паскале есть функция SQRT. Напишите собственную
функцию MySQRT, прибегнув к методу последовательных приближений. В грубом,
нулевом приближении примем D0=1. Последующее, более точные значения D
будем вычислять по формуле
Di+1 = (Di + S/Di)/2
Так, при S=9 получим D1=(1+9/1)/2= 5, D2=(5+9/5)/2= 3.4 и так далее,
пока абсолютная разность между двумя последовательными значениями D станет
пренебрежимо мала. Функция MySQRT должна принять число и вычислить его
корень с точностью 0.0001. Внутри функции напечатайте промежуточные
значения D. Подсказка: для Di и Di+1 вам потребуются лишь две локальные
переменные.}

program P_33_E;

{$mode objfpc} {$H+} {$codepage UTF8}

uses
  SysUtils;

var
  Square: extended;

  function MySqrt(Square: extended): extended;
  var
    Approximate, NextApproximate: extended;
  begin
    NextApproximate := 1;
    repeat
      Approximate := NextApproximate;
      NextApproximate := (Approximate + Square / Approximate) / 2;
      WriteLn(Approximate: 0: 4, ' ', NextApproximate: 0: 4);
    until Abs(NextApproximate - Approximate) < 0.0001;
    Result := NextApproximate;
  end;

begin
  Write('Пожалуйста, введите площадь квадрата: ');
  ReadLn(Square);
  WriteLn(MySqrt(Square): 0: 4);
  ReadLn;
end.
