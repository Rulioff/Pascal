{P_27_V Дан файл, строки которого содержат круглые скобки (это может быть
программа или математические выкладки — неважно). Ваша программа должна
распечатать строки, где скобки расставлены неверно.}

program P_27_V;

{$mode objfpc} {$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  SourceFile: Text;
  Line: string;

  function Check(Line: string): boolean;
  var
    Index, PairBrackets: integer;
  begin
    PairBrackets := 0;
    for Index := 1 to Length(Line) do
    begin
      case Line[Index] of
        '(': Inc(PairBrackets);
        ')': Dec(PairBrackets);
      end;
      if PairBrackets < 0 then break;
    end;
    Result := PairBrackets = 0;
  end;

begin
  Assign(SourceFile, 'Source_Text_27_V.txt');
  Reset(SourceFile);

  while not EOF(SourceFile) do
  begin
    ReadLn(SourceFile, Line);

    if not Check(Line) then
      WriteLn(Line);
  end;

  Close(SourceFile);
  ReadLn;
end.
