{ P_30_V Сформируйте файл «Numbers.txt», поместив в него 100 случайных чисел
в диапазоне от 0 до 999 (некоторые числа могут повторяться). Затем найдите в этом
файле: 1) максимальное и минимальное число; 2) сумму всех чисел; 3) среднее
арифметическое — напечатайте его с двумя знаками после точки. }

program P_30_V;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

const
  UpperBound = 999;
  NumbersCount = 100;

var
  Numbers: Text;
  Number, MaxNumber, MinNumber, Amount, Index: integer;
  ArithmeticMean: double;

begin
  Assign(Numbers, 'Numbers_P_30_V.txt');
  Rewrite(Numbers);
  Randomize;
  for Index := 1 to NumbersCount do
    Write(Numbers, Random(UpperBound), ' ');
  Close(Numbers);

  MaxNumber := 0;
  MinNumber := UpperBound;
  Amount := 0;
  Index := 0;
  ArithmeticMean := 0;
  Reset(Numbers);

  while not Eoln(Numbers) do
  begin
    Read(Numbers, Number);

    if Number > MaxNumber then
      MaxNumber := Number;

    if Number < MinNumber then
      MinNumber := Number;

    Amount := Amount + Number;

    ArithmeticMean := ArithmeticMean + Number;
    Inc(Index);
  end;
  ArithmeticMean := ArithmeticMean / Index;

  WriteLn('Максимальное число = ', MaxNumber, '.');
  WriteLn('Минимальное число = ', MinNumber, '.');
  WriteLn('Сумма всех чисел = ', Amount, '.');
  WriteLn('Среднее арифметическое = ',
    ArithmeticMean: 1: 2, '.');

  Close(Numbers);
  ReadLn;
end.
