object Form2: TForm2
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Ulogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 272
    Top = 24
    Width = 89
    Height = 46
    BiDiMode = bdLeftToRight
    Caption = 'Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 160
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 168
    Top = 128
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edtusername: TEdit
    Left = 256
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtpassword: TEdit
    Left = 256
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 264
    Top = 152
    Width = 121
    Height = 25
    Caption = 'Masuk'
    TabOrder = 2
  end
  object conZcon: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\tugas akhir visu' +
      'al_Muhammad athaillah_sistem gudang\sistem_gudang.sql'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\tugas akhir visu' +
      'al_Muhammad athaillah_sistem gudang\libmysql.dll'
    Left = 272
    Top = 200
  end
  object zqryZQ1: TZQuery
    Connection = conZcon
    Params = <>
    Properties.Strings = (
      'select * from user')
    Left = 360
    Top = 200
  end
end
