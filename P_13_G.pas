{P_13_G Бортовой компьютер.}
var
  Street_A, Street_B, Street_C, Street_D, Street_E, Barrier_F, Barrier_G : boolean; Open : string;
begin
  Write('Введите 1 если улица A свободна '); Readln(Open);   Street_A := Open = '1';
  Write('Введите 1 если улица B свободна '); Readln(Open);   Street_B := Open = '1';
  Write('Введите 1 если улица C свободна '); Readln(Open);   Street_C := Open = '1';
  Write('Введите 1 если улица D свободна '); Readln(Open);   Street_D := Open = '1';
  Write('Введите 1 если улица E свободна '); Readln(Open);   Street_E := Open = '1';
  Write('Введите 1 если шлагбаум F опущен '); Readln(Open);   Barrier_F := Open = '1';
  Write('Введите 1 если шлагбаум G опущен '); Readln(Open);   Barrier_G := Open = '1';
  Open  := 'В школу нужно идти пеше.';
  if Street_A and Street_B and not Barrier_F or Street_C and Street_D or Street_E and not Barrier_G
     then Open := 'От дома до школы можно доехать на автобусе.';
     Writeln(Open);
     Writeln('Для выхода нажмите пожалуйста Enter');   Readln;
end.