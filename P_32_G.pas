{P_32_G «Не думай о секундах свысока…». Штирлицу подарили секундомер,
который показывал секунды, прошедшие с начала суток. Пусть ваша программа
переведет это число в привычные часы, минуты и секунды.
Подсказки: во-первых, примените операции DIV и MOD. Во-вторых,
переменную для секунд объявите как LONGINT (а не INTEGER), поскольку
количество секунд в сутках (86400) не поместится в типе INTEGER.}

program P_32_G;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  AllSeconds: longint;
  Minutes: word;
  Hours, Seconds: byte;

begin
  Hours := 0;
  Minutes := 0;
  Seconds := 0;
  Write('Максим Максимович, сколько секунд на секундомере? ');
  ReadLn(AllSeconds);
  Hours := AllSeconds div 3600;
  Minutes := AllSeconds div 60 mod 60;
  Seconds := AllSeconds mod 60;
  WriteLn('С начала суток прошло: ', Hours, ' час. ',
    Minutes, ' мин. ', Seconds, ' сек.');
  ReadLn;
end.
