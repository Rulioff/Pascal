{P_17_D Умножение суммированием.}
{Пусть программа запросит два числа N и M, а затем вычислит их
произведение без использования операции умножения (*). Подсказка: организуйте
цикл суммирования N раз числа M.}

var
  number, number2, amount : integer;
  begin
    write('Введите первый множитель: ');
    readln(number);
    
    write('Введите второй множитель: ');
    readln(number2);
    amount := number;
    
    repeat
      amount := amount + number;
      dec(number2);
    until number2 <= 1;
    
    writeln('Произведение = ', amount);
    
  end.