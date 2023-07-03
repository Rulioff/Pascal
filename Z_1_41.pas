{Z_1_41 Печать простых чисел.}
{Ввести два целых положительных числа A и B и напечатать все простые числа, лежащие
на этом интервале (включая крайние). Сделать два варианта программы:
1) Когда известно, что A < B
2) Когда соотношение между A и B неизвестно.}
program Z_1_41;

var
  firstNumber, lastNumber, currentNumber, divisor, shift: integer;
  isEmpty, isPrimeNumber: boolean;

begin
  repeat
    Write('Введите целое положительное число A, пожалуйста: ');
    readln(firstNumber);

    Write('Введите целое положительное число B, пожалуйста: ');
    ReadLn(lastNumber);
  until (firstNumber > 0) and (lastNumber > 0);

  // Для 1-го варианта удалите строки 20 ... 24.
  if firstNumber > lastNumber then
  begin
    shift := firstNumber;
    firstNumber := lastNumber;
    lastNumber := shift;
  end;
  isEmpty := True;

  for currentNumber := firstNumber to lastNumber do
  begin
    divisor := 0;
    isPrimeNumber := True;

    repeat
      divisor += 1;
      if (currentNumber mod divisor = 0) and (divisor <> 1) and
        (currentNumber <> divisor) then
      begin
        isPrimeNumber := False;
        break;
      end;
    until currentNumber <= divisor;

    if isPrimeNumber then
    begin
      isEmpty := False;
      Write('Число ', currentNumber, ' проcтое. ');
    end;
  end;

  if isEmpty then writeln('Пусто.');

  ReadLn;
end.