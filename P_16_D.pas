{P_16_D Танк.}
var
  Direct, Command: integer;

begin
  write('Направление(1-4)= ');
  readln(Direct);
  repeat
    write('Команда (1-3)= ');
    readln(Command);
    case Command of
      1:
        case Direct of { направо }
          1: Direct := 2;
          2: Direct := 3;
          3: Direct := 4;
          4: Direct := 1;
        end;
      2:
        case Direct of { налево }
          1: Direct := 4;
          2: Direct := 1;
          3: Direct := 2;
          4: Direct := 3;
        end;
      3:
        case Direct of { кругом }
          1: Direct := 3;
          2: Direct := 4;
          3: Direct := 1;
          4: Direct := 2;
        end;
    end;
    Writeln('Направление= ', Direct);
  until Command = 0;
end.