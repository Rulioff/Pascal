{P_13_1 Первый маршрут проезда.}
var
  Waypoint_A, Waypoint_B : boolean;  Open : string;
begin
  Write('Введите 1, если улица А открыта ');  Readln(Open);   Waypoint_A := Open = '1';
  Write('Введите 1, если улица B открыта ');  Readln(Open);   Waypoint_B := Open = '1';
  Open := 'Можно идти.';
  if Waypoint_A and Waypoint_B then Open := 'Можно ехать.';
     Writeln(Open);
     Writeln('Для выхода нажмите пожалуйста Enter');   Readln;
end.