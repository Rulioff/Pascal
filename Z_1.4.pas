{Z_1.4 Количество цифр в числе.}
var summand, addend, amount : integer;
  dig : byte;
  
begin  
    write('Введите первое слагаемое: ');
    readln(summand);
    
    write('Введите второе слагаемое: ');
    readln(addend);
    
    dig := 0;
    amount := summand + addend;

    while amount > 0 do begin
      amount := amount div 10;
      inc(dig);
    end;

    writeln('Сумма чисел: ', summand, ' и ', addend, ' содержит ', dig, ' цифр.');
end.