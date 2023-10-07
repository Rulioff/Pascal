{P_25_D Усовершенствуйте программу «вопрос-ответ» (P_16_A) с тем, чтобы
ответы хранились не в программе, а в отдельном текстовом файле. Тогда
пользователи программы сами смогут сочинять ответы.
P_16_A – игра «вопрос – ответ» Random(100).
Какой ответ будет выпадать чаще других, если условием в операторе CASE
нашей программы поставить выражение Random(100)?}

program P_25_D;

{$mode objfpc}{$H+}
{$codepage UTF8}
uses
  SysUtils;

var
  Question: string;

  function CountLines(var FileTxt: Text): integer;

  var
    Index: integer;

  begin
    Index := 0;
    Reset(FileTxt);
    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt);
      Inc(Index);
    end;
    CountLines := Index;
  end;

  procedure AnswerOutput;

  var
    Answer: string;
    Position, NumberLine: integer;
    FileTxt: Text;

  begin
    randomize;
    Position := 0;
    Assign(FileTxt, 'Answer.txt'); // Файл в кодировке: 1251.
    NumberLine := 1 + Random(CountLines(FileTxt));
    Reset(FileTxt);
    while not EOF(FileTxt) do
    begin
      ReadLn(FileTxt, Answer);
      Inc(Position);

      if Position = NumberLine then
      begin
        WriteLn(Answer);
        Break;
      end;
    end;
    Close(FileTxt);
  end;

begin
  repeat
    Write('Задайте вопрос пожалуйста: ');
    Readln(Question);

    if Question = '' then break;
    AnswerOutput;
  until False;
  ReadLn;
end.
