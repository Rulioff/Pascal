{ P_18_1 ��ᯥ�⪠ �⤥���� ᨬ����� ��ப�.}
program P_18_1;

{$CODEPAGE CP866}
var
  line: string;
  symbol: char;
  index, symbolsCount: integer;
begin
  repeat
    Write('������ ��ப�, ��������: ');
    Readln(line);
    symbolsCount := Length(line); { ��।��塞 ����� ��ப� }
    for index := 1 to symbolsCount do
    begin
      symbol := line[index]; { �롨ࠥ� ��।��� ᨬ��� }
      Writeln(symbol); { � ���⠥� ��� � �⤥�쭮� ��ப� }
    end;
  until symbolsCount = 0; { symbolsCount=0, �᫨ ��ப� ���� }
end.
