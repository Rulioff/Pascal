﻿{Z_1_39 Проверка на Фибоначчи.}
{Дано число, программа должна напечатать «ДА», если оно принадлежит ряду Фибоначчи,
и «НЕТ» в противном случае.}
var
  number, numberE, numberF, numberN, buffer: integer;
  hasFibonacci: boolean;

begin
  write('Введите число - от 1 до ∞, пожалуйста: ');
  readln(numberE);
  
//  randomize();
//  numberN := 1 + random(99999);
  
  number := 1;
  buffer := 0;
  hasFibonacci := numberE = numberF;
  numberF := 0;
  
  repeat
   begin
      numberF := number + buffer;
      number := buffer;
      buffer := numberF;
   //   numberN := numberN + 1;
    end;
    if numberF = numberE then begin
      hasFibonacci := true;
      break;
    end;
  until numberE = numberF = false;
  
  writeln(numberE, ' ', numberF, ' ', hasFibonacci,' ', numberN);
  
  if hasFibonacci = true then
  writeln('Число ', numberE, ' принадлежит ряду Фибоначчи? ', 'Да.')
  else
  writeln('Число ', numberE, ' принадлежит ряду Фибоначчи? ', 'Нет.') 
end.