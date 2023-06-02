{P_17_V Обратный отсчёт.}
{Напишите программу, которая, запросив число N, печатала бы числа от 1
до N в обратном порядке.}
var
  number, i : integer;
  begin

      write('Введите число для обратного отсчёта: ');
      
      readln(number);
        for i := number downto 1 do
      writeln(i);
        
  end.