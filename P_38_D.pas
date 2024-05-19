{ P_38_D ) Напишите четыре булевы функции, проверяющие, является ли введенная
пользователем строка правильно сформированным паролем согласно условиям
предыдущей задачи.
P_38_G Генерация пароля длиной не менее восьми символов. В пароль входят
символы трёх сортов: цифры, заглавные и строчные латинские буквы, например:
«7UpJ7rsT», «PasCal701». Сделайте четыре варианта так, чтобы соблюдались
следующие условия:
· символ каждого сорта входит в пароль не менее двух раз, некоторые
символы могут повторяться;
· все символы пароля уникальны (примените множество);
· символы одного сорта не соседствуют, например: «Pa7sCaL5»,
уникальность символов не требуется;
· символы одного сорта не соседствуют и все символы уникальны. }
program P_38_D;

{$mode objfpc}{$codepage UTF-8}{$H+}

uses
  SysUtils;

type
  TypeChars = set of char;

var
  Password: string;

  function GetNumbers(): TypeChars;
  var
    Number: char;
    SetNumbers: set of char;

  begin
    SetNumbers := [];
    for Number := '0' to '9' do
      SetNumbers := SetNumbers + [Number];
    Result := SetNumbers;
  end;

  function GetLetters(): TypeChars;
  var
    Letter: char;
    SetLetters: set of char;

  begin
    SetLetters := [];
    for Letter := 'a' to 'z' do
      SetLetters := SetLetters + [Letter];
    Result := SetLetters;
  end;

  function GetCapsLetters(): TypeChars;
  var
    CapsLetter: char;
    SetCapsLetters: set of char;

  begin
    SetCapsLetters := [];
    for CapsLetter := 'A' to 'Z' do
      SetCapsLetters := SetCapsLetters + [CapsLetter];
    Result := SetCapsLetters;
  end;

  function IsFirstConditionTrue(var Password: string): boolean;

  var
    Index, NumbersCount, LettersCount, CapsLettersCount: byte;
    Numbers, Letters, CapsLetters: set of char;

  begin
    NumbersCount := 0;
    LettersCount := 0;
    CapsLettersCount := 0;
    Numbers := GetNumbers();
    Letters := GetLetters();
    CapsLetters := GetCapsLetters();
    Result := False;

    for Index := 1 to Length(Password) do
    begin
      if (NumbersCount > 1) and (LettersCount > 1) and (CapsLettersCount > 1) then
      begin
        Result := True;
        Break;
      end;

      if Password[Index] in Numbers then
        Inc(NumbersCount);

      if Password[Index] in Letters then
        Inc(LettersCount);

      if Password[Index] in CapsLetters then
        Inc(CapsLettersCount);
    end;
  end;

  function IsSecondConditionTrue(var Password: string): boolean;

  var
    Index: byte;
    UnicSimbols: set of char;

  begin
    UnicSimbols := [];
    Result := True;

    for Index := 1 to Length(Password) do
    begin
      if Password[Index] in UnicSimbols then
      begin
        Result := False;
        Break;
      end;
      UnicSimbols := UnicSimbols + [Password[Index]];
    end;
  end;

  function IsThirdConditionTrue(var Password: string): boolean;
  var
    Index: byte;
    Numbers, Letters, CapsLetters: set of char;

  begin
    Numbers := GetNumbers();
    Letters := GetLetters();
    CapsLetters := GetCapsLetters();
    Result := True;

    for Index := 1 to Length(Password) do
    begin
      if (Password[Index] in Numbers) and (Password[Index + 1] in Numbers) then
      begin
        Result := False;
        Break;
      end;

      if (Password[Index] in Letters) and (Password[Index + 1] in Letters) then
      begin
        Result := False;
        Break;
      end;

      if (Password[Index] in CapsLetters) and (Password[Index + 1] in CapsLetters) then
      begin
        Result := False;
        Break;
      end;
    end;
  end;

  function IsFourthConditionTrue(): boolean;
  begin
    if (IsSecondConditionTrue(Password) = False) or
      (IsThirdConditionTrue(Password) = False) then
      Result := False
    else
      Result := True;
  end;

begin
  Write('Введите пожалуйста пароль не менее 8 символов: ');
  repeat
    ReadLn(Password);
  until Length(Password) > 7;

  Write('1) Символ каждого сорта входит в пароль не менее двух раз, возможны повторы: ');
  WriteLn(IsFirstConditionTrue(Password));

  Write('2) Все символы пароля уникальны: ');
  WriteLn(IsSecondConditionTrue(Password));

  Write('3) Символы одного сорта не соседствуют, уникальность символов не требуется: ');
  WriteLn(IsThirdConditionTrue(Password));

  Write('4) Символы одного сорта не соседствуют и все символы уникальны: ');
  WriteLn(IsFourthConditionTrue());
  ReadLn;
end.
