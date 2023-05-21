{Z_1.4 Количество цифр в числе.}
var summand, addend, amount, number : integer;
  dig : byte;
  
begin  
    write('Введите первое слагаемое: ');
    readln(summand);
    write('Введите второе слагаемое: ');
    readln(addend);
    dig := 0;
    amount := summand + addend;
    number := amount;
    while number > 0 do begin
      number := number div 10;
      inc(dig);
    end;
    //writeln(number);

    writeln('Сумма чисел: ', summand, ' и ', addend, ' содержит ', dig, ' цифр.');
end.