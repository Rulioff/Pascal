{Z_1.4 Количество цифр в числе.}
var number, numberTwo, amount : integer;
  dig : byte;
  
begin  
    write('Введите первое слагаемое: ');
    readln(number);
    
    write('Введите второе слагаемое: ');
    readln(numberTwo);
    
    dig := 0;
    amount := number + numberTwo;

    while amount > 0 do begin
      amount := amount div 10;
      inc(dig);
    end;

    writeln('Сумма чисел: ', number, ' и ', numberTwo, ' содержит ', dig, ' цифр.');
end.