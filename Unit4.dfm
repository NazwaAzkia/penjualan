object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 191
  Top = 125
  Height = 193
  Width = 440
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2210010396_nazwaazkia_erdpenjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Downloads\libmysql32.dll'
    Left = 72
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from kategori')
    Params = <>
    Left = 144
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = Zkategori
    Left = 200
    Top = 24
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 144
    Top = 88
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 200
    Top = 88
  end
end
