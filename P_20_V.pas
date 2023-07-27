{Два сотрудника подали своему начальнику заявления на отпуск. Первый
попросил отпустить его с A1 по B1 день (дни отсчитываются с начала года), второй
— с A2 по B2 день (полагаем, что A1<B1 и A2<B2). Однако дело требует, чтобы
кто-то из сотрудников находился на рабочем месте. Мало того, при смене
отдыхающих необходимо не менее 3-х дней их совместной работы — для передачи
дел. Напишите программу с процедурой, принимающей четыре указанных выше
параметра, и печатающей заключение о том, удовлетворяют ли заявления
работников требованиям начальника.}

program P_20_V;

{$mode objfpc}{$H+}
{$codepage UTF8}

  procedure HRDepartment(VacationStarts1, VacationStarts2, VacationEnd1,
    VacationEnd2: integer);

  var
    Vacation: string;
  begin
    if VacationEnd2 > VacationEnd1 then
    begin
      if VacationStarts2 - VacationEnd1 > 3 then
        Vacation := 'Отпуск второго одобрен!'
      else
        Vacation :=
          'На передачу дел нужно 3 дня, в отпуск вторму рано.';
    end
    else
    begin
      if VacationEnd2 - VacationStarts1 > 3 then
        Vacation := 'Отпуск первого одобрен!'
      else
        Vacation :=
          'На передачу дел нужно 3 дня, в отпуск первому рано.';
    end;
    WriteLn(Vacation);
  end;

var
  VacationStarts1, VacationStarts2, VacationEnd1, VacationEnd2: integer;
begin
  WriteLn('Пожалуйста введите сроки первого отпускника: ');
  ReadLn(VacationStarts1, VacationEnd1);

  WriteLn('Пожалуйста введите сроки второго отпускника: ');
  ReadLn(VacationStarts2, VacationEnd2);

  HRDepartment(VacationStarts1, VacationStarts2, VacationEnd1, VacationEnd2);
  ReadLn;
end.
