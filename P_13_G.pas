{P_13_G Орлянка.}
var
  Coin_1, Coin_2, Coin_3 : boolean; Toss : string;
begin
  Write('Введите 1 если на первой монете выпал орёл '); Readln(Toss);   Coin_1 := Toss = '1';
  Write('Введите 2 если на первой монете выпал орёл '); Readln(Toss);   Coin_2 := Toss = '1';
  Write('Введите 3 если на первой монете выпал орёл '); Readln(Toss);   Coin_3 := Toss = '1';

  Toss  := 'Выигрывает казино.';
  if Coin_1 and Coin_2 and Coin_3
     then Toss := 'Выиграл игрок 1'
  else if not Coin_1 and not Coin_2 and not Coin_3
     then Toss := 'Выиграл игрок 2'
  else if not (Coin_1 = Coin_2) and (Coin_2 = Coin_3)
     then Toss := 'Выиграл игрок 3'
  else if not Coin_1 and Coin_2 and Coin_3
     then Toss := 'Выиграл игрок 4'
  else if Coin_1 and (Coin_2 = Coin_3)
     then Toss := 'Выиграл игрок 5'
  else Toss := 'Казино закрывается';

     Writeln(Toss);
     Writeln('Для выхода нажмите пожалуйста Enter');   Readln;
end.