{P_19_2 �ਬ������ ��楤��� � ��ࠬ��஬.}
program P_19_2;
var
  man: string;

procedure Pause (msg : string); //--- ������� ��楤��� � ��ࠬ��஬ msg ---
begin
  write(msg);
  readln;
end;

begin //--- ������� �ணࠬ�� ---
  writeln('��� ⥡� �����?');
  readln(Man);
  writeln('��ࠢ���, ', man);
  Pause('������ Enter:'); //�맮� ��楤���.
  Pause('��� ࠧ:');
  Pause('� ��� ࠧ��!');
end.

