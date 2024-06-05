object Form5: TForm5
  Left = 321
  Top = 125
  Width = 740
  Height = 450
  Caption = 'SATUAN'
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
    Left = 80
    Top = 32
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 80
    Top = 64
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object Label3: TLabel
    Left = 80
    Top = 296
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Edit1: TEdit
    Left = 136
    Top = 32
    Width = 249
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 136
    Top = 64
    Width = 249
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 136
    Top = 104
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 104
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 104
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 296
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 152
    Width = 353
    Height = 120
    DataSource = DataModule4.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 184
    Top = 296
    Width = 217
    Height = 21
    TabOrder = 7
    Text = 'Edit3'
  end
end
