{P_32_A Напомню, что функция SizeOf возвращает объём памяти, занимаемый
переменной, например:
Writeln( SizeOf( LongInt ) ); { 4 }
Writeln( SizeOf( M1 ) ); { 1 }
Воспользуйтесь ею для распечатки размеров всех известных вам порядковых
типов данных.}

program P_32_A;

{$mode objfpc} {$codepage UTF-8} {$H+}

uses
  SysUtils;

var
  Month: (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dcb);

begin
  WriteLn(SizeOf(shortint));
  WriteLn(SizeOf(byte));
  WriteLn(SizeOf(integer));
  WriteLn(SizeOf(word));
  WriteLn(SizeOf(longint));
  WriteLn(SizeOf(Month));
  WriteLn(SizeOf(char));
  WriteLn(SizeOf(boolean));

  ReadLn;
end.
