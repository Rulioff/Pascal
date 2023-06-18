{Z_1_35 Наибольший общий делитель (НОД).}
{Пусть даны два целых числа N и M, надо найти их наибольший общий делитель.}
var
  numberN, numberM, buffer, gcd: integer;

begin
  write('Введите число N, пожалуйста: ');
  readln(numberN);
  
  write('Введите число M, пожалуйста: ');
  readln(numberM);
  
  if numberN > numberM then begin
    buffer := numberN;
    numberN := numberM;
    numberM := buffer;
  end;
  
  //writeln(numberN, ' ', numberM);
  
  while numberM <> numberN do
  begin
      gcd := numberM - numberN;
      numberM := numberN;
      numberN := gcd;
  //    writeln(numberN, ' ', numberM, ' ', gcd);
  end;
  
  writeln('Наибольший общий делитель = ', gcd);
end.