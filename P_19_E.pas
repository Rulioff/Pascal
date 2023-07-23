{Почтальон разносит газеты по улице, состоящей из N домов. Четные и
нечетные номера расположены по разные стороны улицы. В здравом уме
почтальон не рискует лишний раз переходить её. Ваша программа должна
напечатать последовательность номеров, по которым будут разнесена почта, когда
почтальон начинает работу:
· с первого дома;
· со второго дома;
· с N-го (то есть последнего) дома.}

program P_19_E;

{$mode objfpc}{$H+}
{$codepage UTF8}

var
  Index, CountDown, NumberHouses: integer;
begin
  Write('Введите число домов, пожалуйста: ');
  Readln(NumberHouses);

  Writeln('Почтальон начал с 1-го:');
  for Index := 1 to NumberHouses do
    if Index mod 2 <> 0 then
      Write(Index, ' ');
  for Index := NumberHouses downto 2 do
    if Index mod 2 = 0 then
      Write(Index, ' ');
  Writeln;

  Writeln('Почтальон начал со 2-го:');
  for Index := 2 to NumberHouses do
    if Index mod 2 = 0 then
      Write(Index, ' ');
  for Index := NumberHouses downto 1 do
    if Index mod 2 <> 0 then
      Write(Index, ' ');
  Writeln;

  Writeln('Почтальон начал с последнего:');
  CountDown := NumberHouses mod 2; { CountDown=0, если NumberHouses четное }
  for Index := NumberHouses downto 1 do
    if Index mod 2 = CountDown then
      Write(Index, ' ');
  for Index := 1 to NumberHouses do
    if Index mod 2 <> CountDown then
      Write(Index, ' ');
  Writeln;
  Readln;
end.
