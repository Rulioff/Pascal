{ P_25_V Напишите три функции для подсчета:
· количества строк в файле;
· количества видимых символов в файле;
· количества всех символов файла (объем файла).
Функции принимают один параметр – ссылку на файловую переменную. Напишите
программу, подсчитывающую упомянутые выше характеристики файла.}

program P_25_V;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

var
  FileInput: Text;

  function CountLines(var FileTxt: Text): integer;
  var
    Index: integer;

  begin
    index := 0;
    Reset(FileTxt);
    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt);
      Inc(Index); // Подсчёт строк
    end;
    CountLines := Index;
  end;

  function CountChars(var FileTxt: Text): integer;
  var
    Index: integer;
    Line: string;

  begin
    Index := 0;
    Reset(FileTxt);

    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt, Line);
      Index := Index + Length(Line); // Подсчёт видимых символов
    end;
    CountChars := Index;
  end;

  function CountSize(var FileTxt: Text): integer;
  var
    Index: integer;
    Line: string;

  begin
    Index := 0;
    Reset(FileTxt);

    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt, Line);
      Index := Index + Length(Line) + 2; // Размер строки учитывая CR
    end;
    CountSize := Index;
  end;

begin
  Assign(FileInput, 'P_25_V.pas');
  WriteLn('Число строк: ', CountLines(FileInput));
  WriteLn('Число видимых символов: ', CountChars(FileInput));
  WriteLn('Размер файла: ', CountSize(FileInput), ' байт.');
  Close(FileInput);
  ReadLn;
end.
