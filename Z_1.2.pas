{Z_1.2 Одинаковые цифры.}
var dig : char;
  i : integer;
  number : string;
  bool : boolean;
  
begin  
  for i := 1 to 10 do
    writeln('Введите двузначное число с одинаковым значением разряда: ');
    readln(dig);
    if (length(number) = 2) and ((number[i]) = (number[i + 1]))
      then bool := true;
  for i := 1 to 10 do
   writeln(number[i], ' ', (bool));
end.