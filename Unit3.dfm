object Form3: TForm3
  Left = 191
  Top = 124
  Width = 498
  Height = 451
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 48
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 112
    Top = 272
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object Edit1: TEdit
    Left = 152
    Top = 48
    Width = 249
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 152
    Top = 88
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 88
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 88
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 136
    Width = 360
    Height = 120
    DataSource = DataModule4.DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 200
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object Button4: TButton
    Left = 344
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
