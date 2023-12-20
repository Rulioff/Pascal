{P_33_J В тесто кладут четырех главных ингредиента: муку, сахар, яичный
порошок и молоко. Всё это смешивается в пропорции, заданной рецептом.
Например, рецепт 100:5:7:500 означает, что на 100 граммов муки кладут 5
граммов сахара, 7 граммов яичного порошка и 500 граммов молока. У пекаря есть
некоторое количество всех ингредиентов, и он хочет замесить из них максимально
возможное количество теста, соблюдая рецепт. Ваша программа должна ввести:
· Рецепт – это 4 целых числа.
· Исходное количество ингредиентов – это 4 действительных числа.
Программа должна напечатать:
· Общее количество полученного теста с точностью два знака после точки.
· Остатки ингредиентов – 4 числа с точностью два знака после точки.}

program P_33_J;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Portion, MinPortion, AnotherPortion: integer;
  FlourFractions, SugarFractions, EggFractions, MilkFractions,
  FlourWeight, SugarWeight, EggWeight, MilkWeight, Dough: single;

begin
  WriteLn('Пожалуйста задайте в пропорциях ингридиенты для рецепта: муку, сахар, яичный порошок и молоко');
  ReadLn(FlourFractions, SugarFractions, EggFractions, MilkFractions);
  WriteLn('Пожалуйста укажите сколько имеется ингридиентов для рецепта: муку, сахар, яичный порошок и молоко');
  ReadLn(FlourWeight, SugarWeight, EggWeight, MilkWeight);
  if (FlourWeight / FlourFractions) < (SugarWeight / SugarFractions) then
    // Определяем, если целых порций муки меньше чем сахара.
    Portion := Trunc(FlourWeight / FlourFractions)
  // то запоминаем порции муки
  else
    Portion := Trunc(SugarWeight / SugarFractions);
  // иначе запоминаем порции сахара.
  if (EggWeight / EggFractions) < (MilkWeight / MilkFractions) then
    // Определяем, если целых порций яиц меньше чем молока.
    AnotherPortion := Trunc(EggWeight / EggFractions)
  // то запоминаем число порций яиц
  else
    AnotherPortion := Trunc(MilkWeight / MilkFractions);
  // иначе запоминаем число порций молока.
  if Portion < AnotherPortion then
    // Сравниваем число 2 предидущих порций, если первое меньше то
    MinPortion := Portion
  // запоинаем первое число порций, как наименьшее
  else
    MinPortion := AnotherPortion;
  // иначе второе число запоминаем, как наименьшее.
  Dough := (FlourFractions + SugarFractions + EggFractions + MilkFractions) * MinPortion;
  // Определяем сколько всего теста.
  WriteLn('Общее количество полученного теста: ',
    Dough: 0: 2);
  WriteLn('Остатки ингредиентов: ', FlourWeight -
    FlourFractions * MinPortion: 0: 2, ' ', SugarWeight - SugarFractions *
    MinPortion: 0: 2, ' ', EggWeight - EggFractions * MinPortion: 0: 2,
    ' ', MilkWeight - MilkFractions * MinPortion: 0: 2);
  // Определяем и печатаем сколько получится остатков.
  ReadLn;
end.
