{P_14_A Проверка ошибок с типом данных.}
var N, M : integer;
     S : string;
begin
     N:= '10';    {P_14_A.pas(4) : Нельзя преобразовать тип string к integer}
     S:= N + 5;     {P_14_A.pas(5) : Нельзя преобразовать тип integer к string}
     M:= S - 1;     {P_14_A.pas(6) : Нельзя преобразовать тип string к integer}
     if S=N then;   {P_14_A.pas(7) : Нет перегруженной подпрограммы с такими типами параметров}
end.