object Form2: TForm2
  Left = 301
  Top = 148
  Width = 979
  Height = 563
  Caption = 'SQL KODU '#304'LE BA'#286'LAN VE KAYDET'
  Color = 16744576
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 40
    Top = 24
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 40
    Top = 56
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 88
    Width = 297
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'NEVSEHIR'
      'ANKARA'
      'SAMSUN'
      'BATMAN'
      'SINOP'
      'KOCAELI')
  end
  object Button1: TButton
    Left = 40
    Top = 120
    Width = 297
    Height = 89
    Cursor = crHandPoint
    Caption = 'S'#304'STEME KAYDET'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 24
    Width = 457
    Height = 169
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler2.mdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT*FROM TABLO1')
    Left = 504
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 536
    Top = 120
  end
end
