{ P_18_1 ��ᯥ�⪠ �⤥���� ᨬ����� ��ப�.}
program P_18_1;

{$CODEPAGE CP866}
var
  Line: string;
  Symbol: char;
  Index, SymbolsCount: integer;
begin
  repeat
    Write('������ ��ப�, ��������: ');
    Readln(Line);
    SymbolsCount := Length(Line); { ��।��塞 ����� ��ப� }
    for Index := 1 to SymbolsCount do
    begin
      Symbol := Line[Index]; { �롨ࠥ� ��।��� ᨬ��� }
      Writeln(Symbol); { � ���⠥� ��� � �⤥�쭮� ��ப� }
    end;
  until SymbolsCount = 0; { SymbolsCount=0, �᫨ ��ப� ���� }
  Writeln('��� ��室� ������ Enter, ��������.');
  Readln();
end.
