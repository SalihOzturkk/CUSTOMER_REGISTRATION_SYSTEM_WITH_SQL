object Form1: TForm1
  Left = 219
  Top = 137
  Width = 979
  Height = 563
  Caption = 'KOD '#304'LE VER'#304'TABANINA BA'#286'LANTI'
  Color = 8404992
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 32
    Width = 320
    Height = 120
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 360
    Top = 40
    Width = 129
    Height = 113
    Caption = 'SQL BA'#286'LANTI'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 168
    Width = 320
    Height = 120
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 360
    Top = 168
    Width = 129
    Height = 121
    Caption = 'ACCDB BA'#286'LANTI '
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid3: TDBGrid
    Left = 16
    Top = 304
    Width = 320
    Height = 120
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 360
    Top = 304
    Width = 129
    Height = 121
    Caption = 'MDB BA'#286'LANTI'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ADOTable1: TADOTable
    Left = 136
    Top = 48
  end
  object DataSource1: TDataSource
    Left = 168
    Top = 48
  end
  object ADOTable2: TADOTable
    Left = 136
    Top = 184
  end
  object DataSource2: TDataSource
    Left = 168
    Top = 184
  end
  object ADOTable3: TADOTable
    Left = 128
    Top = 328
  end
  object DataSource3: TDataSource
    Left = 168
    Top = 328
  end
end
