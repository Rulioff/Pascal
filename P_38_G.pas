{ P_38_G Генерация пароля длиной не менее восьми символов. В пароль входят
символы трёх сортов: цифры, заглавные и строчные латинские буквы, например:
«7UpJ7rsT», «PasCal701». Сделайте четыре варианта так, чтобы соблюдались
следующие условия:
· символ каждого сорта входит в пароль не менее двух раз, некоторые
символы могут повторяться;
· все символы пароля уникальны (примените множество);
· символы одного сорта не соседствуют, например: «Pa7sCaL5»,
уникальность символов не требуется;
· символы одного сорта не соседствуют и все символы уникальны. }
program P_38_G;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

var
  AllSymbols: string;
  Numbers, Chars, CapsChars: string;

  function GetNumbers(): string;
  var
    Symbol: char;
    aNumbers: string;

  begin
    aNumbers := '';
    for Symbol := '0' to '9' do
      aNumbers := aNumbers + Symbol;
    Result := aNumbers;
  end;

  function GetChars(): string;
  var
    Symbol: char;
    aChars: string;

  begin
    aChars := '';
    for Symbol := 'a' to 'z' do
      aChars := aChars + Symbol;
    Result := aChars;
  end;

  function GetCapsChars(): string;
  var
    Symbol: char;
    aCapsChars: string;

  begin
    aCapsChars := '';
    for Symbol := 'A' to 'Z' do
      aCapsChars := aCapsChars + Symbol;
    Result := aCapsChars;
  end;

  function MixSymbols(Symbols: string): string;
  var
    MixedSymbols: string;
    Positions: set of byte;
    Symbol: char;
    SymbolsLength, RandomPosition: byte;

  begin
    MixedSymbols := '';
    Positions := [];
    SymbolsLength := Length(Symbols);
    Randomize;

    while Length(MixedSymbols) < SymbolsLength do
    begin
      repeat
        RandomPosition := Random(SymbolsLength) + 1;
      until not (RandomPosition in Positions);
      Symbol := Symbols[RandomPosition];
      MixedSymbols := MixedSymbols + Symbol;
      Positions := Positions + [RandomPosition];
    end;
    Result := MixedSymbols;
  end;

  function GetFirstPassword(aNumbers, aChars, aCapsChars: string): string;
  var
    FirstPassword: string;
    RandomLength: byte;

  begin
    FirstPassword := '';
    RandomLength := 8 + Random(5);

    while Length(FirstPassword) < RandomLength do
    begin
      FirstPassword := FirstPassword + aNumbers[Random(10)];
      if Length(FirstPassword) >= RandomLength then break;

      FirstPassword := FirstPassword + aChars[Random(26)];
      if Length(FirstPassword) >= RandomLength then break;

      FirstPassword := FirstPassword + aCapsChars[Random(26)];
      if Length(FirstPassword) >= RandomLength then break;
    end;
    Result := MixSymbols(FirstPassword);
  end;

  function GetSecondPassword(var aAllSymbols: string): string;
  var
    UnicSymbols: set of char;
    UniSymbol: char;
    SecondPassword: string;
    RandomLength: byte;

  begin
    UnicSymbols := [];
    SecondPassword := '';
    RandomLength := 8 + Random(5);

    while Length(SecondPassword) < RandomLength do
    begin
      UniSymbol := aAllSymbols[Random(62)];
      if not (UniSymbol in UnicSymbols) then
      begin
        UnicSymbols := UnicSymbols + [UniSymbol];
        SecondPassword := SecondPassword + UniSymbol;
      end;
    end;
    Result := SecondPassword;
  end;

  function GetThirdPassword(aNumbers, aChars, aCapsChars: string): string;
  var
    ThirdPassword: string;
    RandomLength: byte;

  begin
    RandomLength := 8 + Random(5);
    ThirdPassword := '';
    while Length(ThirdPassword) < RandomLength do
    begin
      ThirdPassword := ThirdPassword + aNumbers[Random(10)];
      if Length(ThirdPassword) >= RandomLength then break;

      ThirdPassword := ThirdPassword + aChars[Random(26)];
      if Length(ThirdPassword) >= RandomLength then break;

      ThirdPassword := ThirdPassword + aCapsChars[Random(26)];
      if Length(ThirdPassword) >= RandomLength then break;
    end;
    Result := ThirdPassword;
  end;

  function GetFourthPassword(aNumbers, aChars, aCapsChars: string): string;

  var
    UnicSymbols: set of char;
    UnicNumber, UnicChar, UnicCapsChar: char;
    FourthPassword: string;
    RandomLength: byte;

  begin
    UnicSymbols := [];
    FourthPassword := '';
    RandomLength := 8 + Random(5);

    while Length(FourthPassword) < RandomLength do
    begin
      repeat
        UnicNumber := aNumbers[Random(10)];
      until not (UnicNumber in UnicSymbols);
      FourthPassword := FourthPassword + UnicNumber;
      UnicSymbols := UnicSymbols + [UnicNumber];
      if Length(FourthPassword) >= RandomLength then break;

      repeat
        UnicChar := aChars[Random(26)];
      until not (UnicChar in UnicSymbols);
      FourthPassword := FourthPassword + UnicChar;
      UnicSymbols := UnicSymbols + [UnicChar];
      if Length(FourthPassword) >= RandomLength then break;

      repeat
        UnicCapsChar := aCapsChars[Random(26)];
      until not (UnicCapsChar in UnicSymbols);
      FourthPassword := FourthPassword + UnicCapsChar;
      UnicSymbols := UnicSymbols + [UnicCapsChar];
      if Length(FourthPassword) >= RandomLength then break;
    end;
    Result := FourthPassword;
  end;

begin
  Randomize;
  Numbers := GetNumbers();
  Chars := GetChars();
  CapsChars := GetCapsChars();
  AllSymbols := Numbers + Chars + CapsChars;

  WriteLn('Генерация пароля длиной не менее восьми символов.');
  Write('1) Символ каждого сорта входит в пароль не менее двух раз, возможны повторы: ');
  WriteLn(GetFirstPassword(Numbers, Chars, CapsChars));
  Write('2) Все символы пароля уникальны: ');
  WriteLn(GetSecondPassword(AllSymbols));
  Write('3) Символы одного сорта не соседствуют: ');
  WriteLn(GetThirdPassword(Numbers, Chars, CapsChars));
  Write('4) Cимволы одного сорта не соседствуют и все символы уникальны: ');
  WriteLn(GetFourthPassword(Numbers, Chars, CapsChars));
  ReadLn;
end.
