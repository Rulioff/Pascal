{P_13_G Орлянка.}
var
  coin_1, coin_2, coin_3 : boolean; toss, win : string;
begin
  Write('Введите 1 если на первой монете выпал орёл '); Readln(toss);   coin_1 := toss = '1';
  Write('Введите 2 если на первой монете выпал орёл '); Readln(toss);   coin_2 := toss = '1';
  Write('Введите 3 если на первой монете выпал орёл '); Readln(toss);   coin_3 := toss = '1';

  toss  := 'Выигрывает казино.';
  if coin_1 and coin_2 and coin_3
     then win := 'Выиграл игрок 1';     Writeln(win);
  if not coin_1 and not coin_2 and not coin_3
     then win := 'Выиграл игрок 2';     Writeln(win);
  if (coin_1 = coin_2 = coin_3) or (not coin_1 and not coin_2 and not coin_3)
     then win := 'Выиграл игрок 3';     Writeln(win);
  if not coin_1 and coin_2 and coin_3
     then win := 'Выиграл игрок 4';     Writeln(win);
  if coin_1 and (coin_2 = coin_3)
     then win := 'Выиграл игрок 5';     Writeln(win);
//  else win := 'Казино закрывается';

//     Writeln(win);
     Writeln('Для выхода нажмите пожалуйста Enter');   Readln;
end.