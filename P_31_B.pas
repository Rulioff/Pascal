{ P_31_B Файл с физическими данными старшеклассников содержит три колонки:
фамилия, рост и вес ученика. Создайте программы для решения следующих задач:
· отбор кандидатов для занятий баскетболом, – рост кандидата должен
составлять не менее 175 см;
· поиск учеников с избыточным весом, для которых разница между ростом
ученика (см) и его весом (кг) составляет менее 100.
Ваши программы должны сформировать соответствующие файлы с
фамилиями и данными учеников. }

program P_31_B;

{$mode objfpc} {$H+} {$codepage UTF8}
uses
  SysUtils;

var
  SchoolchildrensData, BasketballCandidatesData, OverweightSchoolchildrensData: Text;

  function ReadSurname: string;
  var
    Symbol: char;
    Line: string;
  begin
    Line := '';
    repeat
      Read(SchoolchildrensData, Symbol);
    until (Ord(Symbol) > 32) or EOF(SchoolchildrensData);

    repeat
      if Ord(Symbol) > 32 then
        Line := Line + Symbol;
      if Eoln(SchoolchildrensData) then Break;
      Read(SchoolchildrensData, Symbol);
    until Ord(Symbol) <= 32;
    Result := Line;
  end;

  procedure HandleString;
  var
    Surname: string;
    Number, Height, Weight: integer;
  begin
    Surname := ReadSurname;

    if Length(Surname) > 0 then
    begin
      while Length(Surname) < 18 do
        Surname := Surname + ' ';

      while not Eoln(SchoolchildrensData) do
      begin
        Read(SchoolchildrensData, Number);
        Height := Number;
        Read(SchoolchildrensData, Number);
        Weight := Number;
      end;

      if Height >= 175 then
        Writeln(BasketballCandidatesData, Surname: 18, Height: 8, Weight: 8);

      if (Height - Weight) < 100 then
        Writeln(OverweightSchoolchildrensData, Surname: 18, Height: 8, Weight: 8);
    end;
  end;

begin
  Assign(SchoolchildrensData, 'P_31_B_SchoolchildrensData.txt');
  Reset(SchoolchildrensData);
  Assign(BasketballCandidatesData, 'P_31_B_CandidatesData.txt');
  Rewrite(BasketballCandidatesData);
  Assign(OverweightSchoolchildrensData, 'P_31_B_OverweightData.txt');
  Rewrite(OverweightSchoolchildrensData);
  Writeln(BasketballCandidatesData, 'Фамилия:': 12, 'Рост:': 16,
    'Вес:': 7);
  Writeln(OverweightSchoolchildrensData, 'Фамилия:': 12, 'Рост:': 16,
    'Вес:': 7);

  while not EOF(SchoolchildrensData) do
    HandleString;

  Close(SchoolchildrensData);
  Close(BasketballCandidatesData);
  Close(OverweightSchoolchildrensData);
  ReadLn;
end.
