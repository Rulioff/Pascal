{ P_19_B Напишите и испытайте процедуру (назовем её Line — «линия»),
печатающую строку заданной длины, составленную из звездочек, например:
Line(3); => печатает «***», Line(7); => печатает «*******» }

program P_19_B;

  procedure Line(Count: integer);

  var
    Index: integer;

  begin
    for Index := 1 to Count do
      Write('*');
    Writeln;
  end;

begin
  Line(3);
  Line(7);
  Readln;
end.
