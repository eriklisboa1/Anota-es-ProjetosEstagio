object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 201
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 48
    Top = 39
    Width = 336
    Height = 121
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BtnPesquisar: TBitBtn
    Left = 48
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = BtnPesquisarClick
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    ReadOnly = True
    Connected = True
    HostName = 'localhost'
    Port = 5432
    Database = 'db_sgc'
    User = 'postgres'
    Password = 'g@10trend$3'
    Protocol = 'postgresql'
    Left = 16
    Top = 160
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 56
    Top = 160
  end
end
