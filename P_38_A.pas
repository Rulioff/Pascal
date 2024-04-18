{ P_38_A Напишите программу для решения директорских задач:
· в трех кружках:
· в двух кружках и не более;
· только в одном из кружков.
и повторите подвиг контрразведчика. }
program P_38_A;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

const
  CountMax = 20;
type
  TypeSet = set of 1..CountMax;

  procedure ReadSet(var ArgumentFile: Text; var ArgumentSet: TypeSet);
  var
    Index: integer;
  begin
    while not Eoln(ArgumentFile) do
    begin
      Read(ArgumentFile, Index);
      ArgumentSet := ArgumentSet + [Index];
    end;
    Readln(ArgumentFile);
  end;

  procedure WriteSet(var ArgumentFile: Text; const ArgumentSet: TypeSet);
  var
    Index: integer;
  begin
    for Index := 1 to 255 do
      if Index in ArgumentSet then
        Write(ArgumentFile, Index: 4);
    Writeln(ArgumentFile);
  end;

var
  Activists, FirstClub, SecondClub, ThirdClub: TypeSet;
  FileIn, FileOut: Text;
  Active: byte;

begin
  Assign(FileIn, 'P_38_A.in');
  Reset(FileIn);

  Assign(FileOut, 'P_38_A.out');
  Rewrite(FileOut);
  FirstClub := [];
  ReadSet(FileIn, FirstClub);
  SecondClub := [];
  ReadSet(FileIn, SecondClub);
  ThirdClub := [];
  ReadSet(FileIn, ThirdClub);

  WriteLn('Какова активность? Введите 1, 2 или 3 кружка.');
  ReadLn(Active);
  begin
    if Active = 3 then
      Activists := FirstClub * SecondClub * ThirdClub;
    if Active = 2 then
      Activists := FirstClub * SecondClub + FirstClub * ThirdClub +
        SecondClub * ThirdClub - FirstClub * SecondClub * ThirdClub;
    if Active = 1 then
      Activists := (FirstClub + SecondClub + ThirdClub) -
        (FirstClub * SecondClub + FirstClub * ThirdClub + SecondClub * ThirdClub);
  end;

  WriteSet(FileOut, Activists);
  Close(FileIn);
  Close(FileOut);
end.
