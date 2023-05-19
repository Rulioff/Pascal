{Z_1.2 Одинаковые цифры.}
var n : array of integer;
  i : integer;
  bool : boolean;
  
begin  
  repeat
    writeln('Введите двузначное число с одинаковым значением разряда: ');
    readln(i);
    if i<>0 then begin
      SetLength(n, Length(n) +1 );
      n[n.Length - 1] := trunc(Log10(abs(i))) + 1;
    end;
   until i= 0;
    if (n[0]) = (n[1])
      then bool := true;
    for i := 0 to n.Length - 1 do writeln(n[i], ' ', (bool));

end.