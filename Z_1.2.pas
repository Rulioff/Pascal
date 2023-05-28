//Z_1_2 Одинаковые цифры.
{Вводится число, программа должна напечатать TRUE (или FALSE в противном случае),
если это число двузначное и обе его цифры одинаковы.}
var number: integer;
  twoEven : boolean;
  
begin  
    writeln('Введите двузначное число с одинаковым значением разряда: ');
    read(number);
    
    if (number > 9) and (number < 100) and ((number div 10) = number mod 10)
      then twoEven := true;
    writeln(' ', twoEven);
end.